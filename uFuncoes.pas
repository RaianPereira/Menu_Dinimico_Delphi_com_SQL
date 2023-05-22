unit uFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, Vcl.DBCtrls, Vcl.ComCtrls;

  procedure CriarAba(aForm: TFormClass; aPageControl: TPageControl; aIndexImagem: Integer);
  function AbaExiste(aNomeAba: String; aPageControl: TPageControl): Boolean;
  procedure FecharAba(aNomeAba: String; aPageControl: TPageControl);
  procedure ButtonMouseEnter(Sender: TObject; ImageIndex:Integer);
  procedure ButtonMouseLeave(Sender: TObject; ImageIndex:Integer);

implementation

procedure CriarAba(aForm: TFormClass; aPageControl: TPageControl; aIndexImagem: Integer);
var TabSheet : TTabSheet;
    Form: TForm;
begin
  Form := aForm.Create(nil);

  if AbaExiste(Form.Caption, aPageControl) then
  begin
    if Assigned(Form) then
       FreeAndNil(Form);
    exit;
  end;

  TabSheet := TTabSheet.Create(nil);
  TabSheet.PageControl := aPageControl;
  TabSheet.Caption := Form.Caption;
  TabSheet.ImageIndex := aIndexImagem;

  Form.Align := alClient;
  Form.BorderStyle := bsNone;
  Form.Parent := TabSheet;
  Form.Show;

  aPageControl.ActivePage := TabSheet;

end;

function AbaExiste(aNomeAba: String; aPageControl: TPageControl): Boolean;
var i: Integer;
    //aba: TTabSheet;
begin
  Result:=false;
  for i := 0 to aPageControl.PageCount-1 do
  begin
    if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(aNomeAba) then
    begin
      //aba := aPageControl.Pages[i];
      aPageControl.ActivePage := aPageControl.Pages[i];
      aPageControl.TabIndex := i;
      Result := true;
      Break;
    end;

  end;

end;

procedure FecharAba(aNomeAba: String; aPageControl: TPageControl);
var i: Integer;
    //aba: TTabSheet;
begin
  for i := 0 to aPageControl.PageCount-1 do
  begin
    if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(aNomeAba) then
    begin
      //aba := aPageControl.Pages[i];
      aPageControl.Pages[i].Destroy;
      aPageControl.ActivePageIndex := 0;
      Break;
    end;

  end;

end;

procedure ButtonMouseEnter(Sender: TObject; ImageIndex:Integer);
begin
  (Sender as TBitBtn).ImageIndex:=ImageIndex;
  (Sender as TBitBtn).Cursor:=crHandPoint;
end;

procedure ButtonMouseLeave(Sender: TObject; ImageIndex:Integer);
begin
  (Sender as TBitBtn).ImageIndex:=ImageIndex;
  (Sender as TBitBtn).Cursor:=crDefault;
end;

end.
