object frmClientData: TfrmClientData
  Left = 0
  Top = 0
  Caption = 'Client Data'
  ClientHeight = 373
  ClientWidth = 822
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
  object lblName: TLabel
    Left = 40
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object lbSurname: TLabel
    Left = 40
    Top = 72
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object lblAge: TLabel
    Left = 40
    Top = 128
    Width = 19
    Height = 13
    Caption = 'Age'
  end
  object lblAccomodationType: TLabel
    Left = 368
    Top = 152
    Width = 126
    Height = 13
    Caption = 'Select Accomodation Type'
  end
  object lblPhoto: TLabel
    Left = 368
    Top = 224
    Width = 125
    Height = 13
    Caption = 'Photo of Ideal Destination'
  end
  object imgPhoto: TImage
    Left = 367
    Top = 243
    Width = 126
    Height = 86
    Proportional = True
    Stretch = True
  end
  object edtName: TEdit
    Left = 128
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSurname: TEdit
    Left = 128
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object sedAge: TSpinEdit
    Left = 128
    Top = 128
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object rgpGender: TRadioGroup
    Left = 40
    Top = 176
    Width = 209
    Height = 97
    Caption = 'Gender'
    Items.Strings = (
      'Male'
      'Female')
    TabOrder = 3
  end
  object grpPlacesVisited: TGroupBox
    Left = 368
    Top = 24
    Width = 105
    Height = 105
    Caption = 'Places Visited'
    TabOrder = 4
    object cbxParis: TCheckBox
      Left = 19
      Top = 26
      Width = 126
      Height = 17
      Caption = 'Paris'
      TabOrder = 0
    end
    object cbxLondon: TCheckBox
      Left = 19
      Top = 56
      Width = 97
      Height = 17
      Caption = 'London'
      TabOrder = 1
    end
    object cbxRome: TCheckBox
      Left = 19
      Top = 83
      Width = 97
      Height = 17
      Caption = 'Rome'
      TabOrder = 2
    end
  end
  object cmbType: TComboBox
    Left = 368
    Top = 176
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'cmbType'
    Items.Strings = (
      '2 Star'
      '3 Star'
      '4 Star'
      '5 Star')
  end
  object memDisplay: TMemo
    Left = 560
    Top = 24
    Width = 217
    Height = 213
    Lines.Strings = (
      'Display Client Details')
    TabOrder = 6
  end
  object btnDisplay: TButton
    Left = 646
    Top = 291
    Width = 75
    Height = 25
    Caption = 'Display'
    TabOrder = 7
  end
end
