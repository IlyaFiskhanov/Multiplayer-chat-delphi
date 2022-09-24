unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    ClientSocket1: TClientSocket;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Name: String;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ClientSocket1.Socket.SendText(Name+': '+Edit1.Text);
  Edit1.Clear;
end;

procedure TForm1.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
Mas:String;
begin
  Mas:=Socket.ReceiveText;
  Memo1.Lines.Add(Mas);
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
      Button1.Click
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Name:=InputBox('Enter your username','Login: ','User1');
  ClientSocket1.Port:=77777;
  ClientSocket1.Host:='192.168.0.106';{your host}
  ClientSocket1.Active:=True;
  Form1.Caption := 'Application';
  Button1.Caption:='Send';
end;

end.
