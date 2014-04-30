unit frmSelectProductUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmSelectProductDialog = class(TForm)
    btnSelect: TSpeedButton;
    btnCancel: TSpeedButton;
    grdTransactionProducts: TwwDBGrid;
    lblOtherReason: TLabel;
    procedure btnSelectClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectProductDialog: TfrmSelectProductDialog;

implementation

{$R *.dfm}

procedure TfrmSelectProductDialog.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmSelectProductDialog.btnSelectClick(Sender: TObject);
begin
    ModalResult := mrOk;
end;

end.
