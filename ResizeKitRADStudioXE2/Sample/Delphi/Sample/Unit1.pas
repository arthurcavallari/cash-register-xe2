unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ResizeKit, ExtCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    Shape1: TShape;
    Shape2: TShape;
    Image1: TImage;
    Button1: TButton;
    ResizeKit1: TResizeKit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
	Close;
end;

end.
