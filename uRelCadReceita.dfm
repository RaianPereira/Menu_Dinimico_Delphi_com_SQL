object frmCadReceita: TfrmCadReceita
  Left = 0
  Top = 0
  Caption = 'Cadastro de Receitas'
  ClientHeight = 793
  ClientWidth = 791
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
    Left = -3
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsCadReceita
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 52
      BandType = btHeader
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
      Height = 35
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
      object RLLabel4: TRLLabel
        Left = 58
        Top = 6
        Width = 130
        Height = 25
        Caption = 'Detalhamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 333
        Top = 6
        Width = 121
        Height = 25
        Caption = 'Valor Receita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 470
        Top = 6
        Width = 56
        Height = 25
        Caption = 'Fonte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 542
        Top = 6
        Width = 169
        Height = 25
        Caption = 'Forma Pagamento'
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
      Top = 125
      Width = 718
      Height = 44
      object RLDBText1: TRLDBText
        Left = 17
        Top = 14
        Width = 15
        Height = 21
        DataField = 'receitaId'
        DataSource = dtsCadReceita
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 58
        Top = 14
        Width = 28
        Height = 21
        DataField = 'detalhamento'
        DataSource = dtsCadReceita
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 350
        Top = 14
        Width = 25
        Height = 21
        DataField = 'valorReceita'
        DataSource = dtsCadReceita
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 485
        Top = 14
        Width = 25
        Height = 21
        Alignment = taCenter
        DataField = 'fonte'
        DataSource = dtsCadReceita
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 584
        Top = 14
        Width = 89
        Height = 21
        Alignment = taCenter
        DataField = 'formaPagamento'
        DataSource = dtsCadReceita
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
      Top = 169
      Width = 718
      Height = 34
      BandType = btSummary
      Color = 12713637
      ParentColor = False
      Transparent = False
      object RLDBText6: TRLDBText
        Left = 598
        Top = 7
        Width = 67
        Height = 21
        Alignment = taCenter
        DataField = 'Receitas'
        DataSource = dtsTotalDespesa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 20
        Top = 7
        Width = 175
        Height = 21
        Caption = 'Valor Total da Receita:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 203
      Width = 718
      Height = 46
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
      object RLLabel8: TRLLabel
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
      object RLLabel9: TRLLabel
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
  object QryCadReceita: TZQuery
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      'select receitaId,'
      #9'   tipoReceita,'
      #9'   detalhamento,'
      #9'   valorReceita,'
      #9'   fonte,'
      #9'   formaPagamento,'
      #9'   dataReceita'
      'from Receita')
    Params = <>
    Left = 565
    Top = 728
    object QryCadReceitareceitaId: TIntegerField
      FieldName = 'receitaId'
      ReadOnly = True
    end
    object QryCadReceitatipoReceita: TWideStringField
      FieldName = 'tipoReceita'
      Required = True
      Size = 30
    end
    object QryCadReceitadetalhamento: TWideStringField
      FieldName = 'detalhamento'
      Required = True
      Size = 60
    end
    object QryCadReceitavalorReceita: TFloatField
      FieldName = 'valorReceita'
      DisplayFormat = #39'R$'#39'#,##0.00'
    end
    object QryCadReceitafonte: TWideStringField
      FieldName = 'fonte'
      Required = True
      Size = 30
    end
    object QryCadReceitaformaPagamento: TWideStringField
      FieldName = 'formaPagamento'
      Required = True
      Size = 50
    end
    object QryCadReceitadataReceita: TDateTimeField
      FieldName = 'dataReceita'
    end
  end
  object dtsCadReceita: TDataSource
    DataSet = QryCadReceita
    Left = 661
    Top = 728
  end
  object QryTotalReceita: TZQuery
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      'select sum(valorReceita) as Receitas from Receita')
    Params = <>
    Left = 533
    Top = 392
    object QryTotalReceitaReceitas: TFloatField
      FieldName = 'Receitas'
      ReadOnly = True
      DisplayFormat = #39'R$'#39'#,##0.00'
    end
  end
  object dtsTotalDespesa: TDataSource
    DataSet = QryTotalReceita
    Left = 637
    Top = 408
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 517
    Top = 480
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 629
    Top = 488
  end
end
