unit U_SQL_Comandos_Portugol;

interface

uses SysUtils, Classes, AdvMemo, U_MyStringList;

type
  TFuncao = (GerarSQL, ReverterSQL);

  TSQL_Comandos_Portugol = class(TObject)
  private
    FSQL_Origem: string;
    FMemo_Origem_SQL: TAdvMemo;
    FMemo_Destino_SQL: TAdvMemo;
    procedure SetaArrayPortugol;
    procedure SetaArraySQL;
    procedure SetMemo_Origem_SQL(const Value: TAdvMemo);
    procedure SetMemo_Destino_SQL(const Value: TAdvMemo);
    procedure SetSQL_Origem(const Value: string);
    function GeraSQL: string;
    function RevertSQL: string;
    function ValidaMemoOrigemExist: Boolean;
    function ValidaMemoDestinoExist: Boolean;
    function GeraDadosMemo(Funcao: TFuncao): TMyStringList;
    property SQL_Origem: string read FSQL_Origem write SetSQL_Origem;
  public
    constructor Create;
    destructor Destroy; override;
    property Memo_Origem_SQL: TAdvMemo read FMemo_Origem_SQL write SetMemo_Origem_SQL;
    property Memo_Destino_SQL: TAdvMemo read FMemo_Destino_SQL write SetMemo_Destino_SQL;
    procedure ConverteSQLPortugolToSQL_Memo;
    procedure ConverteSQLToSQLPortugol_Memo;
    function GeraSQLDoMemo: TMyStringList;
    function GeraSQLPortugolDoMemo: TMyStringList;
  end;

var
  ASQL, APortugol, Palavras: TStringList;
  IndiceArray: Integer;

implementation

uses Funcoes;

{ TSQL_Comandos_Portugol }

constructor TSQL_Comandos_Portugol.Create;
begin
  inherited;

  //Instancia os StringList que conterão os Dados
  ASQL := TStringList.Create;
  APortugol := TStringList.Create;
  Palavras := TStringList.Create;

  //Adiciona os Comandos SQL
  SetaArraySQL;
  SetaArrayPortugol;
end;

destructor TSQL_Comandos_Portugol.Destroy;
begin
  FreeAndNil(ASQL);
  FreeAndNil(APortugol);
  FreeAndNil(Palavras);

  inherited;
end;

{Esta função Gera o SQL a partir do SQL Portugol}

function TSQL_Comandos_Portugol.GeraSQL: string;
var
  i, index: Integer;
  palavra: string;
begin
  Palavras.Clear;
  Result := EmptyStr;

  SQL_Origem := StringReplace(SQL_Origem, '(', ' ( ', [rfReplaceAll]);
  SQL_Origem := StringReplace(SQL_Origem, ')', ' ) ', [rfReplaceAll]);

  Palavras.Delimiter := ' ';
  Palavras.DelimitedText := SQL_Origem;

  for i := 0 to Palavras.Count - 1 do
  begin
    palavra := EmptyStr;
    index := APortugol.IndexOf(RemoveCaracter(Palavras[i]));
    if index >= 0 then
      palavra := ASQL.Strings[index]
    else
      palavra := Palavras[i];

    Result := Result + ' ' + palavra;
  end;

  Result := StringReplace(Result, ' ( ', '(', [rfReplaceAll]);
  Result := StringReplace(Result, ' ) ', ')', [rfReplaceAll]);
end;

{Esta função Gera o SQL Portugol a partir do SQL}

function TSQL_Comandos_Portugol.RevertSQL: string;
var
  i, index: Integer;
  palavra: string;
begin
  Palavras.Clear;
  Result := EmptyStr;

  SQL_Origem := StringReplace(SQL_Origem, '(', ' ( ', [rfReplaceAll]);
  SQL_Origem := StringReplace(SQL_Origem, ')', ' ) ', [rfReplaceAll]);

  Palavras.Delimiter := ' ';
  Palavras.DelimitedText := SQL_Origem;

  for i := 0 to Palavras.Count - 1 do
  begin
    palavra := EmptyStr;
    index := ASQL.IndexOf(RemoveCaracter(Palavras[i]));
    if index >= 0 then
      palavra := APortugol.Strings[index]
    else
      palavra := Palavras[i];

    Result := Result + ' ' + palavra;
  end;

  Result := StringReplace(Result, ' ( ', '(', [rfReplaceAll]);
  Result := StringReplace(Result, ' ) ', ')', [rfReplaceAll]);
end;

procedure TSQL_Comandos_Portugol.SetaArraySQL;
begin
  //SELECT
  ASQL.Add('SELECT');
  ASQL.Add('*');
  ASQL.Add('FROM');
  ASQL.Add('DISTINCT');
  ASQL.Add('WHERE');
  ASQL.Add('AS');
  ASQL.Add('ORDER');
  ASQL.Add('AND');
  ASQL.Add('OR');
  ASQL.Add('LIKE');
  ASQL.Add('GROUP');
  ASQL.Add('BY');
  ASQL.Add('JOIN');
  ASQL.Add('INNER');
  ASQL.Add('LEFT');
  ASQL.Add('RIGHT');
  ASQL.Add('ON');
  ASQL.Add('HAVING');
  ASQL.Add('COUNT');
  ASQL.Add('MIN');
  ASQL.Add('MAX');
  ASQL.Add('LIMIT');
  ASQL.Add('SKIP');

  //UPDATE
  ASQL.Add('UPDATE');
  ASQL.Add('SET');

  //DELETE
  ASQL.Add('DELETE');

  //OPERADORES
  ASQL.Add('=');
  ASQL.Add('>');
  ASQL.Add('<');
  ASQL.Add('<>');
  ASQL.Add('>=');
  ASQL.Add('<=');

  //DDL
  ASQL.Add('CREATE');
  ASQL.Add('DATABASE');
