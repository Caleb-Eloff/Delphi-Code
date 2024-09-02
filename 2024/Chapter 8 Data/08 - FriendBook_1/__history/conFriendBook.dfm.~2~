object dbmFB: TdbmFB
  Height = 480
  Width = 640
  object conFriendBookDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\elocal21\D' +
      'esktop\delphi-code\2024\Chapter 8 Data\08 - FriendBook_1\FriendB' +
      'ookDB_BACKUP.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 168
  end
  object tblFriends: TADOTable
    Active = True
    Connection = conFriendBookDB
    CursorType = ctStatic
    TableName = 'tblFriends'
    Left = 200
    Top = 168
  end
  object dscFriends: TDataSource
    DataSet = tblFriends
    Left = 264
    Top = 168
  end
end
