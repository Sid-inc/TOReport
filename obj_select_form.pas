unit obj_select_form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, obj_MM_form,
  Vcl.Buttons, FileCtrl, Vcl.ExtCtrls;

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
    destdesc: TLabel;
    destlock: TLabel;
    OpenDirBtn: TButton;
    Label_cashcount: TLabel;
    cash_count2: TRadioButton;
    cash_count3: TRadioButton;
    cash_count4: TRadioButton;
    cash_count5: TRadioButton;
    obj_type_gr: TPanel;
    cash_count_gr: TPanel;
    procedure next_buttonClick(Sender: TObject);
    procedure MMClick(Sender: TObject);
    procedure MKClick(Sender: TObject);
    procedure MAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OpenDirBtnClick(Sender: TObject);
    procedure cash_count2Click(Sender: TObject);
    procedure cash_count3Click(Sender: TObject);
    procedure cash_count4Click(Sender: TObject);
    procedure cash_count5Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TReport = class
    // ������� ����� TReport ��� �������� ����� ���������� � ������
  public
    Dlock: String; //���������� ���������� ����
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

procedure Tobj_sel_form.cash_count2Click(Sender: TObject);
begin
Report.Cashcount := 2;
end;

procedure Tobj_sel_form.cash_count3Click(Sender: TObject);
begin
Report.Cashcount := 3;
end;

procedure Tobj_sel_form.cash_count4Click(Sender: TObject);
begin
Report.Cashcount := 4;
end;

procedure Tobj_sel_form.cash_count5Click(Sender: TObject);
begin
Report.Cashcount := 5;
end;

procedure Tobj_sel_form.FormCreate(Sender: TObject);
// ��� �������� ����� ���������� ������� ����� � ���������
begin
  cash := '�����';
  inside := '������';
  kkt := '���';
  ibpmark := '���������� ��';
  sksmount := '������ ���';
  allviewbuyer := '����� ��� (����������)';
  allviewitems := '����� ��� ������������';
  allview := '����� ���';
  check := '���';

  Report := TReport.Create;
  Report.Cashcount := 1; //�� ��������� 1 �����
  // �������� ����������� ������� Report ������ TReport ��� ������� � ���� �� ����� ����� ���������
end;

procedure Tobj_sel_form.FormShow(Sender: TObject);
begin
  obj_type := 0;
end;

procedure Tobj_sel_form.MAClick(Sender: TObject);
begin
  obj_type := 3;
  cash_count2.Checked := True;
end;

procedure Tobj_sel_form.MKClick(Sender: TObject);
begin
  obj_type := 2;
  cash_count2.Checked := True;
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
  if destlock.Caption = '..' then
      begin
      ShowMessage('�� ������� ����� ���������� ����!');
      Exit;
      end;
  if Report.Cashcount <= 1 then
    //���� ������ ������� � ����������� ���� ����������
    begin
    ShowMessage('�������� ���������� ����!');
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

procedure Tobj_sel_form.OpenDirBtnClick(Sender: TObject);
var
  dir: String;
begin
  if SelectDirectory ('�������� �����, ��� ���������� ������������ ����:', '', dir) then
    begin
    destlock.Caption := dir;
    Report.Dlock := dir;  //�������� ������ ���������� � ���� ���������� ����
    end;
end;
end.
