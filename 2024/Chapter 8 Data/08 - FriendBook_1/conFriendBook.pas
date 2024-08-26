unit conFriendBook;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdbmFB = class(TDataModule)
    conFriendBookDB: TADOConnection;
    tblFriends: TADOTable;
    dscFriends: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbmFB: TdbmFB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
