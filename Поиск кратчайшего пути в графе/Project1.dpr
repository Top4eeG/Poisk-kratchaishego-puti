program Project1;

uses
  Vcl.Forms,
  Windows,
  �������_���� in '�������_����.pas' {Form1},
  �������� in '��������.pas' {Form2},
  ������ in '������.pas' {Form3},
  ���� in '����.pas' {Form4},
  ������ in '������.pas' {Form5},
  WMPLib_TLB in 'C:\Users\USER\Documents\Embarcadero\Studio\21.0\Imports\WMPLib_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Form2.Show;
Sleep(7670);
Form2.Hide;

Application.Run;
end.
