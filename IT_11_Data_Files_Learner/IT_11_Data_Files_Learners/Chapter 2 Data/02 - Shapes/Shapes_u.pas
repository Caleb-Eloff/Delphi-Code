unit Shapes_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmShapes = class(TForm)
    memDisplay: TMemo;
    btnPattern1: TButton;
    btnPattern2: TButton;
    btnPattern3: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShapes: TfrmShapes;

implementation

{$R *.dfm}

end.
