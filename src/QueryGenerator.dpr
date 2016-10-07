program QueryGenerator;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  SQLPortugol in 'SQLPortugol.pas',
  Funcoes in 'Funcoes.pas',
  U_Form_Exec_DDL in 'U_Form_Exec_DDL.pas' {Form_Exec_DDL},
  U_SQL_Comandos_Portugol in 'U_SQL_Comandos_Portugol.pas',
  U_MyStringList in 'U_MyStringList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Query Generator';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm_Exec_DDL, Form_Exec_DDL);
  Application.Run;
end.
