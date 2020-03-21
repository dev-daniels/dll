object frmPrincipal: TfrmPrincipal
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Formatador 1.0'
  ClientHeight = 76
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lblCep: TLabel
    Left = 10
    Top = 10
    Width = 90
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CEP'
  end
  object lblCpf: TLabel
    Left = 10
    Top = 40
    Width = 90
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CPF'
  end
  object edtCep: TEdit
    Left = 110
    Top = 10
    Width = 100
    Height = 24
    TabOrder = 0
  end
  object btnFormatarCep: TButton
    Left = 220
    Top = 10
    Width = 75
    Height = 25
    Caption = 'Formatar'
    TabOrder = 1
    OnClick = btnFormatarCepClick
  end
  object edtCepFormatado: TEdit
    Left = 310
    Top = 10
    Width = 100
    Height = 24
    TabOrder = 2
  end
  object edtCpf: TEdit
    Left = 110
    Top = 40
    Width = 100
    Height = 24
    TabOrder = 3
  end
  object btnFormatarCpf: TButton
    Left = 220
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Formatar'
    TabOrder = 4
    OnClick = btnFormatarCpfClick
  end
  object edtCpfFormatado: TEdit
    Left = 310
    Top = 40
    Width = 100
    Height = 24
    TabOrder = 5
  end
end
