unit ����;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Image2: TImage;
    RadioGroup2: TRadioGroup;
    Label2: TLabel;
    Image3: TImage;
    procedure Image2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  f: text;
  s: string;
  Nvern, ball: integer;

implementation

{$R *.dfm}

uses �������_����;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
ball:=0; //���������� ���������� ������ 0
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
begin
//���� ������ ������� ������ � �� ��������� ����� �����
if (RadioGroup2.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1; //���� ��������� ������� �������������
RadioGroup2.Items.Clear; //������ ������� ������ �� ���� ������������
Repeat //� ��������� ���� ��� ���������� �������
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup2.Items.Add(s);
readln(f,s);
Label1.Caption:=IntToStr(ball);
until (s[1]='-') or (Eof(f));
end
//���� ����� ����� ���������, ������ ������� �����������
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1;
Label1.Caption:=IntToStr(ball); //����� ���������� ������
CloseFile(f);
RadioGroup1.Enabled:=True;
Image2.Visible:=False;
end;
end;

end;

procedure TForm4.Image3Click(Sender: TObject);
begin
Form4.Hide;
Form1.Show;
end;

procedure TForm4.RadioGroup1Click(Sender: TObject);
begin
Image2.Visible:=True;
Label1.Caption:='0';
RadioGroup1.Enabled:=false; //����� �������� ���������� ����������
RadioGroup2.Enabled:=true; //��������� ���������� ���� � ��������
Image2.Enabled:=true; //������ �����
case RadioGroup1.ItemIndex of //� ����������� �� ���������� �������� ���������� f
0: AssignFile( f ,'test1.txt', CP_UTF8);//����������� � ������� �������
1: AssignFile( f ,'test2.txt', CP_UTF8);
end;
reset(f); //��������� ���� ��� ������
readln(f,s); //��������� ������ ������ �� �����
repeat
if (s[1]='-') then begin //���� ������ ������ ������ �-� ������ ��� ������
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin //���� ���� ������ �*� ������ ��� ����� ������� ������
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup2.Items.Add(s); //����� ��� ������� ������
readln(f,s); //��������� ��������� ������ �� �����
until (s[1]='-') or (Eof(f)); //���������� � ����������� ��������� ������� � RadiGroup �� ��� ���

// ���� �� ��������� ��������� ������ ��� ����� �����
end;

end.
