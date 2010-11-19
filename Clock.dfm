object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 587
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object img: TImage
    Left = 135
    Top = 40
    Width = 464
    Height = 465
  end
  object lbl: TLabel
    Left = 0
    Top = 224
    Width = 3
    Height = 13
  end
  object lbl1: TLabel
    Left = 314
    Top = -7
    Width = 81
    Height = 42
    Caption = 'Clock'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 619
    Top = 566
    Width = 104
    Height = 13
    Caption = 'Dimini(R) Inc. (c)2010'
  end
  object lbl3: TLabel
    Left = 135
    Top = 523
    Width = 49
    Height = 13
    Caption = 'Enter time'
  end
  object lbl0: TLabel
    Left = 337
    Top = 523
    Width = 3
    Height = 13
  end
  object btn: TButton
    Left = 135
    Top = 560
    Width = 75
    Height = 25
    Caption = 'Input time'
    TabOrder = 0
    OnClick = btnClick
  end
  object edth: TEdit
    Left = 196
    Top = 520
    Width = 42
    Height = 21
    TabOrder = 1
  end
  object edtm: TEdit
    Left = 244
    Top = 520
    Width = 42
    Height = 21
    TabOrder = 2
  end
  object edts: TEdit
    Left = 292
    Top = 520
    Width = 39
    Height = 21
    TabOrder = 3
  end
  object btn2: TButton
    Left = 320
    Top = 560
    Width = 75
    Height = 25
    Caption = 'Current time'
    TabOrder = 4
    OnClick = btn2Click
  end
  object tme: TTimer
    Enabled = False
    OnTimer = btn2Click
  end
end
