object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Data Pegawai'
  ClientHeight = 360
  ClientWidth = 590
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
  object Label3: TLabel
    Left = 20
    Top = 117
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 590
    Height = 331
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Form Pegawai'
      object Label1: TLabel
        Left = 7
        Top = 10
        Width = 17
        Height = 13
        Caption = 'NIP'
      end
      object Label2: TLabel
        Left = 7
        Top = 37
        Width = 27
        Height = 13
        Caption = 'Nama'
      end
      object Label4: TLabel
        Left = 7
        Top = 89
        Width = 39
        Height = 13
        Caption = 'Pangkat'
      end
      object Label5: TLabel
        Left = 7
        Top = 64
        Width = 39
        Height = 13
        Caption = 'Jabatan'
      end
      object Label7: TLabel
        Left = 7
        Top = 115
        Width = 17
        Height = 13
        Caption = 'TTL'
      end
      object Label8: TLabel
        Left = 7
        Top = 145
        Width = 36
        Height = 13
        Caption = 'Kelamin'
      end
      object Label9: TLabel
        Left = 7
        Top = 174
        Width = 62
        Height = 13
        Caption = 'TMT Pangkat'
      end
      object Label10: TLabel
        Left = 7
        Top = 200
        Width = 68
        Height = 13
        Caption = 'TMT Golongan'
      end
      object Label11: TLabel
        Left = 7
        Top = 232
        Width = 118
        Height = 13
        Caption = 'Pendidikan / Tahun Lulus'
      end
      object Label6: TLabel
        Left = 500
        Top = 3
        Width = 31
        Height = 13
        Caption = 'Label6'
        Visible = False
      end
      object Edit1: TEdit
        Left = 133
        Top = 7
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 133
        Top = 34
        Width = 237
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox1: TComboBox
        Left = 133
        Top = 61
        Width = 201
        Height = 21
        TabOrder = 2
        OnKeyPress = Edit1KeyPress
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
          'Sekretaris')
      end
      object ComboBox2: TComboBox
        Left = 133
        Top = 86
        Width = 129
        Height = 21
        TabOrder = 3
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox4: TComboBox
        Left = 133
        Top = 112
        Width = 220
        Height = 21
        TabOrder = 4
        Text = 'ComboBox4'
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox5: TComboBox
        Left = 133
        Top = 142
        Width = 145
        Height = 21
        TabOrder = 6
        Text = 'ComboBox5'
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox6: TComboBox
        Left = 133
        Top = 229
        Width = 145
        Height = 21
        TabOrder = 9
        Text = 'ComboBox6'
        OnKeyPress = Edit1KeyPress
      end
      object Edit3: TEdit
        Left = 296
        Top = 229
        Width = 121
        Height = 21
        TabOrder = 10
        Text = 'Edit3'
        OnKeyPress = Edit1KeyPress
      end
      object Edit4: TEdit
        Left = 380
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'Edit3'
        OnKeyPress = Edit1KeyPress
      end
      object Edit5: TEdit
        Left = 133
        Top = 171
        Width = 121
        Height = 21
        TabOrder = 7
        Text = 'Edit3'
        OnKeyPress = Edit1KeyPress
      end
      object Edit6: TEdit
        Left = 133
        Top = 197
        Width = 121
        Height = 21
        TabOrder = 8
        Text = 'Edit3'
        OnKeyPress = Edit1KeyPress
      end
      object Panel2: TPanel
        Left = 0
        Top = 262
        Width = 582
        Height = 41
        Align = alBottom
        TabOrder = 11
        object Bevel1: TBevel
          Left = 1
          Top = 1
          Width = 580
          Height = 39
          Align = alBottom
          Shape = bsFrame
          ExplicitTop = 0
        end
        object SpeedButton1: TSpeedButton
          Left = 484
          Top = 6
          Width = 31
          Height = 27
          Caption = '<<'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 521
          Top = 6
          Width = 31
          Height = 27
          Caption = '>>'
          OnClick = SpeedButton2Click
        end
        object Button1: TButton
          Left = 7
          Top = 9
          Width = 59
          Height = 25
          Caption = 'New'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 80
          Top = 9
          Width = 59
          Height = 25
          Caption = 'Simpan'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 145
          Top = 9
          Width = 59
          Height = 25
          Caption = 'Hapus'
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 275
          Top = 9
          Width = 59
          Height = 25
          Caption = 'Close'
          TabOrder = 3
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 210
          Top = 9
          Width = 59
          Height = 25
          Caption = 'Pindah'
          TabOrder = 4
          OnClick = Button5Click
        end
      end
      object CheckBox1: TCheckBox
        Left = 468
        Top = 231
        Width = 97
        Height = 17
        Caption = 'Kembali ke Grid'
        TabOrder = 12
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Grid Pegawai'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 582
        Height = 303
        Align = alClient
        DataSource = DM.DsPegawai
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NIP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Jabatan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Golongan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'satker'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sex'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tl'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgl_lahir'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tmpt_jabatan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tmt_pangkat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pendidikan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lulus'
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 29
    Align = alTop
    TabOrder = 1
    object ComboBox3: TComboBox
      Left = 348
      Top = 2
      Width = 237
      Height = 21
      TabOrder = 0
      OnChange = ComboBox3Change
      OnKeyPress = ComboBox3KeyPress
      Items.Strings = (
        'Pengadilan Tinggi Agama Mataram'
        'Mahkamah Agung RI'
        'Pengadilan Agama Mataram'
        'Pengadilan Agama Girimenang'
        'Pengadilan Agama Praya'
        'Pengadilan Agama Selong'
        'Pengadilan Agama Sumbawa Besar'
        'Pengadilan Agama Taliwang'
        'Pengadilan Agama Dompu'
        'Pengadilan Agama Bima'
        'Pengadilan Agama Denpasar'
        'Pengadilan Agama Badung'
        'Pengadilan Agama Tabanan'
        'Pengadilan Agama Gianyar'
        'Pengadilan Agama Negara'
        'Pengadilan Agama Klungkung'
        'Pengadilan Agama Karangasem'
        'Pengadilan Agama Bangli')
    end
  end
end
