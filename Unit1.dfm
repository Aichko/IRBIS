object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Irbis'
  ClientHeight = 435
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 112
      Top = 31
      Width = 237
      Height = 13
      Caption = #1101#1083#1077#1082#1090#1088#1086#1085#1085#1086'-'#1073#1080#1073#1083#1080#1086#1090#1077#1095#1085#1086#1081' '#1089#1080#1089#1090#1077#1084#1099' "WebIrbis" '
    end
    object Label1: TLabel
      Left = 80
      Top = 12
      Width = 296
      Height = 13
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1087#1086' '#1089#1090#1072#1089#1090#1080#1095#1077#1089#1082#1086#1084#1091' '#1091#1095#1077#1090#1091' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1088#1072#1073#1086#1090#1077' '
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 394
    Width = 454
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 392
    object Label3: TLabel
      Left = 168
      Top = 12
      Width = 104
      Height = 13
      Caption = #1051#1077#1089#1086#1089#1080#1073#1080#1088#1089#1082', 2020'#1075'.'
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 57
    Width = 454
    Height = 337
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 335
    object PanelTotalRequest: TPanel
      Left = 0
      Top = 0
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 0
      Visible = False
      ExplicitTop = 165
    end
    object PanelValidRequest: TPanel
      Left = 0
      Top = 41
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 1
      Visible = False
      ExplicitTop = 212
    end
    object PanelFailedrequest: TPanel
      Left = 0
      Top = 82
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 2
      Visible = False
      ExplicitTop = 259
    end
    object PanelUniqueVisitors: TPanel
      Left = 0
      Top = 123
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 3
      Visible = False
      ExplicitLeft = 3
      ExplicitTop = 306
    end
    object PanelAllPdf: TPanel
      Left = 0
      Top = 164
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 4
      Visible = False
      ExplicitLeft = 3
      ExplicitTop = 353
    end
    object PanelUniqueFiles: TPanel
      Left = 0
      Top = 205
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 5
      Visible = False
      ExplicitLeft = 3
      ExplicitTop = 400
    end
    object PanelUniqueStaticFiles: TPanel
      Left = 0
      Top = 246
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 6
      Visible = False
      ExplicitLeft = 3
      ExplicitTop = 447
    end
    object PanelGenerationTime: TPanel
      Left = 0
      Top = 287
      Width = 450
      Height = 41
      Align = alTop
      TabOrder = 7
      Visible = False
      ExplicitTop = 494
    end
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 65528
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'log|*.log'
    Left = 96
    Top = 65528
  end
end
