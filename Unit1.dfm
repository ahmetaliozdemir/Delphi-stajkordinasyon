object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Giri'#351
  ClientHeight = 335
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 66
    Width = 93
    Height = 19
    Caption = 'Kullan'#305'c'#305' Ad'#305':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 130
    Width = 38
    Height = 19
    Caption = #350'ifre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 31
    Top = 8
    Width = 103
    Height = 13
    Caption = 'Kullan'#305'c'#305' Ad'#305' : deneme'
  end
  object Label4: TLabel
    Left = 31
    Top = 27
    Width = 101
    Height = 13
    Caption = 'Kullan'#305'c'#305' Ad'#305' : 123123'
  end
  object Edit1: TEdit
    Left = 96
    Top = 91
    Width = 193
    Height = 27
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 155
    Width = 193
    Height = 27
    Ctl3D = True
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 200
    Width = 193
    Height = 41
    Caption = 'G'#304'R'#304#350' YAP'
    TabOrder = 2
    OnClick = Button1Click
  end
  object FDQuery1: TFDQuery
    Connection = Form2.FDConnection1
    Left = 336
    Top = 288
  end
end
