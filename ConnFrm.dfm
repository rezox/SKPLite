object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Configurasi'
  ClientHeight = 125
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 11
    Width = 75
    Height = 13
    Caption = 'Letak Database'
  end
  object Label2: TLabel
    Left = 20
    Top = 40
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label3: TLabel
    Left = 20
    Top = 68
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Edit1: TEdit
    Left = 108
    Top = 8
    Width = 229
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 108
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 108
    Top = 65
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 343
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Browse'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 346
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 5
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'sqd'
    Filter = 'Sqlite3 database|*.sqd|All File|*.*'
    Left = 312
    Top = 52
  end
end
