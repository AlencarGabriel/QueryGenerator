unit U_MyStringList;

interface

uses Classes, SysUtils, Dialogs;

type
  TMyStringList = class(TStringList)
  public
    function IndexOf(const S: string): Integer; override;
    function IndexOfString(const S: string; var IndexOfString: integer): Integer;
    function IndexOfStringOf(const SBuscarIndex: string): Integer;
  end;

implementation

{ TMyStringList }

//retorna o INDICE do StringList

function TMyStringList.IndexOf(const S: string): Integer;
begin
  for Result := 0 to GetCount - 1 do
    if Pos(AnsiUpperCase(S), AnsiUpperCase(Get(Result))) > 0 then Exit;
  Result := -1;
end;

//retorna o INDICE do StringList e o INDICE da Ocorrencia na String Passada

function TMyStringList.IndexOfString(const S: string;
  var IndexOfString: integer): Integer;
begin
  IndexOfString := -1;
  Result := IndexOf(S);

  if Result = -1 then
    Exit;

  IndexOfString := Pos(AnsiUpperCase(S), AnsiUpperCase(Get(Result)));
  if IndexOfString > 0 then Exit;

  IndexOfString := -1;  //o valor é atribuido 0 caso nao Encontre a String, por isso é passado -1
end;

//Retorna o INDICE da Ocorrenia na String Passada

function TMyStringList.IndexOfStringOf(const SBuscarIndex: string): Integer;
begin
  IndexOfString(SBuscarIndex, Result);
end;

end.

