object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'INSS'
  ClientHeight = 306
  ClientWidth = 549
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 257
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 721
    object lblSalario: TLabel
      Left = 24
      Top = 24
      Width = 110
      Height = 13
      Caption = 'Informe o sal'#225'rio bruto'
    end
    object edtSalario: TEdit
      Left = 24
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object btnCalcular: TButton
    Left = 416
    Top = 263
    Width = 115
    Height = 35
    Hint = 'Clique aqui para calcular.'
    Caption = '&Calcular'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnCalcularClick
  end
end
