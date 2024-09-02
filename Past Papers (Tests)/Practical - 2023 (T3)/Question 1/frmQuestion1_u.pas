// Comment your name here
unit frmQuestion1_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Math, Jpeg, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls;

type
  TQuestion1 = class(TForm)
    btnRestoreDB: TButton;
    pctData: TPageControl;
    TabSheet1: TTabSheet;
    dbgTable: TDBGrid;
    btnLearners: TButton;
    redOutput: TRichEdit;
    rdgGender: TRadioGroup;
    btnGender: TButton;
    btnRollOver: TButton;
    btnInstrumentStat: TButton;
    btnDeleteLearner: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnRestoreDBClick(Sender: TObject);
    procedure connectDB;
    procedure btnLearnersClick(Sender: TObject);
    procedure btnGenderClick(Sender: TObject);
    procedure btnRollOverClick(Sender: TObject);
    procedure btnInstrumentStatClick(Sender: TObject);
    procedure btnDeleteLearnerClick(Sender: TObject);
  private
    { Private declarations }
  var
    conDB: TADOConnection;
    tblMusic: TADOtable;
    qry: TADOQuery;
    dsrTbl: TDataSource;
    dsrSQL: TDataSource;
    SQL: String;

  public
    { Public declarations }
  end;

var
  Question1: TQuestion1;

implementation

{$R *.dfm}

procedure TQuestion1.btnLearnersClick(Sender: TObject);
begin
  // Question 1.1
  redOutput.Lines.Clear;
  redOutput.Lines.Add('The total learners are: ' +
    IntToStr(dbgTable.DataSource.DataSet.RecordCount));

end;

procedure TQuestion1.btnGenderClick(Sender: TObject);
var
  i, f: Integer;
begin
  // Question 1.2

  redOutput.Lines.Clear;
  redOutput.Paragraph.TabCount := 1;
  redOutput.Paragraph.Tab[0] := 190;

  try
    dbgTable.DataSource.DataSet.First;
    while not(dbgTable.DataSource.DataSet.Eof) do
    begin
      case rdgGender.ItemIndex of
        0:
          begin
            if dbgTable.DataSource.DataSet['Gender'] = 'M' then
            begin
              redOutput.Lines.Add(dbgTable.DataSource.DataSet['LearnerName'] +
                #9 + dbgTable.DataSource.DataSet['Surname']);
            end;

          end;
        1:
          begin
            if dbgTable.DataSource.DataSet['Gender'] = 'F' then
            begin
              redOutput.Lines.Add(dbgTable.DataSource.DataSet['LearnerName'] +
                #9 + dbgTable.DataSource.DataSet['Surname']);
            end;
          end;
      end;

      dbgTable.DataSource.DataSet.Next;

    end;

  finally

  end;

end;

procedure TQuestion1.btnRollOverClick(Sender: TObject);
begin
  // Question 1.3

  dbgTable.DataSource.DataSet.First;
  while not(dbgTable.DataSource.DataSet.Eof) do
  begin
    dbgTable.DataSource.DataSet.Edit;
    dbgTable.DataSource.DataSet['Age'] := dbgTable.DataSource.DataSet
      ['Age'] + 1;
    dbgTable.DataSource.DataSet.Next;
  end;

  ShowMessage(IntToStr(dbgTable.DataSource.DataSet.RecordCount) +
    ' record(s) updated!');

end;

procedure TQuestion1.btnInstrumentStatClick(Sender: TObject);
var
  iBass, iDrums, iGuitar, iPercussion, iPiano, iViolin, iVocals: Integer;

begin
  // Question 1.4

  redOutput.Lines.Clear;

  iBass := 0;
  iDrums := 0;
  iGuitar := 0;
  iPercussion := 0;
  iPiano := 0;
  iViolin := 0;
  iVocals := 0;

  try
    dbgTable.DataSource.DataSet.First;
    while not(dbgTable.DataSource.DataSet.Eof) do
    begin
      if dbgTable.DataSource.DataSet['Instrument'] = 'Bass' then
      begin
        inc(iBass);
      end
      else if dbgTable.DataSource.DataSet['Instrument'] = 'Drums' then
      begin
        inc(iDrums);
      end
      else if dbgTable.DataSource.DataSet['Instrument'] = 'Guitar' then
      begin
        inc(iGuitar);
      end
      else if dbgTable.DataSource.DataSet['Instrument'] = 'Percussion' then
      begin
        inc(iPercussion);
      end
      else if dbgTable.DataSource.DataSet['Instrument'] = 'Piano' then
      begin
        inc(iPiano);
      end
      else if dbgTable.DataSource.DataSet['Instrument'] = 'Violin' then
      begin
        inc(iViolin);
      end
      else if dbgTable.DataSource.DataSet['Instrument'] = 'Vocals' then
      begin
        inc(iVocals);
      end;

      dbgTable.DataSource.DataSet.Next;

    end;
  finally
    redOutput.Lines.Add('Bass: ' + IntToStr(iBass));
    redOutput.Lines.Add('Drums: ' + IntToStr(iDrums));
    redOutput.Lines.Add('Guitar: ' + IntToStr(iGuitar));
    redOutput.Lines.Add('Percussion: ' + IntToStr(iPercussion));
    redOutput.Lines.Add('Piano: ' + IntToStr(iPiano));
    redOutput.Lines.Add('Violin: ' + IntToStr(iViolin));
    redOutput.Lines.Add('Vocals: ' + IntToStr(iVocals));
  end;

end;

procedure TQuestion1.btnDeleteLearnerClick(Sender: TObject);
var
  iDelete: Integer;
begin
  // Question 1.5

  iDelete := StrToInt(InputBox('Delete', 'Type in the user to delete', ''));

  try
    dbgTable.DataSource.DataSet.First;
    while not(dbgTable.DataSource.DataSet.Eof) do
    begin
      if dbgTable.DataSource.DataSet['Number'] = iDelete then
      begin
        dbgTable.DataSource.DataSet.Delete;
        ShowMessage('Record Deleted');
      end;

      dbgTable.DataSource.DataSet.Next;
    end;
  finally

  end;

end;

/// / GIVEN CODE, DO NOT MODIFY ////
procedure TQuestion1.btnRestoreDBClick(Sender: TObject);

var
  bFlag: boolean;

begin
  conDB.Connected := false;
  tblMusic.Free();

  DeleteFile('SelaMusicSchool.mdb');
  CopyFile('SelaMusicSchoolBackup.mdb', 'SelaMusicSchool.mdb', bFlag);

  connectDB;

  MessageDlg('Database Restored! ', mtInformation, [mbOK], 0);
end;

/// / GIVEN CODE, DO NOT MODIFY ////
procedure TQuestion1.connectDB;
begin
  conDB := TADOConnection.Create(Self);

  conDB.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=SelaMusicSchool.mdb;' +
    'Mode=ReadWrite;Persist Security Info=False';

  conDB.LoginPrompt := false;
  conDB.Connected := true;

  tblMusic := TADOtable.Create(Self);
  tblMusic.Connection := conDB;

  tblMusic.TableName := 'MusicSchoolData';
  tblMusic.Active := true;

  dsrTbl := TDataSource.Create(Self);
  dsrTbl.DataSet := tblMusic;

  dbgTable.DataSource := dsrTbl;

end;

procedure TQuestion1.FormActivate(Sender: TObject);
begin
  connectDB;
end;

end.
