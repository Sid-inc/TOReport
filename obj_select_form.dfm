object obj_sel_form: Tobj_sel_form
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'TO Photo renamer'
  ClientHeight = 344
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Start_message: TLabel
    Left = 134
    Top = 24
    Width = 269
    Height = 37
    Caption = #1044#1086#1073#1088#1086' '#1087#1086#1078#1072#1083#1086#1074#1072#1090#1100'!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label_name: TLabel
    Left = 24
    Top = 88
    Width = 209
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label_format: TLabel
    Left = 24
    Top = 136
    Width = 210
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1077#1090#1077' '#1092#1086#1088#1084#1072#1090' '#1086#1073#1098#1077#1082#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object obj_name: TEdit
    Left = 264
    Top = 88
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object MM: TRadioButton
    Left = 264
    Top = 136
    Width = 113
    Height = 17
    Caption = #1052#1052
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = MMClick
  end
  object MK: TRadioButton
    Left = 264
    Top = 176
    Width = 113
    Height = 17
    Caption = #1052#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = MKClick
  end
  object MA: TRadioButton
    Left = 264
    Top = 216
    Width = 113
    Height = 17
    Caption = #1052#1040
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = MAClick
  end
  object next_button: TButton
    Left = 406
    Top = 280
    Width = 75
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = next_buttonClick
  end
end
