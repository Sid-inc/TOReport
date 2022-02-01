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
    Left = 0
    Top = 0
    Width = 547
    Height = 37
    Align = alTop
    Alignment = taCenter
    Caption = #1044#1086#1073#1088#1086' '#1087#1086#1078#1072#1083#1086#1074#1072#1090#1100'!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 134
    ExplicitTop = 8
    ExplicitWidth = 269
  end
  object Label_name: TLabel
    Left = 32
    Top = 136
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
    Left = 32
    Top = 184
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
  object destdesc: TLabel
    Left = 32
    Top = 56
    Width = 316
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1077#1090#1077' '#1087#1072#1087#1082#1091' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1086#1090#1095#1077#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object destlock: TLabel
    Left = 48
    Top = 81
    Width = 89
    Height = 16
    Caption = '..'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -5
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
  end
  object Label_cashcount: TLabel
    Left = 32
    Top = 232
    Width = 213
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1077#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1072#1089#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object obj_name: TEdit
    Left = 272
    Top = 136
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object next_button: TButton
    Left = 440
    Top = 304
    Width = 75
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = next_buttonClick
  end
  object OpenDirBtn: TButton
    Left = 440
    Top = 55
    Width = 75
    Height = 25
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 2
    OnClick = OpenDirBtnClick
  end
  object obj_type_gr: TPanel
    Left = 272
    Top = 176
    Width = 217
    Height = 35
    TabOrder = 3
    object MA: TRadioButton
      Left = 152
      Top = 8
      Width = 65
      Height = 17
      Caption = #1052#1040
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = MAClick
    end
    object MK: TRadioButton
      Left = 81
      Top = 8
      Width = 65
      Height = 17
      Caption = #1052#1050
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = MKClick
    end
    object MM: TRadioButton
      Left = 10
      Top = 8
      Width = 65
      Height = 17
      Caption = #1052#1052
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = MMClick
    end
  end
  object cash_count_gr: TPanel
    Left = 272
    Top = 226
    Width = 217
    Height = 35
    TabOrder = 4
    object cash_count2: TRadioButton
      Left = 10
      Top = 7
      Width = 41
      Height = 21
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cash_count2Click
    end
    object cash_count3: TRadioButton
      Left = 65
      Top = 7
      Width = 41
      Height = 21
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = cash_count3Click
    end
    object cash_count4: TRadioButton
      Left = 119
      Top = 7
      Width = 41
      Height = 21
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = cash_count4Click
    end
    object cash_count5: TRadioButton
      Left = 170
      Top = 7
      Width = 41
      Height = 21
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = cash_count5Click
    end
  end
end
