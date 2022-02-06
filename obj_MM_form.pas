unit obj_MM_form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs,
  System.ImageList, Vcl.ImgList, Vcl.Menus, FileCtrl, Vcl.Buttons, Vcl.ExtCtrls;

type
  TObj_MM = class(TForm)
    object_name: TLabel;
    Make: TButton;
    Open_photo: TOpenPictureDialog;
    destlock: TLabel;
    ScrollBox1: TScrollBox;
    procedure OpenFile1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure PhotoInputCreate(cashNumber, index, topBtn, topLabel: integer; btnText: string);
    procedure UksPhotoInputCreate(index, topBtn, topLabel: integer; btnText: string);
    procedure OtherPhotoInputCreate(index, topBtn, topLabel: integer; btnText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  obj_MM: Tobj_MM;
  Cash_Panel: TPanel;
  Uks_Panel: TPanel;
  Other_panel: TPanel;
  Down_panel: TPanel;
  OpenFileBtn: TBitBtn;
  Gen_btn: TButton;
  FlocLb : TLabel;
  BtnToLabel: array[1..5,1..2] of string;

implementation

  uses obj_select_form;

{$R *.dfm}

procedure TObj_MM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  obj_sel_form.Close;
end;


//procedure TObj_MM.MakeClick(Sender: TObject);
//var
//  cash1_path, cash2_path, cash3_path, dest_folder: string;
//begin
//  dest_folder := destlock.Caption; // �������� ���� � ������� �����
//  cash1_path := floc_1.Caption; // �������� ���� � ���� ����� 1 �� ������
//  cash2_path := floc_2.Caption; // �������� ���� � ���� ����� 2 �� ������
//  cash3_path := floc_3.Caption; // �������� ���� � ���� ����� 3 �� ������
//  if RenameFile(cash1_path, dest_folder + '\' + '����� 1 ����� ���' + '.jpg') then
//    ShowMessage('���� ����� 1 ������������'); // �������������� 1�� ����� ������ �����

 //end;

procedure TObj_MM.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  with scrollBox1.VertScrollBar do
   Position := Position + Increment;
end;

procedure TObj_MM.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  with scrollBox1.VertScrollBar do
   Position := Position - Increment;
end;

procedure TObj_MM.FormShow(Sender: TObject);
var
  n, t, a, m, x, y, index: integer;
  //��� n - ��� ����, t - ��� ���, a - ��� ��, m - ��� ��, x � y ��� ����������� ����� ������� ����������, ������������ �����������
begin
  index := 0;
  for n := 1 to obj_select_form.Report.Cashcount do
  begin
    Cash_Panel:= TPanel.Create(obj_MM);
    Cash_Panel.Parent := ScrollBox1;
    Cash_Panel.Name := 'BtnBlock' + IntToStr(n);
    Cash_Panel.Caption := '';
    Cash_Panel.Top := 520*(n-1);
    Cash_Panel.Left := 0;
    Cash_Panel.Height := 520;
    Cash_Panel.Width := 810;
    //�������� � �������� ��� ����
    //������ 1
    PhotoInputCreate(n, index, 10, 15, inside);
    index := index + 1;

    //������ 2
    PhotoInputCreate(n, index, 46, 52, allviewitems);
    index := index + 1;

    //������ 3
    PhotoInputCreate(n, index, 82, 89, ibpmark);
    index := index + 1;

    //������ 4
    PhotoInputCreate(n, index, 118, 125, sksmount);
    index := index + 1;

    //������ 5
    PhotoInputCreate(n, index, 154, 162, kkt);
    index := index + 1;

    //������ 6
    PhotoInputCreate(n, index, 190, 197, check);
    index := index + 1;

    //������ 7
    PhotoInputCreate(n, index, 226, 233, allview);
    index := index + 1;

    //������ 8
    PhotoInputCreate(n, index, 262, 270, allviewbuyer);
    index := index + 1;

    //������ 9
    PhotoInputCreate(n, index, 298, 306, ke + ' '+ pc);
    index := index + 1;

    //������ 10
    PhotoInputCreate(n, index, 334, 342, ke+ ' '+ ibp);
    index := index + 1;

    //������ 11
    PhotoInputCreate(n, index, 370, 378, ke +' '+ pinpad);
    index := index + 1;

    //������ 12
    PhotoInputCreate(n, index, 406, 414, ke + ' '+ scan);
    index := index + 1;

    //������ 13
    PhotoInputCreate(n, index, 442, 450, ke + ' ' + hand);
    index := index + 1;

    //������ 14
    PhotoInputCreate(n, index, 478, 486, ke + ' ' + kkt);
    index := index + 1;
  end;

//������ ��� ���� ���
Uks_Panel:= TPanel.Create(obj_MM);
Uks_Panel.Parent := ScrollBox1;
Uks_Panel.Name := 'BtnBlock_uks';
Uks_Panel.Caption := '';
Uks_Panel.Top := 520*(n-1);
Uks_Panel.Left := 0;
Uks_Panel.Height := 600;
Uks_Panel.Width := 810;
    //������ 1
    UksPhotoInputCreate(index, 10, 15, uks+' '+pcdir);
    index := index + 1;
    //������ 2
    UksPhotoInputCreate(index, 46, 52, uks+' '+pcserv);
    index := index + 1;
    //������ 3
    UksPhotoInputCreate(index, 82, 89, uks+' '+egais);
    index := index + 1;
    //������ 4
    UksPhotoInputCreate(index, 118, 125, uks+' '+rout);
    index := index + 1;
    //������ 5
    UksPhotoInputCreate(index, 154, 162, uks+' '+hub);
    index := index + 1;
    //������ 6
    UksPhotoInputCreate(index, 190, 197, uks+' '+hubtd);
    index := index + 1;
    //������ 7
    UksPhotoInputCreate(index, 226, 233, uks+' '+bpmark);
    index := index + 1;
    //������ 8
    UksPhotoInputCreate(index, 262, 269, uks+' '+allviewb);
    index := index + 1;
    //������ 9
    UksPhotoInputCreate(index, 298, 305, uks+' '+allviewf);
    index := index + 1;
    //������ 10
    UksPhotoInputCreate(index, 334, 341, uks+' '+allviewm);
    index := index + 1;
    //������ 11
    UksPhotoInputCreate(index, 370, 378, uks+' '+swith);
    index := index + 1;
    //������ 12
    UksPhotoInputCreate(index, 406, 413, uks+' '+wifi);
    index := index + 1;
    //������ 13
    UksPhotoInputCreate(index, 442, 449, uks+' '+a4prt);
    index := index + 1;
    //������ 14
    UksPhotoInputCreate(index, 478, 486, uks+' '+a4prt+' �����������');
    index := index + 1;
    //������ 15
    UksPhotoInputCreate(index, 514, 522, uks+' '+testpage);
    index := index + 1;
    //������ 16
    UksPhotoInputCreate(index, 550, 558, nut);
    index := index + 1;

//������ ��� �������
Other_Panel:= TPanel.Create(obj_MM);
Other_Panel.Parent := ScrollBox1;
Other_Panel.Name := 'BtnBlock_other';
Other_Panel.Caption := '';
Other_Panel.Top := 600+520*(n-1);
Other_Panel.Left := 0;
Other_Panel.Height := (3 + Report.tsdcount*2 + Report.apcount*3 + Report.mpcount*3)*36+15 ;
Other_Panel.Width := 810;
    //������
    OtherPhotoInputCreate(index, 10, 15, plan);
    index := index + 1;
    //������
    OtherPhotoInputCreate(index, 46, 52, chklst + ' 1');
    index := index + 1;
    //������
    OtherPhotoInputCreate(index, 82, 89, chklst + ' 2');
    index := index + 1;

    //������ ���
    for t := 1 to Report.tsdcount do
    begin
    OtherPhotoInputCreate(index, 118+72*(t-1), 125+72*(t-1), tsd+IntToStr(t)+' '+ view);
    index := index + 1;
    OtherPhotoInputCreate(index, 154+72*(t-1), 162+72*(t-1), tsd+IntToStr(t)+' '+ ke);
    index := index + 1;
    end;
    x :=  118+72*(t-1);
    y :=  125+72*(t-1);
    //������ ��
    for m := 1 to Report.mpcount do
    begin
    OtherPhotoInputCreate(index, x+108*(m-1), y+108*(m-1), mp+IntToStr(m)+' '+ view);
    index := index + 1;
    OtherPhotoInputCreate(index, x+36+108*(m-1), y+36+108*(m-1), mp+IntToStr(m)+' '+ prt);
    index := index + 1;
    OtherPhotoInputCreate(index, x+72+108*(m-1), y+72+108*(m-1), mp+IntToStr(m)+' '+ ke);
    index := index + 1;
    end;
    x := x+108*(m-1);
    y := y+108*(m-1);
    //������ ��
    for a := 1 to Report.apcount do
    begin
    OtherPhotoInputCreate(index, x+108*(a-1), y+108*(a-1), ap+IntToStr(a)+' '+ mark);
    index := index + 1;
    OtherPhotoInputCreate(index, x+36+108*(a-1), y+36+108*(a-1), ap+IntToStr(a)+' '+ install);
    index := index + 1;
    OtherPhotoInputCreate(index, x+72+108*(a-1), y+72+108*(a-1), ap+IntToStr(a)+' '+ ke);
    index := index + 1;
    end;
//������ ��������
Down_panel:= TPanel.Create(obj_MM);
Down_Panel.Parent := ScrollBox1;
Down_Panel.Name := 'BtnBlock_down';
Down_Panel.Caption := '';
Down_Panel.Top := 600+520*(n-1)+ (3 + Report.tsdcount*2 + Report.apcount*3 + Report.mpcount*3)*36+15;
Down_Panel.Left := 0;
Down_Panel.Height := 50 ;
Down_Panel.Width := 810;
Gen_btn := TButton.Create(obj_MM);
Gen_btn.Parent := Down_panel;
Gen_btn.Name := 'Gen_btn';
Gen_btn.Caption := '������������';
Gen_btn.Top := 10;
Gen_btn.Left := 500;
Gen_btn.Height := 30;
Gen_btn.Width := 280;
Gen_btn.Font.Height := 0;
Gen_btn.Font.Name := 'Times New Roman';
end;

procedure TObj_MM.PhotoInputCreate(cashNumber, index, topBtn, topLabel: integer; btnText: string);
begin
  //������ ������ ����
  OpenFileBtn:= TBitBtn.Create(obj_MM);
  OpenFileBtn.Parent := Cash_Panel;
  OpenFileBtn.Name := 'cash' + IntToStr(cashNumber) + 'OpenFile' + IntToStr(index);
  OpenFileBtn.Caption := cash +' '+ IntToStr(cashNumber)+' ' + btnText;
  OpenFileBtn.Top := topBtn;
  OpenFileBtn.Left := 15;
  OpenFileBtn.Height := 30;
  OpenFileBtn.Width := 280;
  OpenFileBtn.Margin := 0;
  OpenFileBtn.Font.Height := 0;
  OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
  OpenFileBtn.Font.Name := 'Times New Roman';
  OpenFileBtn.Tag := index;
  OpenFileBtn.onClick := OpenFile1Click;

    //����� ���� �����
  FlocLb:= TLabel.Create(obj_MM);
  FlocLb.Parent := Cash_Panel;
  FlocLb.Name := 'Floc' + IntToStr(index);
  FlocLb.Caption := '..';
  FlocLb.Top := topLabel;
  FlocLb.Left := 310;
  FlocLb.Height := 30;
  FlocLb.Font.Name := 'System';
end;

procedure TObj_MM.UksPhotoInputCreate(index: Integer; topBtn: Integer; topLabel: Integer; btnText: string);
begin
  //������ ������ ���
  OpenFileBtn:= TBitBtn.Create(obj_MM);
  OpenFileBtn.Parent := Uks_Panel;
  OpenFileBtn.Name := 'OpenFile' + IntToStr(index);
  OpenFileBtn.Caption := btnText;
  OpenFileBtn.Top := topBtn;
  OpenFileBtn.Left := 15;
  OpenFileBtn.Height := 30;
  OpenFileBtn.Width := 280;
  OpenFileBtn.Margin := 0;
  OpenFileBtn.Font.Height := 0;
  OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
  OpenFileBtn.Font.Name := 'Times New Roman';
  OpenFileBtn.Tag := index;
  OpenFileBtn.onClick := OpenFile1Click;

    //����� ���� �����
  FlocLb:= TLabel.Create(obj_MM);
  FlocLb.Parent := Uks_Panel;
  FlocLb.Name := 'Floc' + IntToStr(index);
  FlocLb.Caption := '..';
  FlocLb.Top := topLabel;
  FlocLb.Left := 310;
  FlocLb.Height := 30;
  FlocLb.Font.Name := 'System';
end;

procedure TObj_MM.OtherPhotoInputCreate(index: Integer; topBtn: Integer; topLabel: Integer; btnText: string);
begin
//������ ������ �������
  OpenFileBtn:= TBitBtn.Create(obj_MM);
  OpenFileBtn.Parent := Other_panel;
  OpenFileBtn.Name := 'OpenFile' + IntToStr(index);
  OpenFileBtn.Caption := btnText;
  OpenFileBtn.Top := topBtn;
  OpenFileBtn.Left := 15;
  OpenFileBtn.Height := 30;
  OpenFileBtn.Width := 280;
  OpenFileBtn.Margin := 0;
  OpenFileBtn.Font.Height := 0;
  OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
  OpenFileBtn.Font.Name := 'Times New Roman';
  OpenFileBtn.Tag := index;
  OpenFileBtn.onClick := OpenFile1Click;

    //����� ���� �����
  FlocLb:= TLabel.Create(obj_MM);
  FlocLb.Parent := Other_panel;
  FlocLb.Name := 'Floc' + IntToStr(index);
  FlocLb.Caption := '..';
  FlocLb.Top := topLabel;
  FlocLb.Left := 310;
  FlocLb.Height := 30;
  FlocLb.Font.Name := 'System';
end;

procedure TObj_MM.OpenFile1Click(Sender: TObject);
var btnID: integer;
begin
  btnID := TButton(Sender).Tag; // ����� �������� id ������ �� ������� ������
  if Open_photo.Execute then (FindComponent('Floc' + IntToStr(btnID)) as TLabel).Caption := Open_photo.FileName;
  // ���� �������� � ������� ����� � ������� � ���� ���� � �����
end;

end.
