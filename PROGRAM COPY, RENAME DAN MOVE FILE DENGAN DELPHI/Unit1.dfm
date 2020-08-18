object Form1: TForm1
  Left = 192
  Top = 125
  Width = 649
  Height = 310
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 22
    Height = 13
    Caption = 'from'
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 10
    Height = 13
    Caption = 'to'
  end
  object Edit1: TEdit
    Left = 67
    Top = 22
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 67
    Top = 51
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 278
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Browse'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 52
    Width = 75
    Height = 25
    Caption = 'Browse'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 76
    Width = 233
    Height = 25
    Caption = 'rename/move'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Copy'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 40
    Top = 120
    Width = 185
    Height = 21
    TabOrder = 6
  end
  object OpenDialog1: TOpenDialog
    Left = 392
    Top = 24
  end
end
