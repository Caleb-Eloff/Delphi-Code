object dbmSoftDrink: TdbmSoftDrink
  OnCreate = DataModuleCreate
  Height = 288
  Width = 360
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\elocal21\D' +
      'esktop\delphi-code\2024\Chapter 8 Data\08 - SoftDrink_1\SoftDrin' +
      'kDB.mdb;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 144
    Top = 128
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblSoftDrink'
    Left = 248
    Top = 152
  end
  object DataSource1: TDataSource
    Left = 256
    Top = 96
  end
end
