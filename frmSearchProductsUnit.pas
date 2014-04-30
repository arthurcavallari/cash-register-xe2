unit frmSearchProductsUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd,
  Wwdbgrid, Vcl.ButtonGroup, Vcl.Touch.Keyboard,System.Variants, Vcl.Mask,
  wwdbedit;

type
  TfrmSearchProductsDialog = class(TForm)
    edtSearch: TEdit;
    btnSearch: TSpeedButton;
    btnCancel: TSpeedButton;
    grpSearchCriteria: TGroupBox;
    btnSupplier: TSpeedButton;
    btnCode: TSpeedButton;
    btnName: TSpeedButton;
    btnDescription: TSpeedButton;
    btnMainFields: TSpeedButton;
    pnlKeyboardPanel: TPanel;
    btnOne: TSpeedButton;
    btnTwo: TSpeedButton;
    btnThree: TSpeedButton;
    btnFour: TSpeedButton;
    btnFive: TSpeedButton;
    btnSix: TSpeedButton;
    btnSeven: TSpeedButton;
    btnEight: TSpeedButton;
    btnNine: TSpeedButton;
    btnQ: TSpeedButton;
    btnW: TSpeedButton;
    btnE: TSpeedButton;
    btnR: TSpeedButton;
    btnT: TSpeedButton;
    btnY: TSpeedButton;
    btnU: TSpeedButton;
    btnI: TSpeedButton;
    btnO: TSpeedButton;
    btnP: TSpeedButton;
    btnA: TSpeedButton;
    btnS: TSpeedButton;
    btnD: TSpeedButton;
    btnF: TSpeedButton;
    btnG: TSpeedButton;
    btnH: TSpeedButton;
    btnJ: TSpeedButton;
    btnK: TSpeedButton;
    btnL: TSpeedButton;
    btnColon: TSpeedButton;
    btnZ: TSpeedButton;
    btnX: TSpeedButton;
    btnC: TSpeedButton;
    btnV: TSpeedButton;
    btnB: TSpeedButton;
    btnN: TSpeedButton;
    btnM: TSpeedButton;
    btnComma: TSpeedButton;
    btnDot: TSpeedButton;
    btnSlash: TSpeedButton;
    btnZero: TSpeedButton;
    btnDash: TSpeedButton;
    btnShift: TSpeedButton;
    btnSpace: TSpeedButton;
    btnClear: TSpeedButton;
    btnBackspace: TSpeedButton;
    btnMisc: TSpeedButton;
    btnSelect: TSpeedButton;
    btndotnum: TSpeedButton;
    EditCatName: TEdit;
    CatEdit: TSpeedButton;
    grpTillDrill: TFlowPanel;
    ProdCatPanel: TFlowPanel;
    addprodcat: TSpeedButton;
    MiscAdd: TSpeedButton;
    MiscEdit: TSpeedButton;
    editprodprice: TwwDBEdit;
    editprodname: TwwDBEdit;
    ChangeProd: TSpeedButton;
    EditProdSupp: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    BtnEnter: TSpeedButton;
    grpQuickProdButtons: TFlowPanel;
    prodcatlabel: TLabel;
    addallcat: TSpeedButton;
    ProdAdd: TSpeedButton;
    MasterLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure grdProductsDblClick(Sender: TObject);
    procedure edtSearchDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSearchCriteriaClick(Sender: TObject);
    procedure grdProductsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

    procedure btnAClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure btnBClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnColonClick(Sender: TObject);
    procedure btnCommaClick(Sender: TObject);
    procedure btnDashClick(Sender: TObject);
    procedure btnDClick(Sender: TObject);
    procedure btnDotClick(Sender: TObject);
    procedure btnEClick(Sender: TObject);
    procedure btnEightClick(Sender: TObject);
    procedure btnFClick(Sender: TObject);
    procedure btnFiveClick(Sender: TObject);
    procedure btnFourClick(Sender: TObject);
    procedure btnGClick(Sender: TObject);
    procedure btnHClick(Sender: TObject);
    procedure btnIClick(Sender: TObject);
    procedure btnJClick(Sender: TObject);
    procedure btnKClick(Sender: TObject);
    procedure btnLClick(Sender: TObject);
    procedure btnMClick(Sender: TObject);
    procedure btnNClick(Sender: TObject);
    procedure btnNineClick(Sender: TObject);
    procedure btnOClick(Sender: TObject);
    procedure btnOneClick(Sender: TObject);
    procedure btnPClick(Sender: TObject);
    procedure btnQClick(Sender: TObject);
    procedure btnRClick(Sender: TObject);
    procedure btnSClick(Sender: TObject);
    procedure btnSevenClick(Sender: TObject);
    procedure btnShiftClick(Sender: TObject);
    procedure btnSixClick(Sender: TObject);
    procedure btnSlashClick(Sender: TObject);
    procedure btnSpaceClick(Sender: TObject);
    procedure btnTClick(Sender: TObject);
    procedure btnThreeClick(Sender: TObject);
    procedure btnTwoClick(Sender: TObject);
    procedure btnUClick(Sender: TObject);
    procedure btnVClick(Sender: TObject);
    procedure btnWClick(Sender: TObject);
    procedure btnXClick(Sender: TObject);
    procedure btnYClick(Sender: TObject);
    procedure btnZClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure appendText(Text: string);
    procedure edtSearchChange(Sender: TObject);
 procedure drillfrommaster(master : string);
    procedure grdProductsColEnter(Sender: TObject);
    procedure EditCatNameKeyPress(Sender: TObject; var Key: Char);
    procedure CatEditClick(Sender: TObject);
    procedure refreshCatPnl(Sender: TObject);
    procedure addprodcatClick(Sender: TObject);
    procedure MiscAddClick(Sender: TObject);
    procedure MiscEditClick(Sender: TObject);
    procedure ChangeProdClick(Sender: TObject);
    procedure BtnEnterClick(Sender: TObject);
    procedure grdProductsRowChanged(Sender: TObject);
procedure updatequickproductbuttons(criteriastring : string);
    procedure addallcatClick(Sender: TObject);
    procedure ProdAddClick(Sender: TObject);
  private
      { Private declarations }
    shiftPressed : Boolean;
    procedure TillDrillClick(Sender: TObject);
    procedure quickprodbuttonClick(Sender: TObject);

  public
    { Public declarations }
    result : string; // Product Code
  end;

