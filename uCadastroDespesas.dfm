inherited frmCadastroDespesas: TfrmCadastroDespesas
  Caption = 'Cadastro de Despesas'
  ClientHeight = 520
  ClientWidth = 868
  ExplicitWidth = 868
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    Width = 868
    ExplicitWidth = 868
    inherited imgBtnClose: TImage
      Left = 845
      ExplicitLeft = 845
    end
    inherited lblTitulo: TLabel
      Width = 54
      Caption = 'Despesas'
      ExplicitWidth = 54
    end
    inherited pnlHeaderLineTop: TPanel
      Width = 868
      ExplicitWidth = 868
    end
    inherited pnlHeaderLineLeft: TPanel
      ExplicitLeft = 0
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    inherited pnlHeaderLineRight: TPanel
      Left = 866
      ExplicitLeft = 866
      ExplicitHeight = 30
    end
    inherited pnlHeaderLineGray: TPanel
      Width = 819
      ExplicitWidth = 819
    end
  end
  inherited pnlFormLineLeft: TPanel
    Height = 486
    ExplicitLeft = 0
    ExplicitTop = 32
    ExplicitHeight = 486
  end
  inherited pnlFormLineRight: TPanel
    Left = 866
    Height = 486
    ExplicitLeft = 866
    ExplicitTop = 32
    ExplicitHeight = 486
  end
  inherited pnlFormLineBottom: TPanel
    Top = 518
    Width = 868
    ExplicitTop = 518
    ExplicitWidth = 868
  end
  inherited pnlPrincipal: TPanel
    Width = 864
    Height = 486
    ExplicitLeft = -4
    ExplicitTop = 28
    ExplicitWidth = 864
    ExplicitHeight = 486
    inherited pnlPrincipalBottom: TPanel
      Top = 444
      Width = 864
      ExplicitTop = 444
      ExplicitWidth = 864
    end
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
      '                   formaPagamento'
      'from Despesas'
      'where dispesaId=:dispesaId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dispesaId'
        ParamType = ptUnknown
      end>
    Left = 530
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dispesaId'
        ParamType = ptUnknown
      end>
    object QryCadastrodispesaId: TIntegerField
      FieldName = 'dispesaId'
      ReadOnly = True
    end
    object QryCadastrotipoGasto: TWideStringField
      FieldName = 'tipoGasto'
      Required = True
      Size = 30
    end
    object QryCadastrodetalhamento: TWideStringField
      FieldName = 'detalhamento'
      Required = True
      Size = 60
    end
    object QryCadastrovalorGasto: TFloatField
      FieldName = 'valorGasto'
    end
    object QryCadastrofonte: TWideStringField
      FieldName = 'fonte'
      Required = True
      Size = 30
    end
    object QryCadastrodataDespesa: TDateTimeField
      FieldName = 'dataDespesa'
    end
    object QryCadastroformaPagamento: TWideStringField
      FieldName = 'formaPagamento'
      ReadOnly = True
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
    Left = 602
    Top = 168
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
    Top = 96
  end
end
