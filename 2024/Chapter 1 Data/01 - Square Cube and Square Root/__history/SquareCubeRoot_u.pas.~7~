unit SquareCubeRoot_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Math;

type
  TfrmSquareCubeRoot = class(TForm)
    edtNumber: TEdit;
    lblNumber: TLabel;
    redDisplay: TRichEdit;
    btnCalculate: TButton;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSquareCubeRoot: TfrmSquareCubeRoot;

implementation

{$R *.dfm}

procedure TfrmSquareCubeRoot.btnCalculateClick(Sender: TObject);
var
  iRandom, i, iSquare: Integer;
  rCube, rSquareRoot: Real;

begin

  redDisplay.Clear;

  iRandom := RandomRange(10, 20 + 1);
  edtNumber.Text := IntToStr(iRandom);
  redDisplay.Lines.Add('Number' + #9 + 'Square' + #9 + 'Cube' + #9 +
    'Square Root');

  for i := 1 to iRandom do
  begin

    iSquare := i * i;
    rCube := RoundTo(i * i * i, -2);
    rSquareRoot := RoundTo(Sqrt(i), -2);

    redDisplay.Lines.Add(IntToStr(i) + #9 + IntToStr(iSquare) + #9 +
      FloatToStr(rCube) + #9 + FloatToStr(rSquareRoot));

  end;

end;

end.