var
  frmSearchProductsDialog: TfrmSearchProductsDialog;
  drillx : integer;
    tilldrillcode : array of string;
    quickprodbuttoncode : array of string;
    quickprodbuttonsupplier : array of string;

    oldmaster,currentmaster : string;
    oldsupp : string;
    oldcode : string;
implementation

uses frmMainTillUnit, dmtillunit, frmDisplayUnit, CashRegisterUtils;

{$R *.dfm}

procedure TfrmSearchProductsDialog.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmSearchProductsDialog.btnSearchCriteriaClick(Sender: TObject);
begin
    grpSearchCriteria.Tag := (sender as TSpeedButton).Tag;
    if Length(edtSearch.Text) > 1 then

    btnSearch.Click;
end;

procedure TfrmSearchProductsDialog.btnSearchClick(Sender: TObject);
var
    sqlText, sqlWhere : string;
    edtsearchstring : string;
    begin
    if (edtSearch.Text = '') and (Length(edtSearch.Text)>2) then
    begin

        tilldm.qryProductsSearch.Close;
    if grpSearchCriteria.tag <> 5 then

        tilldm.qryProductsSearch.SQL.Text := 'select * from products'
    else
        tilldm.qryProductsSearch.SQL.Text := 'select * from products where misc = '+quotedstr('Y');


        tilldm.qryProductsSearch.Open;
    end
    else
    begin
    {
    0 - Supplier
    1 - Code
    2 - Name
    3 - Description
    4 - Search Main Fields
    }
        case grpSearchCriteria.Tag of
        0: // Supplier
            sqlWhere := ' Supplier like ' + QuotedStr(edtSearch.Text+'%');
        1: // Code
            sqlWhere := ' Code like ' + QuotedStr(edtSearch.Text+'%');
        2: // Name
            sqlWhere := ' Name like ' + QuotedStr('%'+edtSearch.Text+'%');
        3: // Description
            sqlWhere := ' Short_Description like ' + QuotedStr('%'+edtSearch.Text+'%');
        4: // Search Main Fields (All)
            sqlWhere := ' (concat_ws(" ", p.Supplier, p.Code, p.Name, p.Short_Description)) LIKE ' + QuotedStr('%'+edtSearch.Text+'%');
        5:  sqlWhere := ' Misc = ' + QuotedStr('Y');
        else
        // derp?
            ShowDisplayDialog('ERROR',
                              'rgSearchCriteria.ItemIndex = ' + IntToStr(grpSearchCriteria.Tag) + sLineBreak + 'Please contact the administrator!',
                              mbOkOnly,false,True);
            Abort;
        end;
        sqlText := 'select * from products p where ' + sqlWhere;
        tilldm.qryProductsSearch.Close;
        tilldm.qryProductsSearch.SQL.Text := sqlText;
        tilldm.qryProductsSearch.Open;
        updatequickproductbuttons(edtsearch.text);
    end;
end;

procedure TfrmSearchProductsDialog.btnSelectClick(Sender: TObject);
begin
    if (tilldm.qryProductsSearch.IsEmpty) or (tilldm.qryProductsSearchCode.AsString = '') then
    begin
        result := '';
        ModalResult := mrCancel;
    end
    else
    begin
        result := '/' + tilldm.qryProductsSearchSupplier.AsString+'/' + tilldm.qryProductsSearchCode.AsString;
        // Adding the '/' so addToOrder knows it's a code, not a barcode
        ModalResult := mrOk;
    end;
end;

procedure TfrmSearchProductsDialog.edtSearchChange(Sender: TObject);
begin
    if Length(edtSearch.text) > 1 then
    btnSearch.Click;
end;

procedure TfrmSearchProductsDialog.edtSearchDblClick(Sender: TObject);
begin
    Exit;
    edtSearch.Text := ShowKeyboardDialog('Enter search criteria', edtSearch.Text);

    btnSearch.Click;
end;

procedure TfrmSearchProductsDialog.edtSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then btnSearchClick(Sender)
    else if Key = #$1B then btnCancelClick(Sender);
end;
procedure TfrmSearchProductsDialog.FormActivate(Sender: TObject);

begin
  //frmSearchProductsDialog.Top := 50;
{  SetLength(tilldrillarray,10); }
oldmaster := '';
drillfrommaster('');

end;

procedure TfrmSearchProductsDialog.FormShow(Sender: TObject);
begin
    tilldm.qryProductsSearch.Close;
    tilldm.qryProductsSearch.SQL.Text := 'select * from products';
    tilldm.qryProductsSearch.Open;
end;

procedure TfrmSearchProductsDialog.grdProductsColEnter(Sender: TObject);
begin
  tilldm.qryProdCat.Active := True;
end;

procedure TfrmSearchProductsDialog.grdProductsDblClick(Sender: TObject);
begin
    btnSelectClick(Sender);
end;

procedure TfrmSearchProductsDialog.grdProductsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    edtSearch.SetFocus;
end;


procedure TfrmSearchProductsDialog.grdProductsRowChanged(Sender: TObject);
begin
  refreshCatPnl(Sender);
end;

procedure TfrmSearchProductsDialog.MiscAddClick(Sender: TObject);
var namestr : string;
    codestr : string;
    x : Integer;
begin

if currentmaster <> '' then
begin
tilldm.qryproductslookup.Close;
tilldm.qryProductsLookup.SQL.Text := 'select * from products order by code';
tilldm.qryproductslookup.open;
tilldm.qryproductslookup.First;
namestr :=  'Misc '+tilldm.qryTillCatdrillNAME.AsString;
    x := 0;
   repeat
       codestr := 'X'+Copy(currentmaster,1,4)+inttostr(x);
    inc(x);
   until (not tilldm.qryproductslookup.Locate('Code',codestr,[])) or (x > 50);

   if x > 50 then
   Exit; {we are fucked}
   tilldm.qryproductslookup.Insert;
   tilldm.qryproductslookupCode.AsString := codestr;
   tilldm.qryproductslookupsupplier.AsString := 'XXX';
   tilldm.qryproductslookupMisc.VALUE := 'Y';
    tilldm.qryproductslookupNAME.AsString := namestr;
   tilldm.qryproductslookup.POST;
    tilldm.qryProdCat.open;
          tilldm.qryProdCat.Insert;
  tilldm.qryProdCatcode.asstring :=    tilldm.qryproductslookupcode.asstring;
  tilldm.qryProdCatsupplier.asstring :=    tilldm.qryproductslookupsupplier.asstring;
  tilldm.qryProdCatCategoryCode.AsString := tilldm.qryTillCatdrillCATEGORY.AsString;
  tilldm.qryProdCat.Post;
  tilldm.qryProdCat.Close;
  tilldm.qryProdCat.Open;
  tilldm.qryProductsSearch.Close;
  tilldm.qryProductsSearch.Open;
