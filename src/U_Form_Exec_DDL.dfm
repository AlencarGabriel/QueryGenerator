object Form_Exec_DDL: TForm_Exec_DDL
  Left = 331
  Top = 235
  Width = 613
  Height = 488
  Caption = 'Executor de Comandos DDL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvMemo1: TAdvMemo
    Left = 0
    Top = 56
    Width = 605
    Height = 376
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
  end
  object AdvOfficeStatusBar1: TAdvOfficeStatusBar
    Left = 0
    Top = 432
    Width = 605
    Height = 22
    AnchorHint = False
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 125
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 100
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 130
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 82
      end>
    SimplePanel = False
    URLColor = clBlue
    Styler = AdvOfficeStatusBarOfficeStyler1
    Version = '1.2.0.5'
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 96
      Height = 13
      Caption = 'CTRL+G: Gerar SQL'
      Transparent = True
    end
    object JvGIFAnimator1: TJvGIFAnimator
      Left = 154
      Top = 6
      Width = 43
      Height = 11
      Image.Data = {
        860100004749463839612B000B00910000FFFFFF00000082828200000021FF0B
        4E45545343415045322E30030100000021FE154D61646520627920416A61784C
        6F61642E696E666F0021F904000A0000002C000000002B000B00000232848E08
        CB96D9D883F3C50A1BDE56F3CB85E036865859A166277DDE9ABEA70C672D49D7
        87CA2EFAC4B3F93EB8A020324C15000021F904000A0000002C000000002B000B
        0000023DC48E08CB200F6163B19A84C7AC7CF39861DEF78C6498989FCAA14A43
        4A702CB8076BCDB1ADE9240EB20165141A6F58F27D8ECA4ED3E29A2C6252C7AF
        000021F904000A0000002C000000002B000B0000023D848E08CB300F6163A99A
        6A5BDC6FE20F0A13B779E1798CA4D4A0A8BA0EA60BC2EB4C633689E7C9CEE9F9
        529A98AC35CC308C47CAE9F2992C6252A8AE000021F904000A0000002C000000
        002B000B00000240848E08CB96D9D89894BA071B7EB1FAB9654CA8349F471E51
        2A7427C5AEA9FB0EB1369BB59D8FFDB2E39164435DEDE62B4A76C8451310BC60
        22CE1015FA021400003B}
      Visible = False
    end
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 605
    Height = 56
    Align = alTop
    AutoSize = True
    TabOrder = 4
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 214
      Height = 21
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 65
      Caption = 'ToolBar1'
      Customizable = True
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'Arquivo'
        DropdownMenu = PopupMenu1
        ImageIndex = 0
      end
      object ToolButton2: TToolButton
        Left = 65
        Top = 0
        Caption = 'Editar'
        ImageIndex = 1
      end
      object ToolButton3: TToolButton
        Left = 130
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 2
        OnClick = ToolButton3Click
      end
    end
    object cxComboBox2: TcxComboBox
      Left = 372
      Top = 2
      Width = 110
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Atr A'
        'Atr B'
        'Atr C'
        'Atr D'
        'Atr EEEEEEEEEEEEEE EEEEEEEEEEEEE')
      TabOrder = 1
    end
    object DirectoryEdit1: TDirectoryEdit
      Left = 238
      Top = 2
      Width = 121
      Height = 22
      NumGlyphs = 1
      TabOrder = 2
      Text = 'DirectoryEdit1'
    end
    object JvDirectoryEdit1: TJvDirectoryEdit
      Left = 227
      Top = 28
      Width = 121
      Height = 22
      DialogKind = dkWin32
      TabOrder = 3
      Text = 'JvDirectoryEdit1'
    end
    object AdvDirectoryEdit1: TAdvDirectoryEdit
      Left = 361
      Top = 28
      Width = 121
      Height = 22
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      ReadOnly = False
      TabOrder = 4
      Visible = True
      Version = '1.3.2.3'
      ButtonStyle = bsButton
      ButtonWidth = 18
      Etched = False
      Glyph.Data = {
        CE000000424DCE0000000000000076000000280000000C0000000B0000000100
        0400000000005800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
        00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
        00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
        0000FF0BBB00000F0000FFF000FFFFFF0000}
      BrowseDialogText = 'Select Directory'
    end
  end
  object JvCaptionPanel1: TJvCaptionPanel
    Left = 64
    Top = 72
    Width = 345
    Height = 329
    Buttons = [capClose]
    BorderStyle = bsNone
    Caption = 'Log'
    CaptionColor = clBackground
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = [fsBold]
    OutlookLook = False
    TabOrder = 1
    Visible = False
    OnButtonClick = JvCaptionPanel1ButtonClick
    object MemoLog: TMemo
      Left = 1
      Top = 29
      Width = 343
      Height = 299
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
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
    Left = 488
    Top = 352
  end
  object SQLConnection1: TSQLConnection
    Left = 424
    Top = 352
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Style = psOffice2003Classic
    BorderColor = 13226453
    PanelAppearanceLight.BorderColor = clNone
    PanelAppearanceLight.BorderColorHot = clGray
    PanelAppearanceLight.BorderColorDown = clBlack
    PanelAppearanceLight.Color = clWhite
    PanelAppearanceLight.ColorTo = 13226453
    PanelAppearanceLight.ColorHot = 13811126
    PanelAppearanceLight.ColorHotTo = 13811126
    PanelAppearanceLight.ColorDown = 14857624
    PanelAppearanceLight.ColorDownTo = 14857624
    PanelAppearanceLight.ColorMirror = clNone
    PanelAppearanceLight.ColorMirrorTo = clNone
    PanelAppearanceLight.ColorMirrorHot = 13811126
    PanelAppearanceLight.ColorMirrorHotTo = 13811126
    PanelAppearanceLight.ColorMirrorDown = clNone
    PanelAppearanceLight.ColorMirrorDownTo = clNone
    PanelAppearanceLight.TextColor = clBlack
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = clGray
    PanelAppearanceDark.BorderColorDown = clBlack
    PanelAppearanceDark.Color = clGray
    PanelAppearanceDark.ColorTo = clGray
    PanelAppearanceDark.ColorHot = 13811126
    PanelAppearanceDark.ColorHotTo = 13811126
    PanelAppearanceDark.ColorDown = 14857624
    PanelAppearanceDark.ColorDownTo = 14857624
    PanelAppearanceDark.ColorMirror = clNone
    PanelAppearanceDark.ColorMirrorTo = clNone
    PanelAppearanceDark.ColorMirrorHot = clNone
    PanelAppearanceDark.ColorMirrorHotTo = clNone
    PanelAppearanceDark.ColorMirrorDown = clNone
    PanelAppearanceDark.ColorMirrorDownTo = clNone
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 520
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 352
    object ExecutarDDL1: TMenuItem
      Caption = 'Executar DDL'
      ShortCut = 16455
      OnClick = ExecutarDDL1Click
    end
    object ExibirLog1: TMenuItem
      Caption = 'Exibir Log'
      ShortCut = 16460
      OnClick = ExibirLog1Click
    end
  end
  object JvBrowseForFolderDialog1: TJvBrowseForFolderDialog
    Directory = 
      'C:\Documents and Settings\programador02\Desktop\Projetos\Query_G' +
      'enerator\db'
    Title = 'Caminho da Pasta dos Bancos'
    Left = 552
    Top = 352
  end
end
