unit �������_����;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, ComObj, Vcl.OleCtrls, SHDocVw, Vcl.Menus,
  Vcl.Imaging.jpeg, ShellAPI;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Timer1: TTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    Timer2: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    File1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ������, ����, ��������, ������;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
Form1.Hide;
Form5.Show;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
Form1.Hide;
Form3.Show;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
Form1.Hide;
Form4.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'Help.chm',nil, nil, SW_SHOW);
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
form1.edit1.text:=datetostr(date);
form1.edit2.text:=timetostr(time);
end;


procedure TForm1.Timer2Timer(Sender: TObject);
begin
Label2.Left:=Label2.Left+35;
if Label2.Left>=form1.Left+350 then Label2.Left:=-375;
end;

end.
