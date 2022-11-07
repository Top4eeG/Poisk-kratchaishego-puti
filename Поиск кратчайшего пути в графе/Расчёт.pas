unit ������;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Edit1: TLabeledEdit;
    Edit2: TLabeledEdit;
    SB1: TScrollBar;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label3: TLabel;
    Image3: TImage;
    procedure FormCreate(Sender: TObject);
    procedure SB1Change(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  Sres = '���� : ';
  SVerts = '������� �����: ';
  N = 15; { ���-�� ������ �����}

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses �������_����;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  label1.Caption := Sres;
  sb1.Position := 4;
end;
procedure TForm5.Image2Click(Sender: TObject);
begin
Form5.Hide;
Form1.Show;
end;

procedure TForm5.Image3Click(Sender: TObject);

var
  map: array[1..N, 1..N] of integer;
  // �����.map[i,j] �� 0,����
  // ����� i � j ���������

  road: array[1..N] of integer;
  // ������ � ������ ����� �����

  incl: array[1..N] of boolean; // incl[1]����� TRUE,���� �����
  // � ������� i �������� � road

  start, finish: integer;
  // ��������� � �������� �����

  found: boolean; len: integer; // ����� ���������� (������������) ��������
  c_len: integer; // ����� �������� (������������) ��������
  i, j: integer;
  str: string;

  // ����� ��������� �����
  procedure step(s, f, p: integer);
  var
    c: integer; { ����� �����, � ������� ������ ��������� ��� }
    i: integer;
  begin
    if s = f then
    begin
      len := c_len; { �������� ����� ���������� �������� }
      { ����� ���������� �������� }
      for i := 1 to p - 1 do
        str := str + ' ' + IntToStr(road[i]);
        str := str + ', �����:' + IntToStr(len) + #13;
    end
    else
      { �������� ��������� ����� }
      for c := 1 to N do { ��������� ��� ������� }
        if (map[s, c] <> 0) and (not incl[c])
          and ((len = 0) or (c_len + map[s, c] < len)) then
        begin
          // ����� ��������� � �������, �� �� �������� � �������
          road[p] := c; { ������� ������� � ���� }
          incl[c] := TRUE; { ������� ������� ��� ���������� }
          c_len := c_len + map[s, c];
          step(c, f, p + 1);
          incl[c]:= FALSE;
          road[p]:=0;
          c_len := c_len - map[s, c];
        end;
  end;
  { ����� ��������� step }

begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
    Exit;
  Label1.caption := '';
  str := '';
  { ������������� �������� }
  for i:= 1 to N do
    road[i]:= 0;

  for i := 1 to N do
    incl[i] := FALSE;

  { ���� �������� ����� �� SrtingGrid.Cells}
  for i := 1 to N do
    for j := 1 to N do
      if StringGrid1.Cells[i, j] <> '' then
        map[i, j] := StrToInt(StringGrid1.Cells[i, j])
      else
        map[i, j] := 0;

  len := 0; // ����� ���������� (������������) ��������
  c_len := 0; // ����� �������� (������������) ��������

  start := StrToInt(Edit1.text);
  finish := StrToInt(Edit2.text);

  road[1] := start; { ������ ����� � ������� }
  incl[start] := TRUE; { ������� �� ��� ���������� }
  step(start, finish, 2); {���� ������ ����� �������� }

  // ��������, ������ �� ���� �� ���� ����
  if c_len <> 0 then
    Label1.caption := '��������� ����� �� ���������!'
  else
    Label1.caption := Sres + str;

end;

procedure TForm5.SB1Change(Sender: TObject);
var
p, i: Integer;
begin
  p := SB1.Position;
  label2.Caption := SVerts + IntToStr(p);
  StringGrid1.ColCount := p + 1;
  StringGrid1.RowCount := p + 1;
  for I := 1 to StringGrid1.ColCount - 1 do
    StringGrid1.Cells[i, 0] := IntToStr(i);
  for i := 1 To StringGrid1.RowCount - 1 do
    StringGrid1.Cells[0, i] := IntToStr(i);
end;

procedure TForm5.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
    '0', '1', #8:
      ; // ����� ����������� � <Backspace>
  else
    Key := Chr(0); // ������ �� ����������
  end;
end;

end.
