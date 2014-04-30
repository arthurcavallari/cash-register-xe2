unit frmSearchSupplierUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid, DB;

type
  TfrmSelectSupplier = class(TForm)
    edtSearchDistributor: TLabeledEdit;
    grdTransactionProducts: TwwDBGrid;
    btnSearch: TSpeedButton;
    btnSelect: TSpeedButton;
    btnCancel: TSpeedButton;
    procedure grdTransactionProductsDblClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchDistributorClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    supplierCode : string;
  end;

var
  frmSelectSupplier: TfrmSelectSupplier;

implementation

uses dmtillunit, CashRegisterUtils;

{$R *.dfm}

procedure TfrmSelectSupplier.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrOk;
end;

procedure TfrmSelectSupplier.btnSearchClick(Sender: TObject);
begin
    tilldm.qryDistributors.Close;
    if edtSearchDistributor.Text <> '' then
    begin
        tilldm.qryDistributors.SQL.Text := 'select * from supplier where (Code like "%' + edtSearchDistributor.Text + '%") or (Name like "%' + edtSearchDistributor.Text + '%") order by code';
    end
    else
    begin
        tilldm.qryDistributors.SQL.Text := 'select * from supplier order by code';
    end;
    tilldm.qryDistributors.Open;


    if tilldm.qryDistributors.Locate('Code;', edtSearchDistributor.Text, [loCaseInsensitive, loPartialKey])
    or tilldm.qryDistributors.Locate('Name;', edtSearchDistributor.Text, [loCaseInsensitive, loPartialKey]) then
    begin
        supplierCode := tilldm.qryDistributorsCode.AsString;
    end;
end;

procedure TfrmSelectSupplier.btnSelectClick(Sender: TObject);
begin
    supplierCode := tilldm.qryDistributorsCode.AsString;
    ModalResult := mrOk;
end;

procedure TfrmSelectSupplier.edtSearchDistributorClick(Sender: TObject);
begin
    edtSearchDistributor.Text := ShowKeyboardDialog('Enter search criteria', edtSearchDistributor.Text);
    btnSearch.Click;
end;

procedure TfrmSelectSupplier.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #$1B then btnCancelClick(Sender);
end;

procedure TfrmSelectSupplier.FormShow(Sender: TObject);
begin
    supplierCode := '';
end;

procedure TfrmSelectSupplier.grdTransactionProductsDblClick(Sender: TObject);
begin
    btnSelectClick(Sender);
end;

end.
