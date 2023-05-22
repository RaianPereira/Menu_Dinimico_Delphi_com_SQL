object frmRelCadBanco: TfrmRelCadBanco
  Left = 0
  Top = 0
  Caption = 'Cadastro de Banco '
  ClientHeight = 784
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 1
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsCadBanco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 52
      BandType = btTitle
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 4
        Width = 232
        Height = 32
        Caption = 'Listagem de Bancos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 36
        Width = 718
        Height = 16
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 90
      Width = 718
      Height = 34
      BandType = btColumnHeader
      Color = 11402485
      ParentColor = False
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 3
        Top = 6
        Width = 36
        Height = 25
        Caption = '#ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 251
        Top = 6
        Width = 148
        Height = 25
        Caption = 'Nome do Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 501
        Top = 6
        Width = 40
        Height = 25
        Caption = 'Site'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 98
        Top = 6
        Width = 101
        Height = 25
        Caption = 'C'#243'd.Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 124
      Width = 718
      Height = 46
      Transparent = False
      object RLDBText1: TRLDBText
        Left = 12
        Top = 13
        Width = 66
        Height = 21
        DataField = 'BancoId'
        DataSource = dtsCadBanco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 121
        Top = 16
        Width = 81
        Height = 21
        DataField = 'CodBanco'
        DataSource = dtsCadBanco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 251
        Top = 16
        Width = 87
        Height = 21
        DataField = 'DescBanco'
        DataSource = dtsCadBanco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 473
        Top = 13
        Width = 68
        Height = 21
        DataField = 'WebSite'
        DataSource = dtsCadBanco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 170
      Width = 718
      Height = 47
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 16
        Width = 52
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 586
        Top = 16
        Width = 61
        Height = 21
        Caption = 'P'#225'gina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 649
        Top = 16
        Width = 17
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 664
        Top = 16
        Width = 11
        Height = 21
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 677
        Top = 16
        Width = 17
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
        Text = ''
      end
    end
  end
  object QryCadBanco: TZQuery
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      'select BancoId,'
      #9'   CodBanco,'
      #9'   DescBanco,'
      #9'   WebSite'
      #9'from Banco')
    Params = <>
    Left = 737
    Top = 24
  end
  object dtsCadBanco: TDataSource
    DataSet = QryCadBanco
    Left = 673
    Top = 24
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 505
    Top = 456
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 249
    Top = 528
  end
end
