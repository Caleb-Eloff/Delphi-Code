unit ImageShowHide_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    imgBook: TImage;
    imgNoCamera: TImage;
    btnShow: TButton;
    btnHide: TButton;
    procedure btnShowClick(Sender: TObject);
    procedure btnHideClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnHideClick(Sender: TObject);
begin

  imgBook.Hide;
  imgNoCamera.Show;

end;

procedure TForm1.btnShowClick(Sender: TObject);
begin

  imgBook.Show;
  imgNoCamera.Hide;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  imgBook.Picture.LoadFromFile('Book.bmp');
  imgNoCamera.Picture.LoadFromFile('NoCamera.bmp');

end;

end.
