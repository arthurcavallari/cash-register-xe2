unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ResizeKit;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    ResizeKit1: TResizeKit;
    procedure FormCreate(Sender: TObject);
    procedure ResizeKit1ExitResize(Sender: TObject; XScale,
      YScale: Double);
  private
  public
  end;

  const
    MAXCOL = 4;  // Maximum number of columns
    MAXROW = 5;  // Maximum number of rows

var
  Form1: TForm1;

implementation

{$R *.DFM}

var
   Org_Width: array[0..MAXCOL - 1] of integer;
   Org_Height: integer;

procedure TForm1.FormCreate(Sender: TObject);
var
   i: Integer;
begin
    with StringGrid1 do
    begin
        ColCount  := MAXCOL;
        RowCount  := MAXROW;
        FixedCols := 1;
        FixedRows := 1;
        Cells[0, 0] := 'No.';
        Cells[1, 0] := 'ITEM 1';
        Cells[2, 0] := 'ITEM 2';
        Cells[3, 0] := 'ITEM 3';

        ColWidths[0] := 30;
        ColWidths[1] := 100;
        ColWidths[2] := 150;
        ColWidths[3] := 100;

        for i := 0 to MAXCOL - 1 do
            Org_Width[i] := ColWidths[i];

        Org_Height := DefaultRowHeight;

        for i := 1 to MAXROW do
        begin
            Cells[0, i] := IntToStr(i);
        end;
    end;
end;

procedure TForm1.ResizeKit1ExitResize(Sender: TObject; XScale,
  YScale: Double);
var
   i: Integer;
begin
  for i := 0 to StringGrid1.ColCount - 1 do
       StringGrid1.ColWidths[i] := Round(Org_Width[i] * XScale);

  StringGrid1.DefaultRowHeight := Round(Org_Height * YScale);
end;

end.