tilldm.qryproductslookup.Close;
tilldm.qryProductsLookup.SQL.Text := 'select * from products order by supplier,code';
tilldm.qryproductslookup.open;
tilldm.qryproductslookup.First;
if   tilldm.qryproductslookup.Locate('Supplier;Code',vararrayof(['XXX',codestr]),[]) then
  tilldm.qryproductslookup.Edit;
  updatequickproductbuttons(prodcatlabel.Caption);
end;
end;

procedure TfrmSearchProductsDialog.MiscEditClick(Sender: TObject);
begin
tilldm.qryproductslookup.open;
tilldm.qryproductslookup.first;

if tilldm.qryproductslookup.locate('Supplier;Code',VarArrayOf([tilldm.qryproductssearchsupplier.asstring,tilldm.qryproductssearchcode.asstring]),[]) then
begin
    tilldm.qryProductsLookup.Edit;
    oldsupp := tilldm.qryProductsLookupSupplier.AsString;
    oldcode := tilldm.qryProductsLookupcode.AsString;


end;
end;

procedure TfrmSearchProductsDialog.ProdAddClick(Sender: TObject);
begin
if ProdAdd.Caption = 'Prod'+#13+#10+'Add'+#13+#10+'Off' then
prodAdd.Caption := 'Prod'+#13+#10+'Add'+#13+#10+'On'
else
prodAdd.Caption := 'Prod'+#13+#10+'Add'+#13+#10+'Off';

if ProdAdd.Caption = 'Prod'+#13+#10+'Add'+#13+#10+'Off' then
begin
grpQuickProdButtons.Height := 785;

end;

if ProdAdd.Caption = 'Prod'+#13+#10+'Add'+#13+#10+'On' then
grpQuickProdButtons.Height := 649;


end;

procedure TfrmSearchProductsDialog.drillfrommaster(master : string);
 var qs : string;
  x,sx,sl : Integer;
  index : Integer;
  btnitem : TspeedButton;
  bcaption,bcaption2 : string;
  captionlines : array of string[7];
  capindex : Integer;
