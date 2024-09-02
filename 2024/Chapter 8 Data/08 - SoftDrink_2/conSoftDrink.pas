unit conSoftDrink;

interface

uses
  SysUtils, Classes, ADODB, DB;

type
  TdbmSoftDrink = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    conSoftDrinkDB: TADOConnection;
    tblSoftDrink: TADOTable;
    dscSoftDrink: TDataSource;

  end;

var
  dbmSoftDrink: TdbmSoftDrink;

implementation

{$R *.dfm}

procedure TdbmSoftDrink.DataModuleCreate(Sender: TObject);
begin
  // OnCreate Code

  conSoftDrinkDB := TADOConnection.Create(dbmSoftDrink);
  tblSoftDrink := TADOTable.Create(dbmSoftDrink);
  dscSoftDrink := TDataSource.Create(dbmSoftDrink);

  conSoftDrinkDB.Close;
  conSoftDrinkDB.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
    'C:\Users\elocal21\Desktop\delphi-code\2024\Chapter 8 Data\08 - SoftDrink_2\SoftDrinkDB.mdb'
    + ';Persist Security Info=False';
  conSoftDrinkDB.LoginPrompt := False;
  conSoftDrinkDB.Open;

  tblSoftDrink.Connection := conSoftDrinkDB;
  tblSoftDrink.TableName := 'tblSoftDrink';

  dscSoftDrink.DataSet := tblSoftDrink;

  tblSoftDrink.Open;

end;

end.
