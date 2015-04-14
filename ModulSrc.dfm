object DM: TDM
  OldCreateOrder = False
  Height = 249
  Width = 410
  object MyConn: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    Port = 0
    Database = 'F:\Delphi\SKP\SKPlite.sqd'
    Protocol = 'sqlite-3'
    LibraryLocation = 'F:\Delphi\sqlite3.dll'
    Left = 68
    Top = 108
  end
  object Qexec: TZQuery
    Connection = MyConn
    Params = <>
    Left = 68
    Top = 8
  end
  object tblpejabat: TZTable
    Connection = MyConn
    TableName = 'tbl_pegawai'
    Left = 148
    Top = 12
  end
  object DsPegawai: TDataSource
    DataSet = QPegawai
    Left = 148
    Top = 68
  end
  object tbljabatan: TZTable
    Connection = MyConn
    TableName = 'tbl_jabatan'
    Left = 216
    Top = 12
    object tbljabatangolongan: TWideStringField
      FieldName = 'golongan'
      Required = True
      Size = 8
    end
    object tbljabatanpangkat: TWideStringField
      FieldName = 'pangkat'
      Size = 40
    end
    object tbljabatanjabatan: TWideStringField
      FieldName = 'jabatan'
      Size = 40
    end
  end
  object DsJabatan: TDataSource
    DataSet = tbljabatan
    Left = 220
    Top = 68
  end
  object tblsatker: TZTable
    Connection = MyConn
    TableName = 'tbl_satker'
    Left = 272
    Top = 12
    object tblsatkerid_satker: TWideStringField
      FieldName = 'id_satker'
      Required = True
      Size = 12
    end
    object tblsatkerNama_satker: TWideStringField
      FieldName = 'Nama_satker'
      Size = 70
    end
    object tblsatkersatker_lengkap: TWideStringField
      FieldName = 'satker_lengkap'
      Size = 90
    end
    object tblsatkeralamat: TWideStringField
      FieldName = 'alamat'
      Size = 90
    end
    object tblsatkerwebsite: TWideStringField
      FieldName = 'website'
      Size = 80
    end
    object tblsatkeremail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
    object tblsatkertelp: TWideStringField
      FieldName = 'telp'
      Size = 24
    end
    object tblsatkerfax: TWideStringField
      FieldName = 'fax'
      Size = 24
    end
  end
  object Dssatker: TDataSource
    DataSet = tblsatker
    Left = 300
    Top = 72
  end
  object QTemp: TZQuery
    Connection = MyConn
    Params = <>
    Left = 116
    Top = 140
  end
  object QPegawai: TZQuery
    Connection = MyConn
    SQL.Strings = (
      'Select * from Tbl_pegawai')
    Params = <>
    Left = 176
    Top = 144
  end
  object TblPosisi: TZTable
    Connection = MyConn
    TableName = 'tbl_posisi'
    Left = 280
    Top = 136
  end
  object DsPosisi: TDataSource
    DataSet = TblPosisi
    Left = 284
    Top = 188
  end
end