begin
  setlength(tilldrillcode,0);
  SetLength(captionlines,3);
  drillx := 0;
  grpTillDrill.DestroyComponents;
  if master = '' then
    MasterLabel.Caption := ''
  else
    MasterLabel.Caption := master+' '+tilldm.qryTillCatdrillNAME.asstring;
  tilldm.qrytillcatdrill.close;
  tilldm.qrytillcatdrill.sql.clear;
  if (catedit.caption = 'Cat'+#13+#10+'Edit'+#13+#10+'On') then
  begin
    if master = '' then
      qs := 'select * from catcode where IsMaster = 1 order by category'
    else
      qs := 'select * from catcode where MasterCode = '+quotedstr(master)+' order by category';
    tilldm.qrytillcatdrill.sql.add(qs);
  end
  else
  begin
   if master = '' then
      qs := 'select * from catcode where IsMaster = 1 and IsTill = "Y"'
    else
      qs := 'select * from catcode where MasterCode = '+quotedstr(master)+' and IsTill = "Y"';
    tilldm.qrytillcatdrill.sql.add(qs);
  end;
  tilldm.qrytillcatdrill.Open;
  tilldm.qryTillCatdrill.First;
  repeat
    begin
    btnitem := TSpeedButton.Create(grpTillDrill);
    index := grpTillDrill.GetControlIndex(btnitem);
    grpTillDrill.SetControlIndex( btnitem, index + 1 );

    with btnitem do
    begin
      parent := grpTillDrill;
if catedit.caption = 'Cat'+#13+#10+'Edit'+#13+#10+'On' then
begin
      Width := 50;
      Height := 50;
end
else
begin
   Width := 80;
      Height := 80;
end;
      Margin:= -1;
      AllowAllUp := True;
      GroupIndex := 1;
      OnClick := TillDrillClick;
      tag := drillx;
      Font.Size := 10;

      begin
        capindex := 0;
        sx := 1;
        bcaption := tilldm.qrytillcatdrillname.asstring;
        bcaption := StringReplace(bcaption,' & ',' ',[rfreplaceall,rfignorecase]);

        bcaption := StringReplace(bcaption,',',' ',[rfreplaceall,rfignorecase]);
        bcaption := StringReplace(bcaption,'/',' ',[rfreplaceall,rfignorecase]);
        bcaption := StringReplace(bcaption,' and ',' ',[rfreplaceall,rfignorecase]);
        bcaption := StringReplace(bcaption,'   ',' ',[rfreplaceall,rfignorecase]);
        bcaption := StringReplace(bcaption,'  ',' ',[rfreplaceall,rfignorecase]);

        if (Pos(' ',bcaption) <> 0) then
          sl := Pos(' ',bcaption)
        else
          sl := Length(bcaption);

        x := pos(' ',bcaption);
        captionlines[0] := '';
        captionlines[1] := '';
        captionlines[2] := '';

        repeat
          begin
            inc(sx);
          end;
        until (sx = sl) or (sx = 7) or (bcaption[sx] = ' ');
        if  (bcaption[sx] = ' ') then
        begin
          captionlines[capindex] := Copy(bcaption,1,sx-1);
          Inc(capindex);
        end
        else
        if sl = sx then
        begin
          captionlines[capindex] := bcaption;
        end
        else
        if (sx = 7) and (sx < sl) then
          if (bcaption[sx+1] = ' ') then
          begin
            captionlines[capindex] := Copy(bcaption,1,sx);
            Inc(capindex);
            inc(sx);
          end
          else
          if sl < 14 then

          begin
            captionlines[capindex] := Copy(bcaption,1,Round(sl/2));
            Inc(capindex);
            captionlines[capindex] := Copy(bcaption,Round(sl/2)+1,sl-Round(sl/2));
            Inc(capindex);
            sx := sl;
          end
          else
          begin
            captionlines[capindex] := Copy(bcaption,1,7);
            Inc(capindex);
            captionlines[capindex] := Copy(bcaption,8,7);
            Inc(capindex);
            sx := 15;
          end;
          if capindex = 1 then
          begin
          sl := length(bcaption);
            bcaption := copy(bcaption,sx+1,sl-sx);
              sl := length(bcaption);
            if bcaption <> '' then
            begin
              sx := 0;
              if (Pos(' ',bcaption) <> 0)  then
                sl := Pos('',bcaption)
              else
                sl := Length(bcaption);
                if  pos(' ',bcaption) <> 0 then
                sl := pos(' ',bcaption);
              repeat
              begin
                inc(sx);
              end;
              until (sx = sl) or (sx = 7) or (bcaption[sx] = ' ') or  (bcaption[sx] = '/') or  (bcaption[sx] = ',');
              if  (bcaption[sx] = ' ') or  (bcaption[sx] = '/') then
              begin
                captionlines[capindex] := Copy(bcaption,1,sx-1);
                Inc(capindex);
              end
              else
              if (sx <= 7) and (sx <= sl) then
              {  if  (bcaption[sx] = ' ') or  (bcaption[sx] = '/') or (bcaption[sx] = ',') then   }
                begin
                  captionlines[capindex] := Copy(bcaption,1,sx);
                  Inc(capindex);
                  inc(sx);
                end
              else
              if sl <= 14  then
              begin
                captionlines[capindex] := Copy(bcaption,1,Round(sl/2));
                Inc(capindex);
                captionlines[capindex] := Copy(bcaption,Round(sl/2)+1,sl-Round(sl/2));
                Inc(capindex);
              end
              else
              begin
                captionlines[capindex] := Copy(bcaption,1,7);
                Inc(capindex);
                captionlines[capindex] := Copy(bcaption,8,7);
                Inc(capindex);
                sx := 15;

              end;
            end;
          end
          else
          begin
            if sl <> sx then
              captionlines[capindex] := Copy(bcaption,sx,7);
          end;
          Caption := '';
          Caption := Caption + captionlines[0];
          for x := 1 to capindex do
            if captionlines[x] <> '' then
              Caption := Caption +#13+#10+ captionlines[x];


  {bCaption := tilldm.qryTillCatdrillname.AsString;
  bcaption := TrimRight(bcaption);
  x := Pos(' ',bcaption);
  if x = 0 then
  if (Length(bcaption) >= 12) then
  bcaption2 := Copy(bcaption,1,7)+#13+#10+copy(bcaption,7+1,length(bcaption)-7)
  else
  if (Length(bcaption) < 12) and (Length(bcaption) > 7) then
  bcaption2 := Copy(bcaption,1,Round(Length(bcaption)/2))+#13+#10+copy(bcaption,Round(Length(bcaption)/2)+1,length(bcaption)-Round(Length(bcaption)/2))
  else

  bcaption2 := bcaption
  else
  if (Length(bcaption) >= 12) then
  bcaption2 := Copy(bcaption,1,7)+#13+#10+copy(bcaption,7+1,length(bcaption)-7)
  else
  bcaption2 := Copy(bcaption,1,x-1)+#13+#10+copy(bcaption,x+1,length(bcaption)-x);
  bcaption := bcaption2;
  x := Pos(' ',bcaption);
  if x <> 0 then
  begin

  bcaption2 := Copy(bcaption,1,x-1)+#13+#10+copy(bcaption,x+1,length(bcaption)-x);
  end;
  bcaption := bcaption2;
  x := Pos(' ',bcaption);
  if x <> 0 then
  begin

  bcaption2 := Copy(bcaption,1,x-1)+#13+#10+copy(bcaption,x+1,length(bcaption)-x);
  end;
  bcaption := bcaption2;
  x := Pos(' ',bcaption);
  if x <> 0 then
  begin

  bcaption2 := Copy(bcaption,1,x-1)+#13+#10+copy(bcaption,x+1,length(bcaption)-x);
  end;
  }

          if master = tilldm.qryTillCatdrillCATEGORY.AsString  then
            Caption := caption +#13+#10+'Up'
      end;
    end;

    SetLength(tilldrillcode,drillx+1);
    tilldrillcode[drillx] := tilldm.qryTillCatdrillCATEGORY.AsString;
    Inc(drillx);
    tilldm.qryTillCatdrill.Next;
    end;
  until tilldm.qryTillCatdrill.Eof;
  if catedit.caption = 'Cat'+#13+#10+'Edit'+#13+#10+'On' then
  begin
    btnitem := TSpeedButton.Create(grpTillDrill);

    index := grpTillDrill.GetControlIndex( btnitem);
    grpTillDrill.SetControlIndex( btnitem, index + 1 );

    with btnitem do
    begin
      parent := grpTillDrill;
      Width := 80;
      Height := 80;
      Margin:= -1;
      GroupIndex := 1;
      Font.Color := clBlue;
      OnClick := TillDrillClick;
      tag := drillx;
      Font.Size := 11;

      Caption := 'Add';
      SetLength(tilldrillcode,drillx+1);
      tilldrillcode[drillx] := 'Add';
    end;
  end;
  currentmaster := master;
end;


procedure TfrmSearchProductsDialog.EditCatNameKeyPress(Sender: TObject;
  var Key: Char);
   var newcatname : string;
  newcatcode : string[4];
  x : Integer;
  lx : integer;
  begiN
  key := UpCase(Key);
  if (key = #13)  then
begin
if oldmaster = '' then
begin
tilldm.qrytillcatdrill.first;
 newcatname := EditCatName.Text;
 lx := length(newcatname);
    x := 2;
   repeat
   if (newcatname[X] <> ' ') or (newcatname[X] <> ',') or (newcatname[X] <> '/')  then

    newcatcode := newcatname[1]+newcatname[X]+'A'+'A';
    inc(x);
   until (not tilldm.qryTillCatdrill.Locate('Category',newcatcode,[])) or (x > lx);
   if x > 8 then
   begin
   x := 0;
   repeat
       newcatcode := Copy(newcatname,1,1)+inttostr(x)+'A'+'A';
    inc(x);
   until (not tilldm.qryTillCatdrill.Locate('Category',newcatcode,[])) or (x > 9);
   end;
   if x > 9 then
   Exit; {we are fucked}
   tilldm.qryTillCatdrill.Insert;
   tilldm.qryTillCatdrillCATEGORY.AsString := newcatcode;
   tilldm.qryTillCatdrillmastercode.AsString := newcatcode;
   tilldm.qryTillCatdrillISMASTER.VALUE := 1;
   tilldm.qryTillCatdrillISTILL.VALUE := 'Y';
   tilldm.qryTillCatdrillNAME.AsString := newcatNAME;
   tilldm.qryTillCatdrill.POST;
   drillfrommaster('');




 end
 else
 begin
 newcatname := EditCatName.Text;
    x := 2;
   repeat
    newcatcode := Copy(oldmaster,1,2)+newcatname[1]+newcatname[x];
    inc(x);
   until (not tilldm.qryTillCatdrill.Locate('Mastercode;Category',VarArrayOf([oldmaster,newcatcode]),[])) or (x > 8);
   if x > 5 then
   begin
   x := 0;
   repeat
       newcatcode := Copy(oldmaster,1,2)+newcatname[1]+inttostr(x);
    inc(x);
   until (not tilldm.qryTillCatdrill.Locate('Mastercode;Category',VarArrayOf([oldmaster,newcatcode]),[])) or (x > 9);
   end;
   if x > 9 then
   Exit; {we are fucked}
   tilldm.qryTillCatdrill.Insert;
   tilldm.qryTillCatdrillCATEGORY.AsString := newcatcode;
   tilldm.qryTillCatdrillmastercode.AsString := oldmaster;
   tilldm.qryTillCatdrillISMASTER.VALUE := 0;
   tilldm.qryTillCatdrillISTILL.VALUE := 'Y';
   tilldm.qryTillCatdrillNAME.AsString := newcatNAME;
   tilldm.qryTillCatdrill.POST;
   drillfrommaster(oldmaster);
 end;
end;
end;

procedure TfrmSearchProductsDialog.refreshCatPnl(Sender: TObject);
var
  btnCat : TSpeedButton;
begin
  ProdCatPanel.DestroyComponents;

  if tilldm.qryProdCat.Active then
  begin
    tilldm.qryProdCat.First;
    while not tilldm.qryProdCat.Eof do
    begin
      btnCat := TSpeedButton.Create(ProdCatPanel);
      btnCat.parent := ProdCatPanel;
      btnCat.Width := 60;
      btnCat.Height := 60;
      btnCat.Margin:= -1;
      btnCat.AllowAllUp := True;
      btnCat.GroupIndex := 1;
      btnCat.Font.Size := 10;
      btnCat.Caption := tilldm.qryProdCatCategoryCode.AsString;

      //TODO: lookup category name

      tilldm.qryProdCat.Next;
    end;
  end;
end;
procedure TfrmSearchProductsDialog.quickprodbuttonclick(Sender: TObject);
var
  btnclick : tspeedbutton;
  sqlwhere : string;
  sqltext : string;
  prodcode : string;
  prodsupplier : string;
begin
btnclick := TSpeedButton(Sender);
prodcode :=     quickprodbuttoncode[btnclick.Tag];
prodsupplier := quickprodbuttonsupplier[btnclick.Tag];
tilldm.qryproductssearch.locate('Supplier;Code',VarArrayOf([prodsupplier,prodcode]),[]);
if ProdAdd.Caption =  'Prod'+#13+#10+'Add'+#13+#10+'Off' then
btnSelectClick(Sender);
{
  drillx:= TSpeedButton(Sender).tag;
  OLDMASTER := currentmaster;
  currentmaster :=  tilldrillcode[drillx];
  if currentmaster = 'Add' then
  begin
    EditCatName.Visible := true;
    EditCatName.SetFocus;
  end
  else
  begin
    tilldm.qryTillCatdrill.First;
    if tilldm.qrytillcatdrill.locate('Category',CurrentMaster,[]) then
      if (OLDMASTER <> '') and (oldmaster = tilldm.qryTillCatdrillCATEGORY.asstring) then
        drillfrommaster('')
      else
      if tilldm.qrytillcatdrillismaster.value = 1 then
        drillfrommaster(currentmaster);

    sqlwhere := '(select categorycode from ProductsCategories pc where pc.supplier = p.supplier and p.code=pc.code and pc.categorycode = '+quotedstr(currentmaster)+')';
    sqlText := 'select * from products p where exists ' + sqlWhere;
    tilldm.qryProductsSearch.Close;
    tilldm.qryProductsSearch.SQL.Text := sqlText;
    tilldm.qryProductsSearch.Open;

    tilldm.qryProductsSearch.First;
    grpQuickProdButtons.DestroyComponents;
    while not tilldm.qryProductsSearch.Eof do

      with btnclick do
      begin
        btnclick := TSpeedButton.Create(grpQuickProdButtons);
        parent := grpQuickProdButtons;
        Width := 60;
        Height := 60;
        Margin:= -1;
        AllowAllUp := True;
        GroupIndex := 1;
        Font.Size := 10;
        Caption := '$'+tilldm.qryProductsSearchRetail_Price.AsString;

        //OnClick := TillDrillClick;
          //result := '/' + tilldm.qryProductsSearchCode.AsString;

        tilldm.qryProductsSearch.Next;
      end;
  end;}

end;

procedure TfrmSearchProductsDialog.TillDrillClick(Sender: TObject);
var

  sqlwhere : string;
  sqltext : string;

  categoryname : string;
begin
  drillx:= TSpeedButton(Sender).tag;
  OLDMASTER := currentmaster;
  currentmaster :=  tilldrillcode[drillx];
  if currentmaster = 'Add' then
  begin
    EditCatName.Visible := true;
    EditCatName.SetFocus;
  end
  else
  begin
    tilldm.qryTillCatdrill.First;
    if tilldm.qrytillcatdrill.locate('Category',CurrentMaster,[]) then
      if (OLDMASTER <> '') and (oldmaster = tilldm.qryTillCatdrillCATEGORY.asstring) then
        drillfrommaster('')
      else
      if tilldm.qrytillcatdrillismaster.value = 1 then
        drillfrommaster(currentmaster);

    sqlwhere := '(select categorycode from ProductsCategories pc where pc.supplier = p.supplier and p.code=pc.code and pc.categorycode = '+quotedstr(currentmaster)+')';
    sqlText := 'select * from products p where exists ' + sqlWhere;
    tilldm.qryProductsSearch.Close;
    tilldm.qryProductsSearch.SQL.Text := sqlText;
    tilldm.qryProductsSearch.Open;
    categoryname := tilldm.qryTillCatdrillNAME.asstring;
          categoryname := TrimLeft(categoryname);
categoryname := Trimright(categoryname);

    UpdatequickProductbuttons(categoryname);

   end;
   end;
procedure TfrmSearchProductsDialog.updatequickproductbuttons(criteriastring : string);
var btnclick : tspeedbutton;
  prodindex : Integer;
  namestring : string;
begin
    tilldm.qryProductsSearch.First;
    grpQuickProdButtons.DestroyComponents;
    prodindex := 0;
    prodcatlabel.Caption :=  criteriastring;

    while not tilldm.qryProductsSearch.Eof do

      with btnclick do
      begin
        SetLength(quickprodbuttoncode,prodindex+1);
        SetLength(quickprodbuttonsupplier,prodindex+1);
        quickprodbuttoncode[prodindex] := tilldm.qryProductsSearchcode.AsString;
        quickprodbuttonsupplier[prodindex] := tilldm.qryProductsSearchsupplier.AsString;

        btnclick := TSpeedButton.Create(grpQuickProdButtons);
        parent := grpQuickProdButtons;
        OnClick := quickprodbuttonClick;
        Width := 70;
        Height := 70;
        Margin:= -1;
        AllowAllUp := True;
        GroupIndex := 1;
        Font.Size := 8;
        font.Name := 'segoe UI';
        Caption := '';
        Tag := prodindex;


        {if tilldm.qryproductssearchdisplayname1.asstring <> '' then
        begin
         if pos(tilldm.qryproductssearchdisplayname1.asstring,criteriastring) = 0 then
         caption := caption+tilldm.qryproductssearchdisplayname1.asstring+#13+#10;
        if tilldm.qryproductssearchdisplayname2.asstring <> '' then
         if pos(tilldm.qryproductssearchdisplayname2.asstring,criteriastring) = 0 then
         caption := caption+tilldm.qryproductssearchdisplayname1.asstring+#13+#10;
         if tilldm.qryproductssearchdisplayname3.asstring <> '' then
         if pos(tilldm.qryproductssearchdisplayname1.asstring,criteriastring) = 0 then
         caption := caption+tilldm.qryproductssearchdisplayname3.asstring+#13+#10;
         end
         else  }
          begin

          criteriastring := StringReplace(criteriastring,' & ',' ',[rfreplaceall,rfignorecase]);
          criteriastring := StringReplace(criteriastring,' and ',' ',[rfreplaceall,rfignorecase]);
          criteriastring := StringReplace(criteriastring,'/',' ',[rfreplaceall,rfignorecase]);
          criteriastring := StringReplace(criteriastring,',',' ',[rfreplaceall,rfignorecase]);
          criteriastring := StringReplace(criteriastring,'-',' ',[rfreplaceall,rfignorecase]);
          criteriastring := StringReplace(criteriastring,'   ',' ',[rfreplaceall,rfignorecase]);
          criteriastring := StringReplace(criteriastring,'  ',' ',[rfreplaceall,rfignorecase]);

          namestring := tilldm.qryProductsSearchName.asstring;
          namestring := StringReplace(Namestring,' & ',' ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(Namestring,' and ',' & ',[rfreplaceall,rfignorecase]);
           namestring := StringReplace(Namestring,' of the ','',[rfreplaceall,rfignorecase]);

          namestring := StringReplace(Namestring,'/',' ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,',',' ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,'-',' ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,'   ',' ',[rfreplaceall,rfignorecase]);
           namestring := StringReplace(namestring,'  ',' ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,criteriastring+'S','',[rfreplaceall,rfignorecase]);
           namestring := StringReplace(namestring,criteriastring,'',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,'  ',' ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,'  ',' ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' black ',' BLK ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' green ',' GRN ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' PINK ',' PK ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' white ',' WH ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' blue ',' BLU ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' yellow ',' YLW ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' with ','',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' and ','&',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' orange ',' ONG ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' MEDIUM ','(M)',[rfreplaceall,rfignorecase]);
            namestring := StringReplace(namestring,' MED ','(M) ',[rfreplaceall,rfignorecase]);
           namestring := StringReplace(namestring,' LGE ','(L) ',[rfreplaceall,rfignorecase]);
          namestring := StringReplace(namestring,' LARGE ','(L) ',[rfreplaceall,rfignorecase]);
namestring := StringReplace(namestring,' SMALL ','(S) ',[rfreplaceall,rfignorecase]);
namestring := StringReplace(namestring,'EXTRA ','(X)',[rfreplaceall,rfignorecase]);

           namestring := TrimLeft(namestring);
namestring := Trimright(namestring);

          namestring :=  WrapText(namestring, 11);
{          if Pos(' ',namestring) = 0 then

          begin
          if Length(namestring) <= 10 then
          Caption := Copy(Namestring,1,10)+#13+#10
          else
          begin
          Caption := Copy(Namestring,1,Round(Length(namestring)/2))+#13+#10;
          Caption := caption+copy(Namestring,Round(Length(namestring)/2)+1,14-Round(Length(namestring)/2))+#13+#10;
          end;

          end
          else
          begin

            if Pos(' ',namestring) <= 10 then
           begin
             Caption := Copy(Namestring,1,Pos(' ',namestring))+#13+#10;
          Caption := caption+copy(Namestring,Pos(' ',namestring)+1,20-Pos(' ',namestring))+#13+#10;

           end;

          end;






          end;
 }
          end;

        Caption := namestring+#13+#10+'$'+tilldm.qryProductsSearchRetail_Price.AsString;

        //OnClick := TillDrillClick;
          //result := '/' + tilldm.qryProductsSearchCode.AsString;

          inc(prodindex);
        tilldm.qryProductsSearch.Next;
      end;
  end;


procedure TfrmSearchProductsDialog.btnAClick(Sender: TObject);
begin
    appendText('a');
end;

procedure TfrmSearchProductsDialog.addallcatClick(Sender: TObject);
begin
      tilldm.qryProdCat.open;
      tilldm.qryProductsSearch.First;
      repeat
      begin
        tilldm.qryProdCat.First;
        if tilldm.qryProdCat.Locate('Supplier;Code;CategoryCode',
           VarArrayOf([tilldm.qryProductsSearchsupplier.asstring,
            tilldm.qryProductsSearchcode.asstring,
            tilldm.qryTillCatdrillCATEGORY.AsString]),
           []) then
        begin

        end
        else
        begin
          tilldm.qryProdCat.Insert;
          tilldm.qryProdCatcode.asstring :=    tilldm.qryProductsSearchcode.asstring;
          tilldm.qryProdCatsupplier.asstring :=    tilldm.qryProductsSearchsupplier.asstring;
          tilldm.qryProdCatCategoryCode.AsString := tilldm.qryTillCatdrillCATEGORY.AsString;
          tilldm.qryProdCat.Post;
        end;
        tilldm.qryProductsSearch.Next;
      end
      until tilldm.qryproductssearch.eof;
         tilldm.qryProdCat.Close;
          tilldm.qryProdCat.Open;
        tilldm.qryProductsSearch.First;
          updatequickproductbuttons(prodcatlabel.Caption);
end;

procedure TfrmSearchProductsDialog.addprodcatClick(Sender: TObject);
begin
tilldm.qryTillCatdrill.First;
  if tilldm.qrytillcatdrill.locate('Category',CurrentMaster,[]) then
  begin
    if (OLDMASTER <> '') and (oldmaster = tilldm.qryTillCatdrillCATEGORY.asstring) then
      drillfrommaster('')
    else
    begin
      if tilldm.qrytillcatdrillismaster.value = 1 then
        drillfrommaster(currentmaster)
      else
      begin
        if tilldm.qryProdCat.Locate('Supplier;Code;CategoryCode',
           VarArrayOf([tilldm.qryProductsSearchsupplier.asstring,
            tilldm.qryProductsSearchcode.asstring,
            tilldm.qryTillCatdrillCATEGORY.AsString]),
           []) then
        begin

        end
        else
        begin
          tilldm.qryProdCat.Insert;
          tilldm.qryProdCatcode.asstring :=    tilldm.qryProductsSearchcode.asstring;
          tilldm.qryProdCatsupplier.asstring :=    tilldm.qryProductsSearchsupplier.asstring;
          tilldm.qryProdCatCategoryCode.AsString := tilldm.qryTillCatdrillCATEGORY.AsString;
          tilldm.qryProdCat.Post;
          tilldm.qryProdCat.Close;
          tilldm.qryProdCat.Open;
        end;
      end;
    end;
      updatequickproductbuttons(prodcatlabel.Caption);
  end;
end;

procedure TfrmSearchProductsDialog.appendText(Text: string);
begin
    {if shiftPressed = True then  }
        Text := UpperCase(Text);
   if EditProdSupp.Focused then
   EditProdSupp.SetSelText(text)
   else
   if EditCatName.Focused  then
   EditCatName.SetSelText(text)
   else
   if editprodname.focused then
    editprodname.SetSelText(text)
   else
   if editprodprice.focused then
    editprodprice.SetSelText(text)
   else
    edtSearch.SetSelText(Text);
end;

procedure TfrmSearchProductsDialog.btnBackspaceClick(Sender: TObject);
var
    tempString : string;
    selIndex : Integer;
begin
if edtSearch.focused then
begin

    if (edtSearch.SelLength = 0) then
    begin
        tempString := edtSearch.Text;
        selIndex := edtSearch.SelStart;

        Delete(tempString, edtSearch.SelStart, 1);
        edtSearch.Text := tempString;
        edtSearch.SelStart := selIndex - 1;
    end
    else
    begin
        edtSearch.SetSelText('');
    end;
end
else
if editprodname.focused then
begin

    if (editprodname.SelLength = 0) then
    begin
        tempString := editprodname.Text;
        selIndex := editprodname.SelStart;

        Delete(tempString, editprodname.SelStart, 1);
        editprodname.Text := tempString;
        editprodname.SelStart := selIndex - 1;
    end
    else
    begin
        editprodname.SetSelText('');
    end;
end
else
if editprodprice.focused then
begin

    if (editprodprice.SelLength = 0) then
    begin
        tempString := editprodprice.Text;
        selIndex := editprodprice.SelStart;

        Delete(tempString, editprodprice.SelStart, 1);
        editprodprice.Text := tempString;
        editprodprice.SelStart := selIndex - 1;
    end
    else
    begin
        editprodprice.SetSelText('');
    end;
end;

end;

procedure TfrmSearchProductsDialog.btnBClick(Sender: TObject);
begin
    appendText('b');
end;

procedure TfrmSearchProductsDialog.btnCClick(Sender: TObject);
begin
    appendText('c');
end;

procedure TfrmSearchProductsDialog.btnClearClick(Sender: TObject);
begin
    if EditProdSupp.Focused then
   EditProdSupp.Clear
   else
   if EditCatName.Focused  then
   EditCatName.Clear
   else
   if editprodname.focused then
    editprodname.Clear
   else
   if editprodprice.focused then
    editprodprice.Clear
   else
       edtSearch.Clear;
end;

procedure TfrmSearchProductsDialog.btnColonClick(Sender: TObject);
begin
    appendText(':');
end;

procedure TfrmSearchProductsDialog.btnCommaClick(Sender: TObject);
begin
    appendText(',');
end;

procedure TfrmSearchProductsDialog.btnDashClick(Sender: TObject);
begin
    appendText('-');
end;

procedure TfrmSearchProductsDialog.btnDClick(Sender: TObject);
begin
    appendText('d');
end;

procedure TfrmSearchProductsDialog.btnDotClick(Sender: TObject);
begin
    appendText('.');
end;

procedure TfrmSearchProductsDialog.btnEClick(Sender: TObject);
begin
    appendText('e');
end;

procedure TfrmSearchProductsDialog.btnEightClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('*')
    else
        appendText('8');
end;

procedure TfrmSearchProductsDialog.BtnEnterClick(Sender: TObject);
var cchar : Char;
begin
cchar := #13;
EditCatNameKeyPress(Sender,cchar);
end;

procedure TfrmSearchProductsDialog.btnFClick(Sender: TObject);
begin
    appendText('f');
end;

procedure TfrmSearchProductsDialog.btnFiveClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('%')
    else
        appendText('5');
end;

procedure TfrmSearchProductsDialog.btnFourClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('$')
    else
        appendText('4');
end;

procedure TfrmSearchProductsDialog.btnGClick(Sender: TObject);
begin
    appendText('g');
end;

procedure TfrmSearchProductsDialog.btnHClick(Sender: TObject);
begin
    appendText('h');
end;

procedure TfrmSearchProductsDialog.btnIClick(Sender: TObject);
begin
    appendText('i');
end;

procedure TfrmSearchProductsDialog.btnJClick(Sender: TObject);
begin
    appendText('j');
end;

procedure TfrmSearchProductsDialog.btnKClick(Sender: TObject);
begin
    appendText('k');
end;

procedure TfrmSearchProductsDialog.btnLClick(Sender: TObject);
begin
    appendText('l');
end;

procedure TfrmSearchProductsDialog.btnMClick(Sender: TObject);
begin
    appendText('m');
end;

procedure TfrmSearchProductsDialog.btnNClick(Sender: TObject);
begin
    appendText('n');
end;

procedure TfrmSearchProductsDialog.btnNineClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('(')
    else
        appendText('9');
end;

procedure TfrmSearchProductsDialog.btnOClick(Sender: TObject);
begin
    appendText('o');
end;

procedure TfrmSearchProductsDialog.btnOneClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('!')
    else
        appendText('1');
end;

procedure TfrmSearchProductsDialog.btnPClick(Sender: TObject);
begin
    appendText('p');
end;

procedure TfrmSearchProductsDialog.btnQClick(Sender: TObject);
begin
    appendText('q');
end;

procedure TfrmSearchProductsDialog.btnRClick(Sender: TObject);
begin
    appendText('r');
end;

procedure TfrmSearchProductsDialog.btnSClick(Sender: TObject);
begin
    appendText('s');
end;

procedure TfrmSearchProductsDialog.btnSevenClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('&')
    else
        appendText('7');
end;

procedure TfrmSearchProductsDialog.btnShiftClick(Sender: TObject);
begin
    shiftPressed := not shiftPressed;

    if shiftPressed then
    begin
        btnShift.Font.Color := clHighlight;
        btnOne.Caption := '!';
        btnTwo.Caption := '@';
        btnThree.Caption := '#';
        btnFour.Caption := '$';
        btnFive.Caption := '%';
        btnSix.Caption := '^';
        btnSeven.Caption := '&&';
        btnEight.Caption := '*';
        btnNine.Caption := '(';
        btnZero.Caption := ')';

        btnQ.Caption := 'Q';
        btnW.Caption := 'W';
        btnE.Caption := 'E';
        btnR.Caption := 'R';
        btnT.Caption := 'T';
        btnY.Caption := 'Y';
        btnU.Caption := 'U';
        btnI.Caption := 'I';
        btnO.Caption := 'O';
        btnP.Caption := 'P';
        btnA.Caption := 'A';
        btnS.Caption := 'S';
        btnD.Caption := 'D';
        btnF.Caption := 'F';
        btnG.Caption := 'G';
        btnH.Caption := 'H';
        btnJ.Caption := 'J';
        btnK.Caption := 'K';
        btnL.Caption := 'L';
        btnZ.Caption := 'Z';
        btnX.Caption := 'X';
        btnC.Caption := 'C';
        btnV.Caption := 'V';
        btnB.Caption := 'B';
        btnN.Caption := 'N';
        btnM.Caption := 'M';
    end
    else
    begin
        btnShift.Font.Color := clWindowText;
        btnOne.Caption := '1';
        btnTwo.Caption := '2';
        btnThree.Caption := '3';
        btnFour.Caption := '4';
        btnFive.Caption := '5';
        btnSix.Caption := '6';
        btnSeven.Caption := '7';
        btnEight.Caption := '8';
        btnNine.Caption := '9';
        btnZero.Caption := '0';

        btnQ.Caption := 'q';
        btnW.Caption := 'w';
        btnE.Caption := 'e';
        btnR.Caption := 'r';
        btnT.Caption := 't';
        btnY.Caption := 'y';
        btnU.Caption := 'u';
        btnI.Caption := 'i';
        btnO.Caption := 'o';
        btnP.Caption := 'p';
        btnA.Caption := 'a';
        btnS.Caption := 's';
        btnD.Caption := 'd';
        btnF.Caption := 'f';
        btnG.Caption := 'g';
        btnH.Caption := 'h';
        btnJ.Caption := 'j';
        btnK.Caption := 'k';
        btnL.Caption := 'l';
        btnZ.Caption := 'z';
        btnX.Caption := 'x';
        btnC.Caption := 'c';
        btnV.Caption := 'v';
        btnB.Caption := 'b';
        btnN.Caption := 'n';
        btnM.Caption := 'm';
    end;
end;

procedure TfrmSearchProductsDialog.btnSixClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('^')
    else
        appendText('6');
end;

procedure TfrmSearchProductsDialog.btnSlashClick(Sender: TObject);
begin
    appendText('/');
end;

procedure TfrmSearchProductsDialog.btnSpaceClick(Sender: TObject);
begin
    appendText(' ');
end;

procedure TfrmSearchProductsDialog.btnTClick(Sender: TObject);
begin
    appendText('t');
end;

procedure TfrmSearchProductsDialog.btnThreeClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('#')
    else
        appendText('3');
end;

procedure TfrmSearchProductsDialog.btnTwoClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('@')
    else
        appendText('2');
end;

procedure TfrmSearchProductsDialog.btnUClick(Sender: TObject);
begin
    appendText('u');
end;

procedure TfrmSearchProductsDialog.btnVClick(Sender: TObject);
begin
    appendText('v');
end;

procedure TfrmSearchProductsDialog.btnWClick(Sender: TObject);
begin
    appendText('w');
end;

procedure TfrmSearchProductsDialog.btnXClick(Sender: TObject);
begin
    appendText('x');
end;

procedure TfrmSearchProductsDialog.btnYClick(Sender: TObject);
begin
    appendText('y');
end;

procedure TfrmSearchProductsDialog.btnZClick(Sender: TObject);
begin
    appendText('z');
end;

procedure TfrmSearchProductsDialog.btnZeroClick(Sender: TObject);
begin
    if shiftPressed then
        appendText(')')
    else
        appendText('0');
end;

procedure TfrmSearchProductsDialog.CatEditClick(Sender: TObject);
begin
if catedit.caption = 'Cat'+#13+#10+'Edit'+#13+#10+'Off' then
  catedit.caption := 'Cat'+#13+#10+'Edit'+#13+#10+'On'
else
  catedit.caption := 'Cat'+#13+#10+'Edit'+#13+#10+'Off';

drillfrommaster(oldmaster);
end;

procedure TfrmSearchProductsDialog.ChangeProdClick(Sender: TObject);
begin


tilldm.qryproductslookup.Edit;
tilldm.qryproductslookup.post;
tilldm.qryquery.sql.Text := 'update productscategories set Supplier = '+quotedstr(tilldm.qryProductsLookupSupplier.AsString)+' where supplier  = '+quotedstr(oldsupp)+' and code = '+quotedstr(oldcode);
tilldm.qryQuery.ExecSQL;

tilldm.qryproductssearch.close;
tilldm.qryproductssearch.open;

   updatequickproductbuttons(prodcatlabel.Caption);
end;

end.
