object Form1: TForm1
  Left = 261
  Top = 192
  AutoScroll = False
  Caption = 'Query Generator'
  ClientHeight = 507
  ClientWidth = 945
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 488
    Align = alLeft
    Alignment = taRightJustify
    TabOrder = 0
    object AdvMemo1: TAdvMemo
      Left = 1
      Top = 1
      Width = 487
      Height = 486
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      Align = alClient
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'MS Sans Serif'
      AutoCompletion.Font.Style = []
      AutoCompletion.Height = 200
      AutoCompletion.Width = 300
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BorderStyle = bsSingle
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.DigitCount = 4
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = True
      SmartTabs = False
      TabOrder = 0
      TabSize = 4
      TabStop = True
      TrimTrailingSpaces = False
      UndoLimit = 100
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '2.1.7.5'
      WordWrap = wwNone
      OnGetAutoCompletionList = AdvMemo1GetAutoCompletionList
    end
  end
  object Panel2: TPanel
    Left = 489
    Top = 0
    Width = 456
    Height = 488
    Align = alClient
    Alignment = taRightJustify
    TabOrder = 1
    object AdvMemo2: TAdvMemo
      Left = 1
      Top = 1
      Width = 454
      Height = 486
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      Align = alClient
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'MS Sans Serif'
      AutoCompletion.Font.Style = []
      AutoCompletion.Height = 200
      AutoCompletion.Width = 300
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BorderStyle = bsSingle
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.DigitCount = 4
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = True
      SmartTabs = False
      SyntaxStyles = AdvSQLStyler1
      TabOrder = 0
      TabSize = 4
      TabStop = True
      TrimTrailingSpaces = False
      UndoLimit = 100
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '2.1.7.5'
      WordWrap = wwNone
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 488
    Width = 945
    Height = 19
    Panels = <
      item
        Text = 'CTRL+G: Gerar SQL'
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 872
    Top = 472
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object GerarSQL1: TMenuItem
        Caption = 'Gerar SQL'
        ShortCut = 16455
        OnClick = GerarSQL1Click
      end
      object ReverterSQL1: TMenuItem
        Caption = 'Reverter SQL'
        ShortCut = 16460
        OnClick = ReverterSQL1Click
      end
      object ExecutarDDL1: TMenuItem
        Caption = 'Executar DDL'
        OnClick = ExecutarDDL1Click
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Identar1: TMenuItem
        Caption = 'Identar'
        ShortCut = 16457
        OnClick = Identar1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
    end
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    Active = True
    Left = 904
    Top = 472
  end
  object AdvSQLStyler1: TAdvSQLMemoStyler
    AutoCompletion.Strings = (
      'SELECT'
      'WHERE')
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintCharWriteDelimiter = ','
    LineComment = #39
    MultiCommentLeft = '{'
    MultiCommentRight = '}'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'and'
          'begin'
          'break'
          'by'
          'close'
          'continue'
          'count'
          'create'
          'database'
          'deallocate'
          'declare'
          'delete'
          'do'
          'else'
          'end'
          'exec'
          'fetch'
          'for'
          'from'
          'group'
          'having'
          'if'
          'inner'
          'insert'
          'join'
          'left'
          'like'
          'limit'
          'not'
          'on'
          'open'
          'or'
          'order'
          'outer'
          'proc'
          'procedure'
          'repeat'
          'return'
          'right'
          'rollback'
          'select'
          'set'
          'skip'
          'to'
          'trans'
          'transaction'
          'until'
          'update'
          'values'
          'where'
          'while')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'SQL Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql'
    DefaultExtension = '.sql'
    StylerName = 'SQL'
    Extensions = 'sql'
    Left = 841
    Top = 472
  end
end
