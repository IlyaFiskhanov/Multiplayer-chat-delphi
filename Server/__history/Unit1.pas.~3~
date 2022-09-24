unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Win.ScktComp;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ServerSocket1: TServerSocket;
    procedure FormCreate(Sender: TObject);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ServerSocket1.Port:=77777;
ServerSocket1.Active:=True;
Form1.Caption:='Server';
end;

procedure TForm1.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
Mas:string;
begin
  Mas:=Socket.ReceiveText;
  Memo1.Lines.Add('Connected: '+Socket.RemoteAddress + ';');
end;

procedure TForm1.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Memo1.Lines.Add('Blacked out: ' + Socket.RemoteAddress + ';');
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
I:integer;
Mas:string;
begin
  Mas:=Socket.ReceiveText;
  Memo1.Lines.Add(Mas);
  for I := 0 to ServerSocket1.Socket.ActiveConnections -1 do
    begin
      ServerSocket1.Socket.Connections[I].SendText(Mas);
    end;
end;

end.
