object Obj_MM: TObj_MM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1072#1075#1072#1079#1080#1085' '#1052#1072#1075#1085#1080#1090
  ClientHeight = 817
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object object_name: TLabel
    Left = 0
    Top = 0
    Width = 834
    Height = 40
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = #1047#1076#1077#1089#1100' '#1090#1080#1087' + '#1085#1072#1079#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Layout = tlCenter
  end
  object destlock: TLabel
    Left = 50
    Top = 95
    Width = 8
    Height = 16
    Caption = '..'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
  end
  object Make: TButton
    Left = 664
    Top = 1898
    Width = 153
    Height = 57
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 0
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 40
    Width = 834
    Height = 737
    TabOrder = 1
  end
  object RenameButton: TButton
    Left = 656
    Top = 784
    Width = 161
    Height = 25
    Caption = #1055#1077#1088#1077#1080#1084#1080#1085#1072#1074#1072#1090#1090#1090'!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = RenameButtonClick
  end
  object Open_photo: TOpenPictureDialog
    Filter = 'All|*.png; *.jpg; *.jpeg; *.bmp'
    Left = 800
    Top = 8
  end
end
