unit ��������;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Samples.Gauges,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.MPlayer;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    MediaPlayer1: TMediaPlayer;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
implementation

{$R *.dfm}

uses �������_����;

procedure TForm2.FormActivate(Sender: TObject);
begin
MediaPlayer1.Open;
MediaPlayer1.FileName:=('�������� ������ ��������.wmv');
MediaPlayer1.Stop;
MediaPlayer1.DisplayRect := Panel1.ClientRect;
MediaPlayer1.Play;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
