unit SQL_Portugol;

interface

uses
  SysUtils, Classes, AdvMemo;

type
  SQL_Portugol = class(TAdvCustomMemoStyler)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [SQL_Portugol]);
end;

end.
