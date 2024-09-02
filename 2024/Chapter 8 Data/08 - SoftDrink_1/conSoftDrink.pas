unit conSoftDrink;

interface

uses
  SysUtils, Classes, Data.DB, Data.Win.ADODB;

type
  TdbmSoftDrink = class(TDataModule)
    conSoftDrinkDB: TADOConnection;
    tblSoftDrink: TADOTable;
    dscSoftDrink: TDataSource;

    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  dbmSoftDrink: TdbmSoftDrink;

implementation

{$R *.dfm}

procedure TdbmSoftDrink.DataModuleCreate(Sender: TObject);
begin
  // OnCreate Code

end;

end.
