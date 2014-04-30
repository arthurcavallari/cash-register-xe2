unit frmSearchOnHoldUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid, db;

type
  TfrmSearchOnHoldDialog = class(TForm)
    btnSearch: TSpeedButton;
    btnSelect: TSpeedButton;
    btnCancel: TSpeedButton;
    grdProducts: TwwDBGrid;
    edtSearch: TEdit;
    grpSearchCriteria: TGroupBox;
    btnTransactionNo: TSpeedButton;
    btnDate: TSpeedButton;
    btnCustCode: TSpeedButton;
    btnMainFields: TSpeedButton;
    btnAllStaff: TSpeedButton;
    procedure edtSearchDblClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure grdProductsDblClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAllStaffClick(Sender: TObject);
    procedure grpSearchCriteriaClick(Sender: TObject);
    procedure grdProductsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    result : string;
  end;

var
  frmSearchOnHoldDialog: TfrmSearchOnHoldDialog;

implementation

uses CashRegisterUtils, dmtillunit;

{$R *.dfm}

procedure TfrmSearchOnHoldDialog.btnAllStaffClick(Sender: TObject);
begin
    if (btnAllStaff.Caption = 'All Staff') then
    begin
        btnAllStaff.Caption := 'Only Me';
    end
    else
    begin
        btnAllStaff.Caption := 'All Staff';
    end;
    btnSearch.Click;
end;

procedure TfrmSearchOnHoldDialog.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmSearchOnHoldDialog.btnSearchClick(Sender: TObject);
var
    sqlText, sqlWhere, staffCodeFilter : string;
begin
    if btnAllStaff.Caption = 'All Staff' then
    begin
        staffCodeFilter := '';
    end
    else
    begin
        staffCodeFilter := ' and staffcode=:userId ';
    end;
    if edtSearch.Text = '' then
    begin
        tilldm.qryTransactionsOnHold.Close;
        sqlText :=
' select'+
'      t.*,'+
'      SUBSTRING_INDEX(GROUP_CONCAT(distinct p.Name order by ts.TransactionStockId SEPARATOR '',   ''),'',   '',5) as Summary,'+
//'      GROUP_CONCAT(distinct p.Name order by ts.TransactionStockId SEPARATOR '',   '') as SummaryLong,'+
'      (select'+
'            (sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_price)*quantity)'+
'             -'+
'             ifnull((select sum(ifnull(amount, 0)) as total from payments'+
'             where transactionID=t.id),0)'+
'             )'+
'             from transaction_stock'+
'             where transaction_stock.Transaction_ID=t.id'+
'       and transaction_stock.Returned <> ''Y'') as TotalDue'+
' from transactions t'+
' left join transaction_stock ts on t.id=ts.Transaction_Id'+
' left join products p on ts.CODE=p.CODE'+
' where IsOnHold=''Y'''+
  staffCodeFilter +
' group by ts.transaction_id'+
' order by t.id desc';

        tilldm.qryTransactionsOnHold.SQL.Text := sqlText;
        tilldm.qryTransactionsOnHold.Open;
    end
    else
    begin
    {
    0 - Order No.
    1 - Date
    2 - Staff Code
    3 - Customer Code
    4 - Search Main Fields
    }
        case grpSearchCriteria.Tag of
        0:  // Order No.
            sqlWhere := ' t.id like ' + QuotedStr('%'+edtSearch.Text+'%');
        1:  // Date
            sqlWhere := ' t.datecreated like ' + QuotedStr('%'+edtSearch.Text+'%');
        2:  // Customer Code
            sqlWhere := ' t.custcode like ' + QuotedStr('%'+edtSearch.Text+'%');
        3:  // Search Main Fields (All)
            sqlWhere := ' (concat_ws(" ", t.id, t.datecreated, t.custcode, GROUP_CONCAT(distinct p.Name order by ts.TransactionStockId SEPARATOR '' ''))) LIKE ' + QuotedStr('%'+edtSearch.Text+'%');
        else
        // derp?
            ShowDisplayDialog('ERROR',
                              'rgSearchCriteria.ItemIndex = ' + IntToStr(grpSearchCriteria.Tag) + sLineBreak + 'Please contact the administrator!',
                              mbOkOnly,false,True);
            Abort;
        end;

        tilldm.qryTransactionsOnHold.Close;
        sqlText :=
' select'+
'      t.*,'+
'      SUBSTRING_INDEX(GROUP_CONCAT(distinct p.Name order by ts.TransactionStockId SEPARATOR '',   ''),'',   '',5) as Summary,'+
//'      GROUP_CONCAT(distinct p.Name order by ts.TransactionStockId SEPARATOR '',   '') as SummaryLong,'+
'      (select'+
'            (sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_price)*quantity)'+
'             -'+
'             ifnull((select sum(ifnull(amount, 0)) as total from payments'+
'             where transactionID=t.id),0)'+
'             )'+
'             from transaction_stock'+
'             where transaction_stock.Transaction_ID=t.id'+
'       and transaction_stock.Returned <> ''Y'') as TotalDue'+
' from transactions t'+
' left join transaction_stock ts on t.id=ts.Transaction_Id'+
' left join products p on ts.CODE=p.CODE'+
' where IsOnHold=''Y'''+
  staffCodeFilter +
' group by ts.transaction_id'+
' having ' + sqlWhere +
' order by t.id desc';

        tilldm.qryTransactionsOnHold.SQL.Text := sqlText;
        tilldm.qryTransactionsOnHold.Open;
    end;

end;

procedure TfrmSearchOnHoldDialog.btnSelectClick(Sender: TObject);
begin
    if (tilldm.qryTransactionsOnHold.IsEmpty) or (tilldm.qryTransactionsOnHoldid.AsString = '') then
    begin
        result := '';
        ModalResult := mrCancel;
    end
    else
    begin
        result := tilldm.qryTransactionsOnHoldid.AsString;
        ModalResult := mrOk;
    end;
end;

procedure TfrmSearchOnHoldDialog.edtSearchDblClick(Sender: TObject);
begin
    edtSearch.Text := ShowKeyboardDialog('Enter search criteria', edtSearch.Text);
    btnSearch.Click;
end;

procedure TfrmSearchOnHoldDialog.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then btnSearchClick(Sender);
end;

procedure TfrmSearchOnHoldDialog.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #$1B then btnCancelClick(Sender);
end;

procedure TfrmSearchOnHoldDialog.grdProductsDblClick(Sender: TObject);
begin
    btnSelectClick(Sender);
end;

procedure TfrmSearchOnHoldDialog.grdProductsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    btnSelectClick(Sender);
end;

procedure TfrmSearchOnHoldDialog.grpSearchCriteriaClick(Sender: TObject);
begin
    grpSearchCriteria.Tag := (Sender as TSpeedButton).Tag;
end;

end.
