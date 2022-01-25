unit obj_select_form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, obj_MM_form;

type
  Tobj_sel_form = class(TForm)
    Start_message: TLabel;
    Label_name: TLabel;
    obj_name: TEdit;
    MM: TRadioButton;
    MK: TRadioButton;
    MA: TRadioButton;
    Label_format: TLabel;
    next_button: TButton;
    procedure next_buttonClick(Sender: TObject);
    procedure MMClick(Sender: TObject);
    procedure MKClick(Sender: TObject);
    procedure MAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TReport = class
    // ������� ����� TReport ��� �������� ����� ���������� � ������
  public
    Rtype: string; // �������� ������ ��� �������� ���� (��, ��, ��)
    OOname: string; // �������� OO
    Cashcount: integer; // �������� ������ ��� �������� ���������� ����
  end;

var
  obj_sel_form: Tobj_sel_form;
  obj_type: integer;
  Report: TReport;

  cash, Inside, kkt, ibpmark, sksmount, allviewbuyer, allviewitems, allview,
    check: string;
  // ������� ��������� ���������� ����� ������� ������� ����� ��� �������� ������

implementation

{$R *.dfm}

procedure Tobj_sel_form.FormCreate(Sender: TObject);
// ��� �������� ����� ���������� ������� ����� � ���������
begin
  cash := '�����';
  Inside := '������';
  kkt := '���';
  ibpmark := '���������� ��';
  sksmount := '������ ���';
  allviewbuyer := '����� ��� (����������)';
  allviewitems := '����� ��� ������������';
  allview := '����� ���';
  check := '���';

  Report := TReport.Create;
  // �������� ����������� ������� Report ������ TReport ��� ������� � ���� �� ����� ����� ���������
end;

procedure Tobj_sel_form.FormShow(Sender: TObject);
begin
  obj_type := 0;
end;

procedure Tobj_sel_form.MAClick(Sender: TObject);
begin
  obj_type := 3;
end;

procedure Tobj_sel_form.MKClick(Sender: TObject);
begin
  obj_type := 2;
end;

procedure Tobj_sel_form.MMClick(Sender: TObject);
begin
  obj_type := 1;
end;

procedure Tobj_sel_form.next_buttonClick(Sender: TObject);
begin
  if obj_name.Text <> '' then
     Report.OOname := obj_name.Text
    // ���� � ���� �������� �������� ���-�� ����, ���������� ��� �������� � ���������� ������
    else
      begin
      ShowMessage('������� �������� �������!');
      // ���� � ���� �����, ������ ��������������
      Exit;
      // ��������� ���������� ����������
      end;
  if obj_type = 0 then
     begin
       ShowMessage('�� ������ ������ ��!');
       Exit;
     end;

  case obj_type of
    1:
      begin
        obj_MM.Show;
        obj_sel_form.Hide;
        Report.Rtype := '��'; // ���������� ��� ������ � ���������� ������
      end;
    2:
      begin
        ShowMessage('����� ��� �� � ����������..');
        //obj_MM.Show;
        //obj_sel_form.Hide;
        //Report.Rtype := '��'; // ���������� ��� ������ � ���������� ������
      end;
    3:
      begin
        ShowMessage('����� ��� �� � ����������..');
        //obj_MM.Show;
        //obj_sel_form.Hide;
        //Report.Rtype := '��'; // ���������� ��� ������ � ���������� ������
      end;
    
  end;

  obj_MM.object_name.Caption := obj_select_form.Report.Rtype + ' ' +
    obj_select_form.Report.OOname;
  // ������� � �������� ������ ����� �������� � ��� ��
end;

end.
