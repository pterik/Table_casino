object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 689
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    829
    689)
  PixelsPerInch = 96
  TextHeight = 13
  object wbTest: TWebBrowser
    Left = 24
    Top = 302
    Width = 393
    Height = 283
    Align = alCustom
    TabOrder = 4
    ControlData = {
      4C00000061270000981E00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 630
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Start'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 730
    Top = 630
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 24
    Top = 193
    Width = 781
    Height = 88
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object MonthCalendar1: TMonthCalendar
    Left = 24
    Top = 3
    Width = 553
    Height = 160
    Date = 43347.681434826390000000
    TabOrder = 3
  end
  object sbMain: TStatusBar
    Left = 0
    Top = 670
    Width = 829
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitLeft = 1
    ExplicitTop = 145
    ExplicitWidth = 630
  end
  object BitBtnSave: TBitBtn
    Left = 128
    Top = 630
    Width = 75
    Height = 25
    Caption = 'SaveToFile'
    TabOrder = 6
    OnClick = BitBtnSaveClick
  end
  object dlgOpen: TOpenDialog
    Filter = 'HTML files|*.htm;*.html|All files|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 25
    Top = 84
  end
  object dlgSave: TSaveDialog
    DefaultExt = '*.html'
    Filter = 'HTML files|*.htm;*.html|All files|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 65
    Top = 84
  end
end
