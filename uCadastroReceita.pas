unit uCadastroReceita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum, uCadastroDasReceitas;

type
  TfrmCadastroReceita = class(TfrmHerancaListagem)
    QryListagemreceitaId: TIntegerField;
    QryListagemtipoReceita: TWideStringField;
    QryListagemdetalhamento: TWideStringField;
    QryListagemvalorReceita: TFloatField;
    QryListagemfonte: TWideStringField;
    QryListagemdataReceita: TDateTimeField;
    QryListagemformaPagamento: TWideStringField;
    pnlFormPrincipalBottomTop: TPanel;
    QryReceita: TZQuery;
    dtsReceita: TDataSource;
    QryReceitaReceitas: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    imgButtonImprimir: TImageList;
    procedure btnNovoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  frmCadastroReceita: TfrmCadastroReceita;

implementation

{$R *.dfm}

uses uDtmConexao, uFuncoes, uRelCadReceita;

procedure TfrmCadastroReceita.AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
begin
  try
    frmCadastroDasReceitas := TfrmCadastroDasReceitas.Create(Self);
    frmCadastroDasReceitas.EstadoDoCadastro:=estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmCadastroDasReceitas.qryCadastro.ParamByName('receitaId').AsInteger:=-1;
        frmCadastroDasReceitas.qryCadastro.Open;
        frmCadastroDasReceitas.qryCadastro.Append;
      end;
      ecModificar: begin
        frmCadastroDasReceitas.qryCadastro.ParamByName('receitaId').AsInteger:=QryListagemreceitaId.AsInteger;
        frmCadastroDasReceitas.qryCadastro.Open;
        frmCadastroDasReceitas.qryCadastro.Edit;
      end;
      ecApagar: begin
        frmCadastroDasReceitas.qryCadastro.ParamByName('receitaId').AsInteger:=QryListagemreceitaId.AsInteger;
        frmCadastroDasReceitas.qryCadastro.Open;
        frmCadastroDasReceitas.HabilitaDesabilitaTela(false);
      end;
    end;
    frmCadastroDasReceitas.ShowModal;
  finally
    QryReceita.Refresh;
    frmCadastroDasReceitas.Release;
    Self.RefreshQuery(qryListagem);
  end;
end;

procedure TfrmCadastroReceita.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frmCadReceita := TfrmCadReceita.Create(Self);
  frmCadReceita.QryCadReceita.Close;
  frmCadReceita.QryTotalReceita.Close;

  frmCadReceita.QryCadReceita.Open;
  frmCadReceita.QryTotalReceita.Open;

  frmCadReceita.RLReport1.PreviewModal;
  frmCadReceita.Release;
end;

procedure TfrmCadastroReceita.BitBtn1MouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 1);
end;

procedure TfrmCadastroReceita.BitBtn1MouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 0);
end;

procedure TfrmCadastroReceita.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);
end;

procedure TfrmCadastroReceita.btnModificarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TfrmCadastroReceita.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;



procedure TfrmCadastroReceita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QryReceita.Close;
end;

procedure TfrmCadastroReceita.FormCreate(Sender: TObject);
begin
  inherited;
  QryReceita.Open;
end;

initialization
  RegisterClass(TfrmCadastroReceita);


end.
