unit uRelCartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  RLPDFFilter, RLFilters, RLXLSFilter;

type
  TfrmRelCartao = class(TForm)
    RLReport1: TRLReport;
    QryRelCartao: TZQuery;
    dtsRelCartao: TDataSource;
    QryRelCartaocartaoId: TIntegerField;
    QryRelCartaodescricaoCartao: TWideStringField;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCartao: TfrmRelCartao;

implementation

{$R *.dfm}

uses uDtmConexao;

procedure TfrmRelCartao.FormCreate(Sender: TObject);
begin
  QryRelCartao.Open;
end;

procedure TfrmRelCartao.FormDestroy(Sender: TObject);
begin
  QryRelCartao.Destroy;
end;

end.
