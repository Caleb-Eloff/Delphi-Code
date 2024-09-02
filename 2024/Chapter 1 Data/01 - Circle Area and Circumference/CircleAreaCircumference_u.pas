unit CircleAreaCircumference_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Math;

type
  TfrmCircleAreaCircumference = class(TForm)
    lblRadius: TLabel;
    edtRadius: TEdit;
    redDisplay: TRichEdit;
    btnCalculate: TButton;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCircleAreaCircumference: TfrmCircleAreaCircumference;

implementation

{$R *.dfm}

procedure TfrmCircleAreaCircumference.btnCalculateClick(Sender: TObject);
var
  rRadius, rArea, rCirc: Real;

begin

  rRadius := RoundTo(StrToFloat(edtRadius.Text), -2);

  rArea := RoundTo((rRadius * rRadius * Pi), -2);
  rCirc := RoundTo((2 * Pi * rRadius), -2);

  redDisplay.Lines.Add('Radius: ' + #9 + FloatToStr(rRadius));
  redDisplay.Lines.Add('Area: ' + #9 + FloatToStr(rArea));
  redDisplay.Lines.Add('Circumference: ' + #9 + FloatToStr(rCirc));

end;

end.
