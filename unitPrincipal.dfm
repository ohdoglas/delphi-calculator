object Calculator: TCalculator
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculator'
  ClientHeight = 380
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  PrintScale = poNone
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object pnlResult: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 385
    object txtResult: TEdit
      Left = 8
      Top = 8
      Width = 433
      Height = 73
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object pnlCommon: TPanel
    Left = 0
    Top = 94
    Width = 449
    Height = 286
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 95
    object btnReset: TButton
      Left = 134
      Top = 210
      Width = 57
      Height = 63
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnResetClick
    end
    object btn9: TButton
      Left = 134
      Top = 0
      Width = 57
      Height = 64
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btn9Click
    end
    object btnZero: TButton
      Left = 71
      Top = 210
      Width = 57
      Height = 63
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnZeroClick
    end
    object btnDot: TButton
      Left = 8
      Top = 210
      Width = 57
      Height = 63
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnDotClick
    end
    object btnDiv: TButton
      Left = 197
      Top = 0
      Width = 57
      Height = 64
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnDivClick
    end
    object btnMul: TButton
      Left = 197
      Top = 70
      Width = 57
      Height = 64
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnMulClick
    end
    object btnMinus: TButton
      Left = 198
      Top = 140
      Width = 57
      Height = 64
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnMinusClick
    end
    object btnPlus: TButton
      Left = 197
      Top = 210
      Width = 58
      Height = 63
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnPlusClick
    end
    object btnPercent: TButton
      Left = 260
      Top = 1
      Width = 62
      Height = 64
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btnPercentClick
    end
    object btn6: TButton
      Left = 134
      Top = 70
      Width = 57
      Height = 64
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = btn6Click
    end
    object btn5: TButton
      Left = 72
      Top = 70
      Width = 57
      Height = 64
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = btn5Click
    end
    object btn8: TButton
      Left = 71
      Top = 0
      Width = 57
      Height = 64
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = btn8Click
    end
    object btn4: TButton
      Left = 8
      Top = 70
      Width = 57
      Height = 64
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = btn4Click
    end
    object btn1: TButton
      Left = 8
      Top = 140
      Width = 57
      Height = 64
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = btn1Click
    end
    object btn7: TButton
      Left = 9
      Top = 0
      Width = 57
      Height = 64
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = btn7Click
    end
    object btn3: TButton
      Left = 134
      Top = 140
      Width = 57
      Height = 64
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = btn3Click
    end
    object btn2: TButton
      Left = 71
      Top = 140
      Width = 57
      Height = 64
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = btn2Click
    end
    object btnEqual: TButton
      Left = 261
      Top = 71
      Width = 61
      Height = 202
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnClick = btnEqualClick
    end
  end
end
