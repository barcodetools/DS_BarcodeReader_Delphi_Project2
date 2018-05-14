unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComObj, BarcodeReaderLib_TLB;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var
  i: integer;
  BarcodeDecoder: IBarcodeDecoder;
begin
  BarcodeDecoder:= CreateComObject(CLASS_BarcodeDecoder) as IBarcodeDecoder;
  BarcodeDecoder.LinearFindBarcodes:= 7;
  BarcodeDecoder.DecodeFile(Edit1.Text);
  for i:= 0 to BarcodeDecoder.Barcodes.length-1 do begin
    ShowMessage(BarcodeDecoder.Barcodes.item(i).Text);
  end
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  BarcodeDecoder: IBarcodeDecoder;
begin
  BarcodeDecoder := CreateComObject(CLASS_BarcodeDecoder) as IBarcodeDecoder;
  BarcodeDecoder.AboutBox();
end;

end.

