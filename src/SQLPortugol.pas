{$I TMSDEFS.INC}

unit SQLPortugol;

interface

uses
  Classes, Windows, SysUtils, AdvMemo,
{$IFDEF DELPHI6_LVL}
  Types,
{$ENDIF}
{$IFDEF TMSCLX}
  QGraphics
{$ENDIF}
{$IFNDEF TMSCLX}
  Graphics
{$ENDIF}
  ;

type
  TSQLPortugol = class(TAdvCustomMemoStyler)
  private
    FVersion: string;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property AutoCompletion;
    property HintParameter;
    property LineComment;
    property MultiCommentLeft;
    property MultiCommentRight;
    property CommentStyle;
    property NumberStyle;
    property AllStyles;

    property Version: string read FVersion;
    property Description;
    property Filter;
    property DefaultExtension;
    property StylerName;
    property Extensions;
  end;

implementation

{ TAdvBasicMemoStyler }

constructor TSQLPortugol.Create(AOwner: TComponent);
var
  itm: TElementStyle;
begin
  inherited;
  FVersion := '1.0';
  Description := 'SQL';
  Filter := 'SQL Files (*.sql)|*.sql';
  DefaultExtension := '.sql';
  StylerName := 'SQL';
  Extensions := 'sql';

  LineComment := #39;
  MultiCommentLeft := '{';
  MultiCommentRight := '}';
  CommentStyle.TextColor := clNavy;
  CommentStyle.BkColor := clWhite;
  CommentStyle.Style := [fsItalic];
  NumberStyle.TextColor := clFuchsia;
  NumberStyle.BkColor := clWhite;
  NumberStyle.Style := [fsBold];
  //------------Pascal Standard Default-------------
  itm := AllStyles.Add;
  itm.Info := 'SQL Standard Default';
  itm.Font.Color := clGreen;
  itm.Font.Style := [];
  with itm.KeyWords do
  begin
    Add('Proc');
    Add('Procedure');
    Add('Begin');
    Add('End');
    Add('While');
    Add('BEGIN');
    Add('END');
    Add('FOR');
    Add('TO');
    Add('DO');
    Add('NOT');
    Add('IF');
    Add('ELSE');
    Add('WHILE');
    Add('REPEAT');
    Add('UNTIL');
    Add('BREAK');
    Add('CONTINUE');
    Add('EXEC');
    Add('Insert');
    Add('Values');
    Add('Update');
    Add('From');
    Add('Delete');
    Add('Declare');
    Add('Set');
    Add('Open');
    Add('Fetch');
    Add('Close');
    Add('Deallocate');
    Add('Return');
    Add('Rollback');
    Add('Transaction');
    Add('Trans');
    Add('and');
    Add('or');
    Add('Order');
    Add('By');
    Add('Group');
    Add('Having');
    Add('Where');
    Add('Left');
    Add('Right');
    Add('Join');
    Add('Inner');
    Add('Outer');
    Add('On');
    Add('Create');
    Add('Delete');
    Add('Select');
    Add('Like');
    Add('Gabriel');

    Add('SELECIONAR');
    Add('TUDO');
    Add('DE');
    Add('DIFERENTE');
    Add('ONDE');
    Add('COMO');
    Add('ORDEM');
    Add('E');
    Add('OU');
    Add('IGUAL');
    Add('AGRUPAR');
    Add('POR');
    Add('ASSOCIAR');
    Add('INTERNAMENTE');
    Add('ESQUERDA');
    Add('DIREITA');
    Add('EM');
    Add('TER');
    Add('CONTAGEM');
    Add('MINIMO');
    Add('MAXIMO');
    Add('LIMITE');
    Add('PULAR');
    Add('ALTERE');
    Add('DELETE');
    Add('DEFINA');
    Add('CRIAR');
    Add('BANCO');
  end;

  //------------Double Quote " "----------------
  itm := AllStyles.Add;
  itm.StyleType := stBracket;
  itm.Info := 'Double Quote';
  itm.Font.Color := clBlue;
  itm.Font.Style := [];
  itm.BracketStart := '"';
  itm.BracketEnd := '"';
  //----------SYMBOL --------------
  itm := AllStyles.Add;
  itm.StyleType := stSymbol;
  itm.Info := 'Symbols Delimiters';
  itm.Font.Color := clTeal;
  itm.Font.Style := [];
  itm.Symbols := #32 + ',;:.(){}[]=-*/^%<>#' + #13 + #10;

  //------------SYMBOL SQL Portugol-------------
  itm := AllStyles.Add;
  itm.Info := 'Simbolos SQLPortugol Literal';
  itm.Font.Color := clTeal;
  itm.Font.Style := [];
  with itm.KeyWords do
  begin
    Add('IGUAL_A');
    Add('MAIOR_QUE');
    Add('MENOR_QUE');
    Add('DIFERENTE_DE');
    Add('MAIOR_IGUAL_QUE');
    Add('MENOR_IGUAL_QUE');
  end;

  AutoCompletion.Add('SELECIONAR');
  AutoCompletion.Add('COMO');
  AutoCompletion.Add('TUDO');
  AutoCompletion.Add('Proc');
  AutoCompletion.Add('PROCEDIMENTO');
  AutoCompletion.Add('INICIO');
  AutoCompletion.Add('FIM');
  AutoCompletion.Add('ENQUANTO');
  AutoCompletion.Add('PARA');
  AutoCompletion.Add('TO');
  AutoCompletion.Add('DO');
  AutoCompletion.Add('NAO');
  AutoCompletion.Add('SE');
  AutoCompletion.Add('SENAO');
  AutoCompletion.Add('REPITA');
  AutoCompletion.Add('ATE');
  AutoCompletion.Add('PARE');
  AutoCompletion.Add('CONTINUE');
  AutoCompletion.Add('EXEC');
  AutoCompletion.Add('INSIRA');
  AutoCompletion.Add('VALORES');
  AutoCompletion.Add('ALTERE');
  AutoCompletion.Add('DE');
  AutoCompletion.Add('DELETE');
  AutoCompletion.Add('DECLARE');
  AutoCompletion.Add('DEFINA');
  AutoCompletion.Add('ABRA');
  AutoCompletion.Add('Fetch');
  AutoCompletion.Add('FECHE');
  AutoCompletion.Add('Deallocate');
  AutoCompletion.Add('RETORNE');
  AutoCompletion.Add('Rollback');
  AutoCompletion.Add('Transaction');
  AutoCompletion.Add('Trans');
  AutoCompletion.Add('E');
  AutoCompletion.Add('OU');
  AutoCompletion.Add('ORDEM');
  AutoCompletion.Add('POR');
  AutoCompletion.Add('AGRUPAR');
  AutoCompletion.Add('TER');
  AutoCompletion.Add('ONDE');
  AutoCompletion.Add('ESQUERDA');
  AutoCompletion.Add('DIREITA');
  AutoCompletion.Add('ASSOCIAR');
  AutoCompletion.Add('INTERNAMENTE');
  AutoCompletion.Add('Outer');
  AutoCompletion.Add('EM');
  AutoCompletion.Add('CRIAR');
  AutoCompletion.Add('IGUAL');
  AutoCompletion.Add('CONTAGEM');
  AutoCompletion.Add('LIMITE');
  AutoCompletion.Add('PULAR');
  AutoCompletion.Add('IGUAL_A');
  AutoCompletion.Add('MAIOR_QUE');
  AutoCompletion.Add('MENOR_QUE');
  AutoCompletion.Add('DIFERENTE_DE');
  AutoCompletion.Add('MAIOR_IGUAL_QUE');
  AutoCompletion.Add('MENOR_IGUAL_QUE');
  AutoCompletion.Add('BANCO');
end;

end.

