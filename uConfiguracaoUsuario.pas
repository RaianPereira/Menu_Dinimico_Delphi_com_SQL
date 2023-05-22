unit uConfiguracaoUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum;

type
  TfrmConfiguracao = class(TfrmHerancaListagem)
    QryListagemusuarioId: TIntegerField;
    QryListagemnomeUsuario: TWideStringField;
    QryListagemsenha: TWideStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
  public
    { Public declarations }
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

uses uUsuarioCadastro;

{$R *.dfm}

{ TfrmConfiguracaoUsuario }

procedure TfrmConfiguracao.AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
begin
  try
    frmUsuario := TfrmUsuario.Create(Self);
    frmUsuario.EstadoDoCadastro:=estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmUsuario.qryCadastro.ParamByName('usuarioId').AsInteger:=-1;
        frmUsuario.qryCadastro.Open;
        frmUsuario.qryCadastro.Append;
      end;
      ecModificar: begin
        frmUsuario.qryCadastro.ParamByName('usuarioId').AsInteger:=QryListagemusuarioId.AsInteger;
        frmUsuario.qryCadastro.Open;
        frmUsuario.qryCadastro.Edit;
      end;
      ecApagar: begin
        frmUsuario.qryCadastro.ParamByName('usuarioId').AsInteger:=QryListagemusuarioId.AsInteger;
        frmUsuario.qryCadastro.Open;
        frmUsuario.HabilitaDesabilitaTela(false);
      end;
    end;
    frmUsuario.ShowModal;
  finally
    frmUsuario.Release;
    Self.RefreshQuery(qryListagem);
end;
end;

procedure TfrmConfiguracao.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);
end;

procedure TfrmConfiguracao.btnModificarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TfrmConfiguracao.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;

initialization
  RegisterClass(TfrmConfiguracao);

end.
