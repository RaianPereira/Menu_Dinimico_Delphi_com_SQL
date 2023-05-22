unit uBancoListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum;

type
  TfrmBancoListagem = class(TfrmHerancaListagem)
    QryListagemBancoId: TIntegerField;
    QryListagemCodBanco: TWideStringField;
    QryListagemDescBanco: TWideStringField;
    QryListagemWebSite: TWideStringField;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    imgButtonImprimir: TImageList;
    procedure btnNovoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn1MouseEnter(Sender: TObject);
    procedure BitBtn1MouseLeave(Sender: TObject);
  private
    procedure AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancoListagem: TfrmBancoListagem;

implementation

{$R *.dfm}

uses uBancoCadastro, uRelCadBanco, uFuncoes;

procedure TfrmBancoListagem.AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
begin
  try
    frmBancoCadastro := TfrmBancoCadastro.Create(Self);
    frmBancoCadastro.EstadoDoCadastro:=estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmBancoCadastro.qryCadastro.ParamByName('BancoId').AsInteger:=-1;
        frmBancoCadastro.qryCadastro.Open;
        frmBancoCadastro.qryCadastro.Append;
      end;
      ecModificar: begin
        frmBancoCadastro.qryCadastro.ParamByName('BancoId').AsInteger:=QryListagemBancoId.AsInteger;
        frmBancoCadastro.qryCadastro.Open;
        frmBancoCadastro.qryCadastro.Edit;
      end;
      ecApagar: begin
        frmBancoCadastro.qryCadastro.ParamByName('BancoId').AsInteger:=QryListagemBancoId.AsInteger;
        frmBancoCadastro.qryCadastro.Open;
        frmBancoCadastro.HabilitaDesabilitaTela(false);
      end;
    end;
    frmBancoCadastro.ShowModal;
  finally
    frmBancoCadastro.Release;
    Self.RefreshQuery(qryListagem);
  end;
end;

procedure TfrmBancoListagem.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frmRelCadBanco := TfrmRelCadBanco.Create(Self);
  frmRelCadBanco.QryCadBanco.Close;
  frmRelCadBanco.QryCadBanco.Open;

  frmRelCadBanco.RLReport1.PreviewModal;
  frmRelCadBanco.Release;
end;

procedure TfrmBancoListagem.BitBtn1MouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 1);
end;

procedure TfrmBancoListagem.BitBtn1MouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 0);
end;

procedure TfrmBancoListagem.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);
end;

procedure TfrmBancoListagem.btnModificarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TfrmBancoListagem.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;

initialization
  RegisterClass(TfrmBancoListagem);
end.
