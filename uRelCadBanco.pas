unit uRelCadBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLXLSFilter, RLFilters, RLPDFFilter;

type
  TfrmRelCadBanco = class(TForm)
    RLReport1: TRLReport;
    QryCadBanco: TZQuery;
    dtsCadBanco: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel7: TRLLabel;
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
  frmRelCadBanco: TfrmRelCadBanco;

implementation

{$R *.dfm}

uses uDtmConexao;

procedure TfrmRelCadBanco.FormCreate(Sender: TObject);
begin
  QryCadBanco.Open;
end;

procedure TfrmRelCadBanco.FormDestroy(Sender: TObject);
begin
  QryCadBanco.Destroy;
end;

end.
