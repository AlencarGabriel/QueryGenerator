unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvAppStyler, ExtCtrls, SUIForm, Menus, Placemnt, SUIMainMenu,
  XPMenu, XPMan, AdvMemo, SQLPortugol, AdvmSQLS, ComCtrls, ColStatusBar,
  Buttons, IniFiles;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Editar1: TMenuItem;
    Ajuda1: TMenuItem;
    XPMenu1: TXPMenu;
    Panel1: TPanel;
    AdvMemo1: TAdvMemo;
    Identar1: TMenuItem;
    Panel2: TPanel;
    AdvMemo2: TAdvMemo;
    StatusBar1: TStatusBar;
    GerarSQL1: TMenuItem;
    AdvSQLStyler1: TAdvSQLMemoStyler;
    ReverterSQL1: TMenuItem;
    ExecutarDDL1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Identar1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GerarSQL1Click(Sender: TObject);
    procedure AdvMemo1GetAutoCompletionList(Sender: TObject;
      AToken: string; AList: TStringList);
    procedure ReverterSQL1Click(Sender: TObject);
    procedure ExecutarDDL1Click(Sender: TObject);
  private
    SQL: TSQLPortugol;
  public
    INI: TIniFile;
  end;

var
  Form1: TForm1;
  CaminhoBin, CaminhoDB, C_User, C_Password, C_ClientDll, C_Ip: string; //variaveis do INI
  C_UsaIP: Boolean; //variaveis do INI
  A_MostraLog, A_DelLogAfter, A_DelScriptAfter: Boolean; //variaveis do INI

implementation

uses Funcoes, U_SQL_Comandos_Portugol, U_Form_Exec_DDL;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  SQL := TSQLPortugol.Create(self);
  AdvMemo1.SyntaxStyles := SQL;

  INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'QGenerator.ini');
  with INI do
  try
    CaminhoBin := ReadString('DIRETORIOS', 'bin', '..\bin\');
    CaminhoDB := ReadString('DIRETORIOS', 'db', '..\db\');
    C_User := ReadString('CONEXAO', 'user', 'SYSDBA');
    C_Password := ReadString('CONEXAO', 'password', 'masterkey');
    C_ClientDll := ReadString('CONEXAO', 'clientDll', 'fbclient.dll');
    C_UsaIP := ReadBool('CONEXAO', 'usaIP', false);
    C_Ip := ReadString('CONEXAO', 'ip', '27.0.0.1');
    A_MostraLog := ReadBool('APP', 'mostraLogAfter', true);
    A_DelLogAfter := ReadBool('APP', 'delLogAfter', false);
    A_DelScriptAfter := ReadBool('APP', 'delScriptAfter', false);
  finally
    FreeAndNil(INI);
  end;

end;

procedure TForm1.Identar1Click(Sender: TObject);
begin
  AdvMemo1.BlockIndent(1, AdvMemo1.Lines.Count, 1);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Panel1.Width := Form1.Width div 2;
end;

procedure TForm1.GerarSQL1Click(Sender: TObject);
var
  ManipulaSQL: TSQL_Comandos_Portugol;
begin
  ManipulaSQL := TSQL_Comandos_Portugol.Create;
  ManipulaSQL.Memo_Origem_SQL := AdvMemo1;
  ManipulaSQL.Memo_Destino_SQL := AdvMemo2;
  ManipulaSQL.ConverteSQLPortugolToSQL_Memo;

  FreeAndNil(ManipulaSQL);
end;

procedure TForm1.ReverterSQL1Click(Sender: TObject);
var
  ManipulaSQL: TSQL_Comandos_Portugol;
begin
  ManipulaSQL := TSQL_Comandos_Portugol.Create;
  ManipulaSQL.Memo_Origem_SQL := AdvMemo2;
  ManipulaSQL.Memo_Destino_SQL := AdvMemo1;
  ManipulaSQL.ConverteSQLToSQLPortugol_Memo;

  FreeAndNil(ManipulaSQL);
end;

procedure TForm1.AdvMemo1GetAutoCompletionList(Sender: TObject;
  AToken: string; AList: TStringList);
begin
//  ShowMessage('TESTE');
end;

procedure TForm1.ExecutarDDL1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_Exec_DDL, Form_Exec_DDL);
  try
    Form_Exec_DDL.ShowModal;
  finally
    FreeAndNil(Form_Exec_DDL);
  end;
end;

end.

