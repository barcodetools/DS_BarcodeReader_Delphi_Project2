object Form1: TForm1
  Left = 203
  Top = 116
  Width = 516
  Height = 90
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'DecodeFile'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 8
    Width = 75
    Height = 25
    Caption = 'About'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 8
    Width = 217
    Height = 21
    TabOrder = 2
    Text = 'barcodes.jpg'
  end
end
