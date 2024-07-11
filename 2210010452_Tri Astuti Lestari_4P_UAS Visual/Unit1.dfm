object Form1: TForm1
  Left = 410
  Top = 162
  Width = 482
  Height = 485
  Caption = 'Ya'
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
    Left = 16
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object Label7: TLabel
    Left = 24
    Top = 408
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object DISKON: TLabel
    Left = 16
    Top = 208
    Width = 38
    Height = 13
    Caption = 'DISKON'
  end
  object Ldiskon: TLabel
    Left = 104
    Top = 208
    Width = 89
    Height = 13
    Caption = 'TERISI OTOMATIS'
  end
  object edt1: TEdit
    Left = 104
    Top = 16
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 104
    Top = 48
    Width = 329
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 104
    Top = 80
    Width = 329
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 104
    Top = 112
    Width = 329
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 104
    Top = 144
    Width = 329
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 16
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 104
    Top = 240
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 192
    Top = 240
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 280
    Top = 240
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 368
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 280
    Width = 425
    Height = 120
    DataSource = DataModule2.dskustomer
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edt6: TEdit
    Left = 120
    Top = 408
    Width = 321
    Height = 21
    TabOrder = 11
  end
  object chk1: TCheckBox
    Left = 104
    Top = 176
    Width = 49
    Height = 17
    Caption = 'YA'
    TabOrder = 12
    OnClick = chk1Click
  end
  object chk2: TCheckBox
    Left = 184
    Top = 176
    Width = 57
    Height = 17
    Caption = 'TIDAK'
    TabOrder = 13
    OnClick = chk2Click
  end
end
