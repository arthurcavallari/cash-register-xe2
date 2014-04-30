unit frmAddProductUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, DB, System.Variants;

type
  TfrmAddProductDialog = class(TForm)
    edtName: TEdit;
    lblName: TLabel;
    edtCode: TEdit;
    lblCode: TLabel;
    edtPrice: TEdit;
    lblPrice: TLabel;
    lblDescription: TLabel;
    mmoShortDescription: TMemo;
    lblSupplier: TLabel;
    edtSupplier: TEdit;
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    lblErrorMsg: TLabel;
    btnSelect: TSpeedButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edtNameDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure edtSupplierDblClick(Sender: TObject);
    procedure edtCodeDblClick(Sender: TObject);
    procedure edtPriceDblClick(Sender: TObject);
    procedure mmoShortDescriptionDblClick(Sender: TObject);
    procedure edtCodeExit(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
  private
    procedure resetFields;
    function checkCodeSupplierUnique() : boolean;
    function checkValidPrice() : boolean;
    { Private declarations }
  public
    { Public declarations }
    barcode, code, searchField, searchSupplier : string;
  end;

var
  frmAddProductDialog: TfrmAddProductDialog;

implementation

uses CashRegisterUtils, frmNumberInputUnit, dmtillunit, frmSearchSupplierUnit;

{$R *.dfm}

procedure TfrmAddProductDialog.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmAddProductDialog.btnOKClick(Sender: TObject);
var
    SQL : string;
begin
    // TODO: Insert product
    if (checkCodeSupplierUnique) and (checkValidPrice) then
    begin
        if (StrToFloat(StringReplace(edtPrice.Text, '$', '', [rfIgnoreCase])) > 0) then
        begin
            SQL := 'INSERT INTO products (Name, Supplier, Code, Retail_Price, Short_Description, Barcode) ' +
               ' VALUES (' + QuotedStr(edtName.Text) + ',' + QuotedStr(edtSupplier.Text) + ',' + QuotedStr(edtCode.Text) + ',' + QuotedStr(StringReplace(edtPrice.Text, '$', '', [rfIgnoreCase])) + ',' + QuotedStr(mmoShortDescription.Text) + ',' + QuotedStr(iif(searchField = 'Barcode', barcode, code)) + ')';
            tilldm.conLocalSQL.Execute(SQL);
            tilldm.qryTransactionsProductLookup.close;
            tilldm.qryTransactionsProductLookup.Open;
            searchSupplier := edtSupplier.Text;
            ModalResult := mrOk;
        end
        else
            ShowDisplayDialog('Error','Price must be greater than $0.00', mbOkOnly);
    end
    else
        ShowDisplayDialog('Error','Code is not unique!', mbOkOnly);
end;

procedure TfrmAddProductDialog.btnSelectClick(Sender: TObject);
var
    suppCode : string;
begin
    if frmSelectSupplier.ShowModal = mrOk then
    begin
        suppCode := frmSelectSupplier.supplierCode;
        if suppCode <> '' then
        begin
            edtSupplier.Text := suppCode;
        end;
    end;

end;

procedure TfrmAddProductDialog.edtCodeDblClick(Sender: TObject);
begin
    edtCode.Text := ShowKeyboardDialog('Enter product code', edtCode.Text, frmAddProductDialog.Top + edtCode.Top + edtCode.Height + 30);
end;

procedure TfrmAddProductDialog.edtCodeExit(Sender: TObject);
begin
    checkCodeSupplierUnique;
end;

procedure TfrmAddProductDialog.edtNameDblClick(Sender: TObject);
begin
    edtName.Text := ShowKeyboardDialog('Enter name', edtName.Text, frmAddProductDialog.Top + edtName.Top + edtName.Height + 30);
end;

procedure TfrmAddProductDialog.edtPriceDblClick(Sender: TObject);
begin
    frmNumberInputDialog.dialogName := 'Enter price';
    frmNumberInputDialog.initialValue := StringReplace(edtPrice.Text, '$', '', [rfIgnoreCase]);
    frmNumberInputDialog.integerOnly := false;
    frmNumberInputDialog.isCurrency := true;
    if frmNumberInputDialog.ShowModal = mrOk then
    begin
        edtPrice.Text := FormatFloat('###,###,##0.00', frmNumberInputDialog.result);
    end;
end;

procedure TfrmAddProductDialog.edtSupplierDblClick(Sender: TObject);
begin
    edtSupplier.Text := ShowKeyboardDialog('Enter supplier code', edtSupplier.Text, frmAddProductDialog.Top + edtSupplier.Top + edtSupplier.Height + 30);
end;

procedure TfrmAddProductDialog.FormActivate(Sender: TObject);
begin
    frmAddProductDialog.Top := 50;
end;

procedure TfrmAddProductDialog.FormCreate(Sender: TObject);
begin
  resetFields;
end;

procedure TfrmAddProductDialog.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #$1B then ModalResult := mrCancel;
end;

procedure TfrmAddProductDialog.FormShow(Sender: TObject);
var
    newSearchValue,searchvalue2, lastCode : string;
    newLastCodeNumber,x,y : integer;
begin
    // TODO: Attempt to find supplier from barcode
    if searchField = 'Barcode' then
    begin
        tilldm.qryProductsLookup.Close;
        if copy(barcode,1,1) = '0' then
            newSearchValue := copy(barcode, 2, 7)
        else
            newSearchValue := copy(barcode, 1, 6);

        // find supplier by barcode section (first 5/6 digits)
        tilldm.qryProductsLookup.SQL.Text := 'select * from products where barcode like ' + QuotedStr(newSearchValue + '%');
        tilldm.qryProductsLookup.Open;


        if tilldm.qryProductsLookup.locate(searchField, newSearchValue, [loCaseInsensitive, loPartialKey]) then
        begin
            edtSupplier.Text := tilldm.qryProductsLookupSupplier.AsString;
        end
        else
        begin
            edtSupplier.Text := 'UNKNOWN';
        end;
            x:= 1;
            repeat
            begin
              y:= 0;
              if x = 1 then

              repeat
              begin

            searchvalue2 := copy(barcode,1,length(barcode)-x)+inttostr(y)+'%';
               tilldm.qryproductslookup.Close;
                    tilldm.qryproductslookup.SQL.Text := 'select * from products where barcode like ' + QuotedStr(SearchValue2);
                    tilldm.qryproductslookup.Open;
              inc(y);
           end;
            until (tilldm.qryProductsLookupCode.asstring <> '') or (Y > 9);
               Inc(x);
                end;
               until (tilldm.qryProductsLookupCode.asstring <> '') or (x > 6);
        if (tilldm.qryProductsLookupCode.asstring = '') then
        begin
        tilldm.qryLastUndefinedCode.Close;
        tilldm.qryLastUndefinedCode.Open;
        lastCode := tilldm.qryLastUndefinedCodeCode.AsString;

        if lastCode = '' then
        begin
            edtCode.Text := 'UNDF1';
        end
        else
        begin
            newLastCodeNumber := StrToIntDef(StringReplace(lastCode, 'UNDF', '', [rfIgnoreCase]), 1);
            newLastCodeNumber := newLastCodeNumber + 1;
            edtCode.Text := 'UNDF' + IntToStr(newLastCodeNumber);
        end;

       edtName.Clear;
    mmoShortDescription.Clear;
    edtPrice.Clear;

    end
    else
    begin
        edtSupplier.Text := tilldm.qryProductsLookupSupplier.asstring;
        edtCode.Text := tilldm.qryProductsLookupCode.asstring;
        edtname.Text := tilldm.qryProductsLookupname.asstring;
        edtprice.Text := tilldm.qryProductsLookupretail_price.asstring;

    end;

    end;


    mmoShortDescription.Clear;



end;

procedure TfrmAddProductDialog.mmoShortDescriptionDblClick(Sender: TObject);
begin
    mmoShortDescription.Text := ShowKeyboardDialog('Enter short description', mmoShortDescription.Text, frmAddProductDialog.Top + mmoShortDescription.Top + mmoShortDescription.Height + 30);
end;

procedure TfrmAddProductDialog.resetFields;
begin
  edtName.Clear;
  edtSupplier.Clear;
  edtCode.Clear;
  edtPrice.Clear;
  mmoShortDescription.Clear;
end;

function TfrmAddProductDialog.checkCodeSupplierUnique() : boolean;
begin
    tilldm.qryProductsLookup.Close;
    tilldm.qryProductsLookup.SQL.Text := 'select * from products where code = ' + QuotedStr(edtCode.Text) + ' and supplier = ' + QuotedStr(edtSupplier.Text);
    tilldm.qryProductsLookup.Open;
    if tilldm.qryProductsLookup.Locate('Code;Supplier;', vararrayof([edtCode.Text, edtSupplier.Text]), [loCaseInsensitive]) then
    begin
        // Code/Supplier pair already exists
        lblErrorMsg.Visible := true;
    end
    else
    begin
        lblErrorMsg.Visible := false;
    end;
    result := not lblErrorMsg.Visible;
end;

function TfrmAddProductDialog.checkValidPrice() : boolean;
begin
    result := (edtPrice.Text <> '');
end;

end.
