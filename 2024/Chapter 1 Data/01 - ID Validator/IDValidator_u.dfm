object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ID Validator'
  ClientHeight = 341
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitle: TLabel
    Left = 24
    Top = 8
    Width = 143
    Height = 23
    Caption = 'ID VALIDATOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlDisplay1: TPanel
    Left = 16
    Top = 32
    Width = 217
    Height = 209
    TabOrder = 0
    object lbl1Citizen: TLabel
      Left = 16
      Top = 136
      Width = 32
      Height = 13
      Caption = 'Citizen'
    end
    object lblGender: TLabel
      Left = 16
      Top = 80
      Width = 35
      Height = 13
      Caption = 'Gender'
    end
    object lblBirthDate: TLabel
      Left = 16
      Top = 16
      Width = 101
      Height = 13
      Caption = 'Birth Date (YYMMDD)'
    end
    object edtDOB: TEdit
      Left = 16
      Top = 36
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object cmbGender: TComboBox
      Left = 16
      Top = 95
      Width = 145
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'Female'
        'Male')
    end
    object cmbCitizen: TComboBox
      Left = 16
      Top = 155
      Width = 145
      Height = 21
      TabOrder = 2
      Items.Strings = (
        'South African Citizen'
        'Permanent resident')
    end
  end
  object pnlDisplay2: TPanel
    Left = 248
    Top = 32
    Width = 249
    Height = 209
    TabOrder = 1
    object lblID: TLabel
      Left = 32
      Top = 8
      Width = 51
      Height = 13
      Caption = 'ID Number'
    end
    object edtID: TEdit
      Left = 32
      Top = 27
      Width = 201
      Height = 21
      TabOrder = 0
    end
    object btnValidateId: TButton
      Left = 32
      Top = 80
      Width = 201
      Height = 105
      Caption = 'Validate Id'
      TabOrder = 1
    end
  end
  object pnlDisplay3: TPanel
    Left = 16
    Top = 247
    Width = 481
    Height = 74
    TabOrder = 2
    object lblResult: TLabel
      Left = 24
      Top = 8
      Width = 61
      Height = 23
      Caption = 'Result'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDisplay: TLabel
      Left = 24
      Top = 40
      Width = 89
      Height = 13
      Caption = 'Display result here'
    end
  end
end
