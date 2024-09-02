unit FriendBook_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Keyboard, ExtCtrls, Grids, DBGrids,
  conFriendBook,
  Data.DB;

type
  TfrmFriendBook = class(TForm)
    Label1: TLabel;
    lblName: TLabel;
    dtpBirthday: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    edtClass: TEdit;
    Label4: TLabel;
    edtProfileViews: TEdit;
    memBio: TMemo;
    btnUpdate: TButton;
    btnCreate: TButton;
    btnDelete: TButton;
    dbgFriends: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgFriendsCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFriendBook: TfrmFriendBook;

implementation

{$R *.dfm}

procedure TfrmFriendBook.btnCreateClick(Sender: TObject);
begin
  // Create

  dbmFB.tblFriends.Append;

  dbmFB.tblFriends['Surname'] := InputBox('FriendBook',
    'Enter your surname: ', '');
  dbmFB.tblFriends['FirstNames'] := InputBox('FriendBook',
    'Enter your first name: ', '');
  dbmFB.tblFriends['DateOfBirth'] := Date;
  dbmFB.tblFriends['Class'] := InputBox('FriendBook', 'Enter your class: ', '');
  dbmFB.tblFriends['ProfileViews'] := 0;
  dbmFB.tblFriends['Bio'] := '';

  dbmFB.tblFriends.Post;

  ShowMessage
    ('Congratulations! You are registered. Login to complete your profile.');

end;

procedure TfrmFriendBook.btnUpdateClick(Sender: TObject);
begin
  // Update

  dbmFB.tblFriends.Edit;

  dbmFB.tblFriends['Bio'] := memBio.Text;
  dbmFB.tblFriends['DateOfBirth'] := dtpBirthday.Date;
  dbmFB.tblFriends['Class'] := edtClass.Text;

  dbmFB.tblFriends.Post;
  ShowMessage('Profile updated');

end;

procedure TfrmFriendBook.dbgFriendsCellClick(Column: TColumn);
begin

  lblName.Caption := dbmFB.tblFriends['FirstNames'] + ' ' + dbmFB.tblFriends
    ['Surname'];
  memBio.Text := dbmFB.tblFriends['Bio'];
  dtpBirthday.Date := dbmFB.tblFriends['DateOfBirth'];
  edtClass.Text := dbmFB.tblFriends['Class'];
  edtProfileViews.Text := dbmFB.tblFriends['ProfileViews'];

  dbmFB.tblFriends.Edit;
  dbmFB.tblFriends['ProfileViews'] := dbmFB.tblFriends['ProfileViews'] + 1;
  dbmFB.tblFriends.Post;

  edtProfileViews.Text := dbmFB.tblFriends['ProfileViews'];

end;

procedure TfrmFriendBook.btnDeleteClick(Sender: TObject);
begin
  // Delete

  if MessageDlg('Are you sure?', TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes
  then
  begin

    dbmFB.tblFriends.Delete;
    ShowMessage('Record Deleted');

  end
  else
  begin
    ShowMessage('Delete cancelled');
  end;

end;

procedure TfrmFriendBook.FormShow(Sender: TObject);
begin
  // Form Show Tasks

  dbgFriends.DataSource := dbmFB.dscFriends;

  dbgFriends.Columns[0].Width := 30;
  dbgFriends.Columns[1].Width := 70;
  dbgFriends.Columns[2].Width := 70;
  dbgFriends.Columns[3].Width := 100;

end;

end.
