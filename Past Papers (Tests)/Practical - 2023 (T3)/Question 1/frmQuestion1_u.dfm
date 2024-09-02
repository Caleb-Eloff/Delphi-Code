object Question1: TQuestion1
  Left = 0
  Top = 0
  Caption = 'Question 1'
  ClientHeight = 436
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 13
  object btnRestoreDB: TButton
    Left = 8
    Top = 406
    Width = 129
    Height = 25
    Caption = 'Restore Database'
    TabOrder = 0
    OnClick = btnRestoreDBClick
  end
  object pctData: TPageControl
    Left = 0
    Top = 0
    Width = 999
    Height = 385
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Database Manipulation'
      object dbgTable: TDBGrid
        Left = 3
        Top = 3
        Width = 985
        Height = 134
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btnLearners: TButton
        Left = 3
        Top = 143
        Width = 367
        Height = 25
        Caption = 'Learners'
        TabOrder = 1
        OnClick = btnLearnersClick
      end
      object redOutput: TRichEdit
        Left = 376
        Top = 143
        Width = 612
        Height = 211
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object rdgGender: TRadioGroup
        Left = 3
        Top = 174
        Width = 185
        Height = 75
        Caption = 'Gender'
        Items.Strings = (
          'Male'
          'Female')
        TabOrder = 3
      end
      object btnGender: TButton
        Left = 194
        Top = 174
        Width = 176
        Height = 75
        Caption = 'Gender'
        TabOrder = 4
        OnClick = btnGenderClick
      end
      object btnRollOver: TButton
        Left = 3
        Top = 255
        Width = 367
        Height = 25
        Caption = 'Roll Over'
        TabOrder = 5
        OnClick = btnRollOverClick
      end
      object btnInstrumentStat: TButton
        Left = 3
        Top = 286
        Width = 367
        Height = 25
        Caption = 'Instrument Stats'
        TabOrder = 6
        OnClick = btnInstrumentStatClick
      end
      object btnDeleteLearner: TButton
        Left = 3
        Top = 317
        Width = 367
        Height = 25
        Caption = 'Delete Learner'
        TabOrder = 7
        OnClick = btnDeleteLearnerClick
      end
    end
  end
end
