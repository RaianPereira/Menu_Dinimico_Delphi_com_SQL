inherited frmCadastroDespesas: TfrmCadastroDespesas
  Caption = 'frmCadastroDespesas'
  ClientHeight = 537
  ClientWidth = 568
  ExplicitWidth = 568
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    Width = 568
    inherited imgBtnClose: TImage
      Left = 545
    end
    inherited lblTitulo: TLabel
      Width = 119
      Caption = 'Cadastro de Depesas'
      ExplicitWidth = 119
    end
    inherited pnlHeaderLineTop: TPanel
      Width = 568
    end
    inherited pnlHeaderLineRight: TPanel
      Left = 566
    end
    inherited pnlHeaderLineGray: TPanel
      Width = 519
    end
  end
  inherited pnlFormLineLeft: TPanel
    Height = 503
  end
  inherited pnlFormLineRight: TPanel
    Left = 566
    Height = 503
  end
  inherited pnlFormLineBottom: TPanel
    Top = 535
    Width = 568
  end
  inherited pnlPrincipal: TPanel
    Width = 564
    Height = 503
    ExplicitLeft = -4
    ExplicitTop = 35
    object Label1: TLabel [0]
      Left = 20
      Top = 24
      Width = 19
      Height = 13
      Caption = '#ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 20
      Top = 88
      Width = 66
      Height = 13
      Caption = 'Tipo de Gasto'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [2]
      Left = 20
      Top = 150
      Width = 67
      Height = 13
      Caption = 'Detalhamento'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [3]
      Left = 20
      Top = 205
      Width = 55
      Height = 13
      Caption = 'Valor Gasto'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [4]
      Left = 20
      Top = 266
      Width = 28
      Height = 13
      Caption = 'Fonte'
      FocusControl = DBEdit5
    end
    object Label6: TLabel [5]
      Left = 20
      Top = 408
      Width = 82
      Height = 13
      Caption = 'Data da Despesa'
      FocusControl = DBEdit6
    end
    object Label7: TLabel [6]
      Left = 19
      Top = 340
      Width = 102
      Height = 13
      Caption = 'Forma de Pagamento'
      FocusControl = DBEdit7
    end
    inherited pnlPrincipalBottom: TPanel
      Top = 461
      Width = 564
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 40
      Width = 134
      Height = 21
      DataField = 'dispesaId'
      DataSource = dtsCadastro
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 20
      Top = 104
      Width = 525
      Height = 21
      DataField = 'tipoGasto'
      DataSource = dtsCadastro
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 20
      Top = 165
      Width = 525
      Height = 21
      DataField = 'detalhamento'
      DataSource = dtsCadastro
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 20
      Top = 221
      Width = 134
      Height = 21
      DataField = 'valorGasto'
      DataSource = dtsCadastro
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 19
      Top = 284
      Width = 526
      Height = 21
      DataField = 'fonte'
      DataSource = dtsCadastro
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 20
      Top = 424
      Width = 238
      Height = 21
      DataField = 'dataDespesa'
      DataSource = dtsCadastro
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 19
      Top = 356
      Width = 525
      Height = 21
      DataField = 'formaPagamento'
      DataSource = dtsCadastro
      TabOrder = 6
    end
  end
  inherited imhButtons: TImageList
    Left = 344
    Top = 56
  end
  inherited QryCadastro: TZQuery
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      'select dispesaId,'
      #9'   tipoGasto,'
      #9'   detalhamento,'
      #9'   valorGasto,'
      #9'   fonte,'
      #9'   dataDespesa,'
      '       formaPagamento'
      'from Despesas'
      'where dispesaId=:dispesaId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dispesaId'
        ParamType = ptUnknown
      end>
    Left = 394
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dispesaId'
        ParamType = ptUnknown
      end>
    object QryCadastrodispesaId: TIntegerField
      DisplayLabel = '#ID'
      FieldName = 'dispesaId'
      ReadOnly = True
    end
    object QryCadastrotipoGasto: TWideStringField
      DisplayLabel = 'Tipo de Gasto'
      FieldName = 'tipoGasto'
      Required = True
      Size = 30
    end
    object QryCadastrodetalhamento: TWideStringField
      DisplayLabel = 'Detalhamento'
      FieldName = 'detalhamento'
      Required = True
      Size = 60
    end
    object QryCadastrovalorGasto: TFloatField
      DisplayLabel = 'Valor Gasto'
      FieldName = 'valorGasto'
      DisplayFormat = #39'R$'#39'#,##0.00'
    end
    object QryCadastrofonte: TWideStringField
      DisplayLabel = 'Fonte'
      FieldName = 'fonte'
      Required = True
      Size = 30
    end
    object QryCadastrodataDespesa: TDateTimeField
      DisplayLabel = 'Data da Despesa'
      FieldName = 'dataDespesa'
    end
    object QryCadastroformaPagamento: TWideStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'formaPagamento'
      Required = True
      Size = 50
    end
  end
  inherited updCadastro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Despesas'
      'WHERE'
      
        '  ((Despesas.dispesaId IS NULL AND :OLD_dispesaId IS NULL) OR (D' +
        'espesas.dispesaId = :OLD_dispesaId))')
    InsertSQL.Strings = (
      'INSERT INTO Despesas'
      
        '  (tipoGasto, detalhamento, valorGasto, fonte, dataDespesa, form' +
        'aPagamento)'
      'VALUES'
      
        '  (:tipoGasto, :detalhamento, :valorGasto, :fonte, :dataDespesa,' +
        ' :formaPagamento)')
    ModifySQL.Strings = (
      'UPDATE Despesas SET'
      '  tipoGasto = :tipoGasto,'
      '  detalhamento = :detalhamento,'
      '  valorGasto = :valorGasto,'
      '  fonte = :fonte,'
      '  dataDespesa = :dataDespesa,'
      '  formaPagamento = :formaPagamento'
      'WHERE'
      
        '  ((Despesas.dispesaId IS NULL AND :OLD_dispesaId IS NULL) OR (D' +
        'espesas.dispesaId = :OLD_dispesaId))')
    Left = 194
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipoGasto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'detalhamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valorGasto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fonte'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataDespesa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'formaPagamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_dispesaId'
        ParamType = ptUnknown
      end>
  end
  inherited dtsCadastro: TDataSource
    Left = 282
    Top = 48
  end
end
