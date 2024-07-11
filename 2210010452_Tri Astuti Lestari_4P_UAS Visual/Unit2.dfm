object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 191
  Top = 152
  Height = 150
  Width = 282
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Delphi7\Folder Baru\libmysql.dll'
    Left = 32
    Top = 8
  end
  object Zkustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kustomer')
    Params = <>
    Left = 112
    Top = 8
  end
  object dskustomer: TDataSource
    DataSet = Zkustomer
    Left = 184
    Top = 8
  end
end
