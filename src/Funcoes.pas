unit Funcoes;

interface
uses Windows, SysUtils;

function RemoveCaracter(Str: string): string;
function IIF(const Expressao, SeVerdadeiro, SeFalso: Variant): Variant;
function IsFileInUse(FileName: TFileName): Boolean;
procedure DelScriptAndLogAfter(const DelAll: Boolean = false);

implementation

uses Unit1;

function RemoveCaracter(Str: string): string;
var
  i: integer;
const
  Caracteres = '()';
begin
  Result := '';

  for i := 1 to Length(Str) do
  begin
    if not (Pos(Str[i], Caracteres) > 0) then
      Result := Result + Str[i];
  end;

end;

function IIF(const Expressao, SeVerdadeiro, SeFalso: Variant): Variant;
begin
  if Expressao then
    Result := SeVerdadeiro
  else
    Result := SeFalso;

end;

function IsFileInUse(FileName: TFileName): Boolean;
var
  HFileRes: HFILE;
begin
  Result := False;
  if not FileExists(FileName) then Exit;
  HFileRes := CreateFile(PChar(FileName),
    GENERIC_READ or GENERIC_WRITE,
    0,
    nil,
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    0);
  Result := (HFileRes = INVALID_HANDLE_VALUE);
  if not Result then
    CloseHandle(HFileRes);
end;

procedure DelScriptAndLogAfter(const DelAll: Boolean);
begin
  if A_DelLogAfter or DelAll then
    DeleteFile('logQGenerator.txt');

  if A_DelScriptAfter or DelAll then
    DeleteFile('scripts.txt');
end;

end.

