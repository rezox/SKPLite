object FrmSatker: TFrmSatker
  Left = 0
  Top = 0
  Caption = 'Data Satker'
  ClientHeight = 276
  ClientWidth = 476
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 476
    Height = 276
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Satuan kerja'
      object Bevel1: TBevel
        Left = 0
        Top = 204
        Width = 468
        Height = 44
        Align = alBottom
        Shape = bsFrame
        ExplicitTop = 203
      end
      object Label1: TLabel
        Left = 7
        Top = 19
        Width = 58
        Height = 13
        Caption = 'Kode Satker'
      end
      object Label2: TLabel
        Left = 7
        Top = 46
        Width = 61
        Height = 13
        Caption = 'Nama Satker'
      end
      object Label3: TLabel
        Left = 7
        Top = 98
        Width = 33
        Height = 13
        Caption = 'Alamat'
      end
      object Label4: TLabel
        Left = 7
        Top = 125
        Width = 39
        Height = 13
        Caption = 'Website'
      end
      object Label5: TLabel
        Left = 7
        Top = 151
        Width = 28
        Height = 13
        Caption = 'e-mail'
      end
      object Label6: TLabel
        Left = 7
        Top = 178
        Width = 48
        Height = 13
        Caption = 'Telp / Fax'
      end
      object Edit1: TEdit
        Left = 76
        Top = 16
        Width = 61
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 74
        Top = 43
        Width = 157
        Height = 21
        TabOrder = 1
        Text = 'Edit2'
        OnKeyPress = Edit1KeyPress
      end
      object Edit3: TEdit
        Left = 76
        Top = 95
        Width = 369
        Height = 21
        TabOrder = 3
        Text = 'Edit3'
        OnKeyPress = Edit1KeyPress
      end
      object Edit4: TEdit
        Left = 76
        Top = 122
        Width = 157
        Height = 21
        TabOrder = 4
        Text = 'Edit4'
        OnKeyPress = Edit1KeyPress
      end
      object Edit5: TEdit
        Left = 76
        Top = 148
        Width = 157
        Height = 21
        TabOrder = 5
        Text = 'Edit5'
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 20
        Top = 212
        Width = 75
        Height = 25
        Caption = 'New'
        TabOrder = 9
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 101
        Top = 212
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 8
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 182
        Top = 212
        Width = 75
        Height = 25
        Caption = 'Hapus'
        TabOrder = 10
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 364
        Top = 212
        Width = 75
        Height = 25
        Caption = 'Close'
        TabOrder = 11
        OnClick = Button4Click
      end
      object Edit6: TEdit
        Left = 76
        Top = 68
        Width = 369
        Height = 21
        TabOrder = 2
        Text = 'Edit6'
        OnKeyPress = Edit1KeyPress
      end
      object Edit7: TEdit
        Left = 76
        Top = 175
        Width = 145
        Height = 21
        TabOrder = 6
        Text = 'Edit5'
        OnKeyPress = Edit1KeyPress
      end
      object Edit8: TEdit
        Left = 236
        Top = 175
        Width = 153
        Height = 21
        TabOrder = 7
        Text = 'Edit5'
        OnKeyPress = Edit1KeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Daftar Satuan Kerja'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 468
        Height = 248
        Align = alClient
        DataSource = DM.Dssatker
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
            FieldName = 'id_satker'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama_satker'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'satker_lengkap'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'alamat'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'website'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telp'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fax'
            Width = 64
            Visible = True
          end>
      end
    end
  end
end