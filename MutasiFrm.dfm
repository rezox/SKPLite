object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Mutasi Antar Satker'
  ClientHeight = 247
  ClientWidth = 360
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 360
    Height = 247
    Align = alClient
    Caption = 'Mutasi Pegawai'
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 31
      Width = 17
      Height = 13
      Caption = 'NIP'
    end
    object Label2: TLabel
      Left = 11
      Top = 58
      Width = 27
      Height = 13
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 11
      Top = 87
      Width = 67
      Height = 13
      Caption = 'Jabatan Lama'
    end
    object Label4: TLabel
      Left = 11
      Top = 113
      Width = 64
      Height = 13
      Caption = 'Jabatan Baru'
    end
    object Label5: TLabel
      Left = 11
      Top = 140
      Width = 31
      Height = 13
      Caption = 'Satker'
    end
    object Label6: TLabel
      Left = 11
      Top = 167
      Width = 54
      Height = 13
      Caption = 'TMT Mutasi'
    end
    object Edit1: TEdit
      Left = 82
      Top = 28
      Width = 157
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 82
      Top = 55
      Width = 237
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object ComboBox1: TComboBox
      Left = 82
      Top = 137
      Width = 185
      Height = 21
      TabOrder = 2
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
      OnKeyPress = ComboBox1KeyPress
    end
    object Edit4: TEdit
      Left = 82
      Top = 164
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 82
      Top = 83
      Width = 209
      Height = 21
      TabOrder = 4
      Text = 'Edit5'
    end
    object ComboBox2: TComboBox
      Left = 82
      Top = 110
      Width = 197
      Height = 21
      TabOrder = 5
      Text = 'ComboBox2'
      Items.Strings = (
        'Ketua'
        'Wakil Ketua'
        'Hakim Tinggi'
        'Panitera/Sekretaris'
        'Wakil Panitera'
        'Wakil Sekretaris'
        'Panmud Banding'
        'Panmud Hukum'
        'Panitera Pengganti'
        'Staf Sub Bagian Kepegawain'
        'Staf Sub Bagian Umum'
        'Staf Sub Bagian Keuangan'
        'Staf Kepaniteraan Banding'
        'Staf Kepaniteraan Hukum'
        'Wakil Ketua Bidang Non Yudisial'
        'Sekretaris'
        'Kepala Urusan Kepegawaian'
        'Kepala Urusan Umum'
        'Kepala urusan Keuangan'
        'Panitera Muda Permohonan')
    end
    object Button1: TButton
      Left = 216
      Top = 204
      Width = 75
      Height = 25
      Caption = 'Proses'
      ModalResult = 6
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 128
      Top = 204
      Width = 75
      Height = 25
      Caption = 'Batal'
      ModalResult = 2
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 273
      Top = 137
      Width = 59
      Height = 21
      TabOrder = 8
      Text = 'Edit3'
    end
  end
end
