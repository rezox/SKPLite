object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 448
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 89
    Height = 448
    Align = alLeft
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 89
    Top = 0
    Width = 690
    Height = 448
    Align = alClient
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 176
    Top = 112
    object Form1: TMenuItem
      Caption = 'Form'
      object abelJabatan1: TMenuItem
        Caption = 'Tabel Jabatan'
        OnClick = abelJabatan1Click
      end
      object DataPegawai1: TMenuItem
        Caption = 'Data Pegawai'
        OnClick = DataPegawai1Click
      end
      object Satker1: TMenuItem
        Caption = 'Satker'
        OnClick = Satker1Click
      end
    end
    object Setti1: TMenuItem
      Caption = 'Setting'
      object Config2: TMenuItem
        Caption = 'Config'
        OnClick = Config2Click
      end
      object Lock1: TMenuItem
        Caption = 'Lock'
      end
    end
    object Exit1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit2: TMenuItem
        Caption = 'Exit'
      end
    end
  end
end
