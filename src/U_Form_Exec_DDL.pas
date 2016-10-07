unit U_Form_Exec_DDL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, AdvMemo, Menus, XPMenu, DBXpress, DB, SqlExpr, SQLPortugol, U_MyStringList,
  StdCtrls, ExtCtrls, JvExExtCtrls, JvExtComponent, JvCaptionPanel,
  JvExControls, JvAnimatedImage, JvGIFCtrl, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, ToolWin, ShlObj, cxShellCommon,
  cxShellComboBox, JvBaseDlg, JvBrowseFolder, Mask, ToolEdit, JvExMask,
  JvToolEdit, AdvEdit, AdvEdBtn, AdvDirectoryEdit, JvExStdCtrls, JvListBox,
  JvDriveCtrls;

type
  TForm_Exec_DDL = class(TForm)
    XPMenu1: TXPMenu;
    AdvMemo1: TAdvMemo;
    SQLConnection1: TSQLConnection;
    JvCaptionPanel1: TJvCaptionPanel;
    MemoLog: TMemo;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    Label1: TLabel;
    JvGIFAnimator1: TJvGIFAnimator;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PopupMenu1: TPopupMenu;
    ExecutarDDL1: TMenuItem;
    ExibirLog1: TMenuItem;
    cxComboBox2: TcxComboBox;
    JvBrowseForFolderDialog1: TJvBrowseForFolderDialog;
    ToolButton3: TToolButton;
    DirectoryEdit1: TDirectoryEdit;
    JvDirectoryEdit1: TJvDirectoryEdit;
    AdvDirectoryEdit1: TAdvDirectoryEdit;
    procedure FormCreate(Sender: TObject);
    procedure JvCaptionPanel1ButtonClick(Sender: TObject;
      Button: TJvCapBtnStyle);
    procedure AnimaGif;
    procedure ExecutarDDL1Click(Sender: TObject);
    procedure ExibirLog1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    SQL: TSQLPortugol;
  public
    { Public declarations }
  end;

var
  Form_Exec_DDL: TForm_Exec_DDL;

implementation

uses U_SQL_Comandos_Portugol, Unit1, Funcoes;

{$R *.dfm}

procedure TForm_Exec_DDL.FormCreate(Sender: TObject);
begin
  SQL := TSQLPortugol.Create(self);
  AdvMemo1.SyntaxStyles := SQL;
  DirectoryEdit1.InitialDir := CaminhoDB;
end;

procedure TForm_Exec_DDL.JvCaptionPanel1ButtonClick(Sender: TObject;
  Button: TJvCapBtnStyle);
begin
  if Button = capClose then
    JvCaptionPanel1.Visible := False;
end;

procedure TForm_Exec_DDL.AnimaGif;
begin
  JvGIFAnimator1.Visible := not (JvGIFAnimator1.Visible);
  JvGIFAnimator1.Animate := not (JvGIFAnimator1.Animate);
end;

procedure TForm_Exec_DDL.ExecutarDDL1Click(Sender: TObject);
var
  ManipulaSQL: TSQL_Comandos_Portugol;
  SQL, Script: TMyStringList;
  indice, indiceString: Integer;
  PoeFDB: Boolean;
  cmd: string;
begin
  AnimaGif;
  ManipulaSQL := TSQL_Comandos_Portugol.Create;
  ManipulaSQL.Memo_Origem_SQL := AdvMemo1;
  SQL := ManipulaSQL.GeraSQLDoMemo;
  Script := TMyStringList.Create;

  if Trim(SQL.Strings[0]) <> '' then
  begin
    indice := SQL.IndexOfString('CREATE DATABASE', indiceString); //Length(CREATE DATABASE) = 15
    if indice >= 0 then
    begin
      Script.Add('SET SQL DIALECT 3;');
      Script.Add('SET NAMES NONE;');
      Script.Add('SET CLIENTLIB ' + QuotedStr(C_ClientDll) + ';');
      //prepara o Caminho + Nome do Banco
      PoeFDB := not (SQL.IndexOfStringOf('.FDB') >= 0);
      Script.Add(Copy(SQL.Text, indiceString, 15) + ' ' +
        QuotedStr(IIF(C_UsaIP, C_Ip + ':', '') + CaminhoDB + Trim(Copy(SQL.Text, indiceString + 15, Length(SQL.Text))) + IIF(PoeFDB, '.FDB', EmptyStr)));
      Script.Add('USER ' + QuotedStr(C_User) + ' PASSWORD ' + QuotedStr(C_Password));
      Script.Add('PAGE_SIZE 8192');
      Script.Add('DEFAULT CHARACTER SET NONE;');

      DelScriptAndLogAfter(true);

      Script.SaveToFile('scripts.txt');

      cmd := '"' + ExtractFilePath(Application.ExeName) + 'IBEScript.exe" "' +
        ExtractFilePath(Application.ExeName) + 'scripts.txt" ' + '-S -E -VlogQGenerator.txt';

      WinExec(PChar(cmd), SW_HIDE);

      while not FileExists('logQGenerator.txt') do
        Application.ProcessMessages;

      while IsFileInUse('logQGenerator.txt') do
        Application.ProcessMessages;

      MemoLog.Lines.LoadFromFile('logQGenerator.txt');
      JvCaptionPanel1.Visible := A_MostraLog;

      DelScriptAndLogAfter;
      AnimaGif;
//      ShowMessage(Script.Text);
    end;
  end;

  FreeAndNil(ManipulaSQL);
  FreeAndNil(SQL);
  FreeAndNil(Script);

end;

procedure TForm_Exec_DDL.ExibirLog1Click(Sender: TObject);
begin
  JvCaptionPanel1.Visible := True;
end;

procedure TForm_Exec_DDL.ToolButton3Click(Sender: TObject);
begin
  JvBrowseForFolderDialog1.Execute;
end;

end.

