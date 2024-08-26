unit SoftDrinkApp_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Data.DB, conSoftDrink;

type
  TForm1 = class(TForm)
    dbgSoftDrink: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  // Form Show Code

  dbgSoftDrink.DataSource := dbmSoftDrink.dscSoftDrink;

end;

end.