end;

procedure TSQL_Comandos_Portugol.SetaArrayPortugol;
begin
  //SELECT
  APortugol.Add('SELECIONAR');
  APortugol.Add('TUDO');
  APortugol.Add('DE');
  APortugol.Add('DIFERENTE');
  APortugol.Add('ONDE');
  APortugol.Add('COMO ');
  APortugol.Add('ORDEM');
  APortugol.Add('E');
  APortugol.Add('OU');
  APortugol.Add('IGUAL');
  APortugol.Add('AGRUPAR');
  APortugol.Add('POR');
  APortugol.Add('ASSOCIAR');
  APortugol.Add('INTERNAMENTE');
  APortugol.Add('ESQUERDA');
  APortugol.Add('DIREITA');
  APortugol.Add('EM');
  APortugol.Add('TER');
  APortugol.Add('CONTAGEM');
  APortugol.Add('MINIMO');
  APortugol.Add('MAXIMO');
  APortugol.Add('LIMITE');
  APortugol.Add('PULAR');

  //UPDATE
  APortugol.Add('ALTERE');
  APortugol.Add('DEFINA');

  //DELETE
  APortugol.Add('DELETE');

  //OPERADORES
  APortugol.Add('IGUAL_A');
  APortugol.Add('MAIOR_QUE');
  APortugol.Add('MENOR_QUE');
  APortugol.Add('DIFERENTE_DE');
  APortugol.Add('MAIOR_IGUAL_QUE');
  APortugol.Add('MENOR_IGUAL_QUE');

  //DDL
  APortugol.Add('CRIAR');
  APortugol.Add('BANCO');
end;

procedure TSQL_Comandos_Portugol.SetMemo_Origem_SQL(
  const Value: TAdvMemo);
begin
  FMemo_Origem_SQL := Value;
end;

procedure TSQL_Comandos_Portugol.SetMemo_Destino_SQL(
  const Value: TAdvMemo);
begin
  FMemo_Destino_SQL := Value;
end;

procedure TSQL_Comandos_Portugol.ConverteSQLPortugolToSQL_Memo;
var
  I: Integer;
  Lista: TMyStringList;
begin
  if not (ValidaMemoDestinoExist) then
    Exit;

  Lista := GeraSQLDoMemo;

  FMemo_Destino_SQL.Lines.Clear;
  for I := 0 to Lista.Count - 1 do
  begin
    FMemo_Destino_SQL.Lines.Add(Lista.Strings[I]);
  end;

  FreeAndNil(Lista);
end;

procedure TSQL_Comandos_Portugol.ConverteSQLToSQLPortugol_Memo;
var
  I: Integer;
  Lista: TMyStringList;
begin
  if not (ValidaMemoDestinoExist) then
    Exit;

  Lista := GeraSQLPortugolDoMemo;

  FMemo_Destino_SQL.Lines.Clear;
  for I := 0 to Lista.Count - 1 do
  begin
    FMemo_Destino_SQL.Lines.Add(Lista.Strings[I]);
  end;

  FreeAndNil(Lista);
end;

function TSQL_Comandos_Portugol.GeraSQLDoMemo: TMyStringList;
begin
  ValidaMemoOrigemExist;
  Result := GeraDadosMemo(GerarSQL);
//  FreeAndNil(Result);
end;

function TSQL_Comandos_Portugol.GeraSQLPortugolDoMemo: TMyStringList;
begin
  ValidaMemoOrigemExist;
  Result := GeraDadosMemo(ReverterSQL);
//  FreeAndNil(Result);
end;

function TSQL_Comandos_Portugol.GeraDadosMemo(Funcao: TFuncao): TMyStringList;
var
  I: Integer;
begin
  Result := TMyStringList.Create;

  if Funcao = GerarSQL then
  begin
    for I := 0 to FMemo_Origem_SQL.Lines.Count - 1 do
    begin
      SQL_Origem := FMemo_Origem_SQL.Lines.Strings[I];
      Result.Add(GeraSQL);
    end;
  end
  else if Funcao = ReverterSQL then
  begin
    for I := 0 to FMemo_Origem_SQL.Lines.Count - 1 do
    begin
      SQL_Origem := FMemo_Origem_SQL.Lines.Strings[I];
      Result.Add(RevertSQL);
    end;
  end

//  FreeAndNil(Result);
end;

function TSQL_Comandos_Portugol.ValidaMemoDestinoExist: Boolean;
begin
  Result := True;

  if FMemo_Destino_SQL = nil then
  begin
    Result := False;
    raise Exception.Create('Objeto Memo_Destino_SQL não foi Definido!');
  end;
end;

function TSQL_Comandos_Portugol.ValidaMemoOrigemExist: Boolean;
begin
  Result := True;

  if FMemo_Origem_SQL = nil then
  begin
    Result := False;
    raise Exception.Create('Objeto Memo_Origem_SQL não foi Definido!');
  end;
end;

procedure TSQL_Comandos_Portugol.SetSQL_Origem(const Value: string);
begin
  FSQL_Origem := Value;
end;

end.

