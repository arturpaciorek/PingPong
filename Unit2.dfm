object Form2: TForm2
  Left = 687
  Top = 409
  Width = 450
  Height = 320
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ustawienia'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 40
    Width = 185
    Height = 169
    Caption = 'Wielko'#347#263' paletki'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 1
    Items.Strings = (
      'Ma'#322'a'
      #346'rednia'
      'Du'#380'a')
    ParentFont = False
    TabOrder = 0
  end
  object RadioGroup2: TRadioGroup
    Left = 224
    Top = 40
    Width = 185
    Height = 169
    Caption = 'Wielko'#347#263' pi'#322'ki'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 1
    Items.Strings = (
      'Ma'#322'a'
      #346'rednia'
      'Du'#380'a')
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 264
    Top = 224
    Width = 70
    Height = 41
    Caption = 'Zapisz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end

end
