object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 650
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    864
    650)
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 599
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
    Left = 743
    Top = 599
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
    Width = 816
    Height = 176
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object MonthCalendar1: TMonthCalendar
    Left = 24
    Top = 3
    Width = 337
    Height = 160
    Date = 43347.335746412030000000
    TabOrder = 3
  end
  object MemoHtml: TMemo
    Left = 367
    Top = 8
    Width = 194
    Height = 155
    Lines.Strings = (
      'MemoHtml')
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object WebBrowser1: TWebBrowser
    Left = 24
    Top = 392
    Width = 441
    Height = 150
    TabOrder = 5
    ControlData = {
      4C000000942D0000810F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
