object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TO Foto Renamer'
  ClientHeight = 621
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object fname_1: TLabel
    Left = 40
    Top = 128
    Width = 163
    Height = 19
    Caption = '1. '#1050#1072#1089#1089#1072' 1 '#1054#1073#1089#1083#1091#1078#1077#1085#1085#1072#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object floc_1: TLabel
    Left = 56
    Top = 153
    Width = 4
    Height = 16
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
  end
  object fname_2: TLabel
    Left = 40
    Top = 184
    Width = 247
    Height = 19
    Caption = '2. '#1050#1072#1089#1089#1072' 1 '#1054#1073#1097#1080#1081' '#1074#1080#1076' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object fname_3: TLabel
    Left = 40
    Top = 240
    Width = 251
    Height = 19
    Caption = '3. '#1050#1072#1089#1089#1072' 1 '#1054#1073#1097#1080#1081' '#1074#1080#1076' '#1088#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object object_name: TLabel
    Left = 315
    Top = 16
    Width = 189
    Height = 19
    Caption = #1052#1052' '#1069#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090#1072#1083#1100#1085#1099#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object floc_3: TLabel
    Left = 56
    Top = 265
    Width = 4
    Height = 16
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
  end
  object floc_2: TLabel
    Left = 56
    Top = 209
    Width = 4
    Height = 16
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
  end
  object destdesc: TLabel
    Left = 40
    Top = 72
    Width = 98
    Height = 19
    Caption = #1062#1077#1083#1077#1074#1072#1103' '#1087#1072#1087#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object destlock: TLabel
    Left = 56
    Top = 97
    Width = 4
    Height = 16
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
  end
  object OpenFile1: TButton
    Left = 648
    Top = 121
    Width = 89
    Height = 37
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083
    TabOrder = 0
    OnClick = OpenFile1Click
  end
  object OpenFile3: TButton
    Left = 648
    Top = 233
    Width = 89
    Height = 37
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083
    TabOrder = 1
    OnClick = OpenFile3Click
  end
  object Make: TButton
    Left = 584
    Top = 552
    Width = 153
    Height = 57
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = MakeClick
  end
  object OpenFile2: TButton
    Left = 648
    Top = 179
    Width = 89
    Height = 33
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083
    TabOrder = 3
    OnClick = OpenFile2Click
  end
  object OpenDir: TButton
    Left = 648
    Top = 65
    Width = 89
    Height = 37
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083
    TabOrder = 4
    OnClick = OpenDirClick
  end
  object Open_photo: TOpenPictureDialog
    Filter = 'All|*.png; *.jpg; *.jpeg; *.bmp'
    Left = 776
  end
  object OpenDialog1: TOpenDialog
    Left = 704
    Top = 8
  end
end
