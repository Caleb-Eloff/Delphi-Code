program frmQuestion1_p;

uses
  Forms,
  frmQuestion1_u in 'frmQuestion1_u.pas' {Question1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TQuestion1, Question1);
  Application.Run;
end.
