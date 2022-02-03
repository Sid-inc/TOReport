unit obj_MM_form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs,
  System.ImageList, Vcl.ImgList, Vcl.Menus, FileCtrl, Vcl.Buttons, Vcl.ExtCtrls;

type
  TObj_MM = class(TForm)
    object_name: TLabel;
    floc_1: TLabel;
    floc_3: TLabel;
    Make: TButton;
    Open_photo: TOpenPictureDialog;
    floc_2: TLabel;
    floc_4: TLabel;
    floc_6: TLabel;
    floc_5: TLabel;
    floc_7: TLabel;
    floc_8: TLabel;
    OpenFile1: TBitBtn;
    OpenFile2: TBitBtn;
    OpenFile4: TBitBtn;
    OpenFile3: TBitBtn;
    OpenFile6: TBitBtn;
    OpenFile5: TBitBtn;
    OpenFile8: TBitBtn;
    OpenFile7: TBitBtn;
    BtnBlock: TPanel;
    destlock: TLabel;
    Label1: TLabel;
    ScrollBox1: TScrollBox;
    procedure OpenFile1Click(Sender: TObject);
    procedure OpenFile2Click(Sender: TObject);
    procedure OpenFile3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenFile4Click(Sender: TObject);
    procedure OpenFile5Click(Sender: TObject);
    procedure OpenFile6Click(Sender: TObject);
    procedure OpenFile7Click(Sender: TObject);
    procedure OpenFile8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  obj_MM: Tobj_MM;
  Cash_Panel: TPanel;
  OpenFileBtn: TBitBtn;
  FlocLb : TLabel;
  i: integer;

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
  n: integer; //�������� ����� ����� ��� �������� ������
  BtnToLabel: array[1..5,1..8] of string;
begin
  for n := 1 to obj_select_form.Report.Cashcount do
  begin
    Cash_Panel:= TPanel.Create(obj_MM);
    Cash_Panel.Parent := ScrollBox1;
    Cash_Panel.Name := 'BtnBlock' + IntToStr(n);
    Cash_Panel.Caption := '';
    Cash_Panel.Top := 300*(n-1);
    Cash_Panel.Left := 0;
    Cash_Panel.Height := 300;
    Cash_Panel.Width := 810;
    //�������� � ��������
    //������ 1
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile1';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + inside;
    OpenFileBtn.Top := 10;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Tag := n;
    OpenFileBtn.onClick := OpenFile1Click;

    //����� ���� 1 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb1';
    FlocLb.Caption := '..';
    FlocLb.Top := 15;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';

    //������ 2
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile2';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + allviewitems;
    OpenFileBtn.Top := 45;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.onClick := OpenFile1Click;
    //����� ���� 2 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb2';
    FlocLb.Caption := '..';
    FlocLb.Top := 51;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';

    //������ 3
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile3';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + ibpmark;
    OpenFileBtn.Top := 80;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.onClick := OpenFile1Click;
    //����� ���� 3 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb3';
    FlocLb.Caption := '..';
    FlocLb.Top := 87;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';

    //������ 4
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile4';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + sksmount;
    OpenFileBtn.Top := 115;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.onClick := OpenFile1Click;
    //����� ���� 4 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb4';
    FlocLb.Caption := '..';
    FlocLb.Top := 123;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';

    //������ 5
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile5';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + kkt;
    OpenFileBtn.Top := 150;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.onClick := OpenFile1Click;
    //����� ���� 5 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb5';
    FlocLb.Caption := '..';
    FlocLb.Top := 159;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';

    //������ 6
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile6';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + check;
    OpenFileBtn.Top := 185;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.onClick := OpenFile1Click;
    //����� ���� 6 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb6';
    FlocLb.Caption := '..';
    FlocLb.Top := 195;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';

    //������ 7
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile7';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + allview;
    OpenFileBtn.Top := 220;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.onClick := OpenFile1Click;
    //����� ���� 7 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb7';
    FlocLb.Caption := '..';
    FlocLb.Top := 231;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';

    //������ 8
    OpenFileBtn:= TBitBtn.Create(obj_MM);
    OpenFileBtn.Parent := Cash_Panel;
    OpenFileBtn.Name := 'cash' + IntToStr(n) + 'OpenFile8';
    OpenFileBtn.Caption := cash +' '+ IntToStr(n)+' ' + allviewbuyer;
    OpenFileBtn.Top := 255;
    OpenFileBtn.Left := 15;
    OpenFileBtn.Height := 30;
    OpenFileBtn.Width := 280;
    OpenFileBtn.Margin := 0;
    OpenFileBtn.Font.Height := 0;
    OpenFileBtn.Font.Name := 'Times New Roman';
    OpenFileBtn.Glyph.LoadFromFile('files/add_file_30x30.bmp');
    OpenFileBtn.onClick := OpenFile1Click;
    //����� ���� 8 �����
    FlocLb:= TLabel.Create(obj_MM);
    FlocLb.Parent := Cash_Panel;
    FlocLb.Name := 'FlocCash' + IntToStr(n) + 'Lb8';
    FlocLb.Caption := '..';
    FlocLb.Top := 264;
    FlocLb.Left := 310;
    FlocLb.Height := 30;
    FlocLb.Font.Name := 'System';
  end;
end;

procedure TObj_MM.OpenFile1Click(Sender: TObject);
var btnID: integer;
begin
//if Open_photo.Execute then floc_1.Caption := Open_photo.FileName;
  btnID := TButton(Sender).Tag; // ����� �������� ����� ������ �� ������� ������ (Name �������� ������ �������� �������� 0_�)
  // ������ �� ����� ������ ����� ����� ����� �������� �����, ����� �� ����� =) ����� ������� � ���� ����
  if Open_photo.Execute then (FindComponent('FlocCash' + IntToStr(btnID) + 'Lb1') as TLabel).Caption := Open_photo.FileName;
end;

procedure TObj_MM.OpenFile2Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_2.Caption := Open_photo.FileName;

end;

procedure TObj_MM.OpenFile3Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_3.Caption := Open_photo.FileName;
end;

procedure TObj_MM.OpenFile4Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_4.Caption := Open_photo.FileName;
end;

procedure TObj_MM.OpenFile5Click(Sender: TObject);
begin
if Open_photo.Execute then floc_5.Caption := Open_photo.FileName;
end;

procedure TObj_MM.OpenFile6Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_6.Caption := Open_photo.FileName;
end;

procedure TObj_MM.OpenFile7Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_7.Caption := Open_photo.FileName;
end;

procedure TObj_MM.OpenFile8Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_8.Caption := Open_photo.FileName;
end;

end.
