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
    Label_apcount: TLabel;
    ap_count_gr: TPanel;
    ap_count1: TRadioButton;
    ap_count2: TRadioButton;
    ap_count3: TRadioButton;
    ap_count4: TRadioButton;
    ap_count5: TRadioButton;
    ap_count6: TRadioButton;
    Label_tsdcount: TLabel;
    Panel1: TPanel;
    tsd_count1: TRadioButton;
    tsd_count2: TRadioButton;
    tsd_count3: TRadioButton;
    tsd_count4: TRadioButton;
    Label_mpcount: TLabel;
    mp_count_gr: TPanel;
    mp_count1: TRadioButton;
    mp_count2: TRadioButton;
    mp_count3: TRadioButton;
    cash_count6: TRadioButton;
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
    procedure tsd_count1Click(Sender: TObject);
    procedure tsd_count2Click(Sender: TObject);
    procedure tsd_count3Click(Sender: TObject);
    procedure tsd_count4Click(Sender: TObject);
    procedure mp_count1Click(Sender: TObject);
    procedure mp_count2Click(Sender: TObject);
    procedure mp_count3Click(Sender: TObject);
    procedure ap_count1Click(Sender: TObject);
    procedure ap_count2Click(Sender: TObject);
    procedure ap_count3Click(Sender: TObject);
    procedure ap_count4Click(Sender: TObject);
    procedure ap_count5Click(Sender: TObject);
    procedure ap_count6Click(Sender: TObject);
    procedure mp_count1DblClick(Sender: TObject);
    procedure mp_count2DblClick(Sender: TObject);
    procedure mp_count3DblClick(Sender: TObject);
    procedure cash_count6Click(Sender: TObject);


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
    tsdcount: integer;  //���������� ���
    mpcount: integer;   //���������� ��������� ���������
    apcount: integer;   //���������� ����� �������
  end;

var
  obj_sel_form: Tobj_sel_form;
  obj_type: integer;
  Report: TReport;

  cash, inside, insidemk, kkt, ibpmark, sksmount, allviewbuyer, allviewitems, allview,
    check, chekmk, nut, wifi, egais, bpmark, rout, allviewb, allviewf, allviewm,
    swith, pcdir, pcdirmk, pcserv, pcservmk, printconnect, a4prt, testpage, hub, hubtd, allitemsmark,
    ap, mp, tsd, view, mark, chklst, install, plan, prt, uks, ke, pc, ibp, pinpad, scan, hand: string;
  // ������� ��������� ���������� ����� ������� ������� ����� ��� �������� ������

implementation

{$R *.dfm}

procedure Tobj_sel_form.ap_count1Click(Sender: TObject);
begin
Report.apcount := 1;
end;

procedure Tobj_sel_form.ap_count2Click(Sender: TObject);
begin
Report.apcount := 2;
end;

procedure Tobj_sel_form.ap_count3Click(Sender: TObject);
begin
Report.apcount := 3;
end;

procedure Tobj_sel_form.ap_count4Click(Sender: TObject);
begin
Report.apcount := 4;
end;

procedure Tobj_sel_form.ap_count5Click(Sender: TObject);
begin
Report.apcount := 5;
end;

procedure Tobj_sel_form.ap_count6Click(Sender: TObject);
begin
Report.apcount := 6;
end;

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

procedure Tobj_sel_form.cash_count6Click(Sender: TObject);
begin
Report.Cashcount := 6;
end;

procedure Tobj_sel_form.FormCreate(Sender: TObject);
// ��� �������� ����� ���������� ������� ����� � ���������
begin
  //����� ��
  cash := '�����';
  kkt := '���';
  ibpmark := '���������� ��';
  sksmount := '������ ���';
  allviewbuyer := '����� ��� (����������)';
  allviewitems := '����� ��� ������������';
  allview := '����� ���';
  inside := '������';
  check := '���';
  //��� ��
  allitemsmark := '���������� ������������';
  insidemk := '�����������';
  chekmk := '���� ����';
  //��� ��� ��
  uks := '���';
  nut := '������ NUT';
  wifi := '��������� ���� (WiFi)';
  egais := '�����';
  bpmark := '���������� ��';
  rout := '���������';
  allviewb := '����� ��� �����';
  allviewf := '����� ��� �������';
  allviewm := '����� ��� �����';
  swith := '�������������';
  pcdir := '�� ���������';
  pcserv := '�� ������';
  printconnect := '������� �����������';
  a4prt := '�������';
  testpage := '�������� ������';
  hub := '���';
  hubtd := '��� ��';
  //��� ��� ��
  pcdirmk := '���';
  pcservmk := '������';
  //������ ����
  ap := '��';
  mp := '��';
  tsd := '���';
  view := '���';
  mark := '����������';
  chklst := '��';
  install := '������';
  plan := '�����������';
  prt := '������';
  ke := '��';
  pc := '��';
  ibp := '���';
  pinpad := '��� ���';
  scan := '������ ��';
  hand := '������ ������ ��';


  Report := TReport.Create;
  Report.Cashcount := 1; //�� ��������� 1 �����
  Report.mpcount := 1;   //�� ��������� 1 ��
  Report.apcount := 1;   //�� ��������� 1 ��
  Report.tsdcount := 1;  //�� ��������� 1 ���
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
  tsd_count1.Checked := True;
  ap_count1.Checked := True;
  mp_count1.Checked := False;
  mp_count2.Checked := False;
  mp_count3.Checked := False;
end;

procedure Tobj_sel_form.MKClick(Sender: TObject);
begin
  obj_type := 2;
  cash_count2.Checked := True;
  tsd_count1.Checked := True;
  ap_count1.Checked := True;
  mp_count1.Checked := True;
  end;

procedure Tobj_sel_form.MMClick(Sender: TObject);
begin
  obj_type := 1;
  cash_count3.Checked := True;
  tsd_count2.Checked := True;
  ap_count3.Checked := True;
  mp_count1.Checked := True;
  end;

procedure Tobj_sel_form.mp_count1Click(Sender: TObject);
begin
Report.mpcount := 1;
end;

procedure Tobj_sel_form.mp_count1DblClick(Sender: TObject);
begin
if obj_type = 3 then
mp_count1.Checked := False;
Report.mpcount := 0;
end;

procedure Tobj_sel_form.mp_count2Click(Sender: TObject);
begin
Report.mpcount := 2;
end;

procedure Tobj_sel_form.mp_count2DblClick(Sender: TObject);
begin
if obj_type = 3 then
mp_count2.Checked := False;
Report.mpcount := 0;
end;

procedure Tobj_sel_form.mp_count3Click(Sender: TObject);
begin
Report.mpcount := 3;
end;

procedure Tobj_sel_form.mp_count3DblClick(Sender: TObject);
begin
if obj_type = 3 then
mp_count3.Checked := False;
Report.mpcount := 0;
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
procedure Tobj_sel_form.tsd_count1Click(Sender: TObject);
begin
Report.tsdcount := 1;
end;

procedure Tobj_sel_form.tsd_count2Click(Sender: TObject);
begin
Report.tsdcount := 2;
end;

procedure Tobj_sel_form.tsd_count3Click(Sender: TObject);
begin
Report.tsdcount := 3;
end;

procedure Tobj_sel_form.tsd_count4Click(Sender: TObject);
begin
Report.tsdcount := 4;
end;

end.
