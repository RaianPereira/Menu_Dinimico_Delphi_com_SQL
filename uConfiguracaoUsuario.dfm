inherited frmConfiguracao: TfrmConfiguracao
  Caption = 'Configura'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    inherited lblTitulo: TLabel
      Width = 80
      Caption = 'Configura'#231#245'es'
      ExplicitWidth = 80
    end
  end
  inherited pnlFormPrincipal: TPanel
    inherited pnlFormPrincipalTop: TPanel
      inherited btnModificar: TBitBtn
        OnClick = btnModificarClick
      end
      inherited btnApagar: TBitBtn
        OnClick = btnApagarClick
      end
    end
    inherited pnlFormPrincipalBottom: TPanel
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited grdListagem: TDBGrid
      OnDblClick = btnModificarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'usuarioId'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeUsuario'
          Width = 563
          Visible = True
        end>
    end
  end
  inherited QryListagem: TZQuery
    SortedFields = 'nomeUsuario'
    SQL.Strings = (
      'select usuarioId,'
      #9'   nomeUsuario,'
      #9'   senha'
      'from Usuario')
    IndexFieldNames = 'nomeUsuario Asc'
    object QryListagemusuarioId: TIntegerField
      DisplayLabel = '#ID'
      FieldName = 'usuarioId'
      ReadOnly = True
    end
    object QryListagemnomeUsuario: TWideStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldName = 'nomeUsuario'
      Required = True
      Size = 30
    end
    object QryListagemsenha: TWideStringField
      FieldName = 'senha'
      Required = True
      Size = 30
    end
  end
end
