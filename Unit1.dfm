object Form1: TForm1
  Left = 720
  Top = 254
  Width = 792
  Height = 469
  Caption = 'PingPong '
  Color = clBtnFace
  UseDockManager = True
  DockSite = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  DesignSize = (
    776
    430)
  PixelsPerInch = 96
  TextHeight = 13
  object background: TShape
    Left = 0
    Top = 0
    Width = 776
    Height = 430
    Align = alClient
    Brush.Color = clGreen
  end
  object paddleLeft: TShape
    Left = 64
    Top = 160
    Width = 30
    Height = 150
    Brush.Color = clNavy
    Pen.Width = 2
  end
  object paddleRight: TShape
    Left = 664
    Top = 160
    Width = 30
    Height = 150
    Brush.Color = clNavy
    Pen.Width = 2
  end
  object ball: TShape
    Left = 88
    Top = 80
    Width = 30
    Height = 30
    Brush.Color = clRed
    Shape = stCircle
  end
  object Label2: TLabel
    Left = 295
    Top = 192
    Width = 138
    Height = 31
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Ilosc odbic:'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 295
    Top = 136
    Width = 100
    Height = 42
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Wynik: '
    Color = clBtnFace
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlue
    Font.Height = -31
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object points: TLabel
    Left = 208
    Top = 40
    Width = 364
    Height = 37
    Caption = 'Punkt dla gracza prawego -->'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Button1: TButton
    Left = 256
    Top = 320
    Width = 300
    Height = 60
    Cursor = crHandPoint
    Caption = 'Nowa gra'
    DragCursor = crHandPoint
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -31
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 248
    Width = 300
    Height = 60
    Caption = 'Nast'#281'pna runda'
    DragCursor = crHandPoint
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clLime
    Font.Height = -23
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 352
    Width = 129
    Height = 41
    Caption = 'Ustawienia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object TimerLeftPaddleTop: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerLeftPaddleTopTimer
    Left = 24
    Top = 160
  end
  object TimerLeftPaddleBoth: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerLeftPaddleBothTimer
    Left = 24
    Top = 192
  end
  object TimerRightPaddleTop: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerRightPaddleTopTimer
    Left = 712
    Top = 160
  end
  object TimerRightPaddleBoth: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerRightPaddleBothTimer
    Left = 712
    Top = 192
  end
  object TimerBall: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerBallTimer
    Left = 88
    Top = 48
  end
end
