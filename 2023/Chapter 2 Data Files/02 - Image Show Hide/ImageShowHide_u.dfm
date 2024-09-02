object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object imgBook: TImage
    Left = 96
    Top = 41
    Width = 361
    Height = 336
    Stretch = True
  end
  object imgNoCamera: TImage
    Left = 96
    Top = 41
    Width = 361
    Height = 336
    Stretch = True
  end
  object btnShow: TButton
    Left = 504
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 0
    OnClick = btnShowClick
  end
  object btnHide: TButton
    Left = 504
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Hide'
    TabOrder = 1
    OnClick = btnHideClick
  end
end
