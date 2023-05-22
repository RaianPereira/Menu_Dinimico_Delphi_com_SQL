unit uRelCadDespesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLXLSFilter, RLFilters, RLPDFFilter;

type
  TfrmRelCadDespesa = class(TForm)
    RLReport1: TRLReport;
    QryCadRelDespesa: TZQuery;
    dtsCadRelDespesa: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    QryCadRelDespesadispesaId: TIntegerField;
    QryCadRelDespesatipoGasto: TWideStringField;
    QryCadRelDespesadetalhamento: TWideStringField;
    QryCadRelDespesavalorGasto: TFloatField;
    QryCadRelDespesafonte: TWideStringField;
    QryCadRelDespesadataDespesa: TDateTimeField;
    QryCadRelDespesaformaPagamento: TWideStringField;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand4: TRLBand;
    RLDBText6: TRLDBText;
    RLLabel3: TRLLabel;
    QryTotalDespesa: TZQuery;
    dtsTotalDespesa: TDataSource;
    QryTotalDespesaGastos: TFloatField;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadDespesa: TfrmRelCadDespesa;

implementation

{$R *.dfm}

uses uDtmConexao;

procedure TfrmRelCadDespesa.FormCreate(Sender: TObject);
begin
  QryCadRelDespesa.Open;
  QryTotalDespesa.Open;
end;

procedure TfrmRelCadDespesa.FormDestroy(Sender: TObject);
begin
  QryCadRelDespesa.Destroy;
  QryTotalDespesa.Destroy;
end;

end.
