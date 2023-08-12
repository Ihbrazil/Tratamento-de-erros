object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblDividendo: TLabel
    Left = 288
    Top = 64
    Width = 54
    Height = 15
    Caption = 'Dividendo'
  end
  object Label2: TLabel
    Left = 288
    Top = 160
    Width = 36
    Height = 15
    Caption = 'Divisor'
  end
  object lblMensagem: TLabel
    Left = 271
    Top = 368
    Width = 72
    Height = 15
    Caption = 'lblMensagem'
  end
  object edtDividendo: TEdit
    Left = 248
    Top = 85
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'edtDividendo'
  end
  object edtDivisor: TEdit
    Left = 248
    Top = 181
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'edtDivisor'
  end
  object Button1: TButton
    Left = 271
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
