unit conFriendBook;

interface

uses
  SysUtils, Classes, ADODB, DB; // Include ADODB, DB in Uses

type
  TdbmFB = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // Declare DB Components here

    ADOConnection: TADOConnection;
    conFriendBookDB: TADOTable;
    dscFriends: TDataSource;

  end;

var
  dbmFB: TdbmFB;

implementation

{$R *.dfm}

procedure TdbmFB.DataModuleCreate(Sender: TObject);
begin

  ADOConnection := TADOConnection.Create(dbmFB);
  conFriendBookDB := TADOTable.Create(dbmFB);
  dscFriends := TDataSource.Create(dbmFB);
  conFriendBookDB.Close;
  conFriendBookDB.ConnectionString :=
    'Provider=Microsoft.Jet. OLEDB.4.0;Data Source = ' +
    ExtractFilePath(ParamStr(0)) + 'FriendBookDB.mdb' +
    '; Persist Security Info = False ';
  ADOConnection.LoginPrompt := False;
  conFriendBookDB.Open;
  conFriendBookDB.Connection := ADOConnection;
  conFriendBookDB.TableName := 'tblFriends';
  dscFriends.DataSet := conFriendBookDB;
  conFriendBookDB.Open;

  {
    ADOConnectionName.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + ExtractFilePath
    (ParamStr(0)) + 'DATABASE_NAME.mdb' + ';Persist Security Info=False';
  }

end;

end.
