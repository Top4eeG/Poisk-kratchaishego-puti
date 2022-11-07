unit Теория;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.MPlayer;

type
  TForm3 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    MediaPlayer1: TMediaPlayer;
    Panel1: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Главное_меню;

procedure TForm3.Button1Click(Sender: TObject);
begin
Form3.Hide;
Form1.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
MediaPlayer1.Visible:=true;
Button4.Visible:=true;
Button5.Visible:=true;
Panel1.Visible:=true;
Form3.Button2.Visible:=false;
Form3.Button3.Visible:=true;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
MediaPlayer1.Visible:=false;
Button4.Visible:=false;
Button5.Visible:=false;
Panel1.Visible:=false;
Form3.Button2.Visible:=true;
Form3.Button3.Visible:=false;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
MediaPlayer1.Play;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
MediaPlayer1.Stop;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(extractfilepath(paramstr(0))+'Теория.htm');

MediaPlayer1.FileName:=('Анимация Дейкстры.wmv');

MediaPlayer1.DisplayRect := Panel1.ClientRect;

end;

end.
