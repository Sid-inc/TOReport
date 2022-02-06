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
  n, index: integer; //�������� ����� ����� ��� �������� ������
begin
  index := 0;
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
    PhotoInputCreate(n, index, 10, 15, inside);
    index := index + 1;

    //������ 2
    PhotoInputCreate(n, index, 45, 51, allviewitems);
    index := index + 1;

    //������ 3
    PhotoInputCreate(n, index, 80, 87, ibpmark);
    index := index + 1;

    //������ 4
    PhotoInputCreate(n, index, 115, 123, sksmount);
    index := index + 1;

    //������ 5
    PhotoInputCreate(n, index, 150, 159, kkt);
    index := index + 1;

    //������ 6
    PhotoInputCreate(n, index, 185, 195, check);
    index := index + 1;

    //������ 7
    PhotoInputCreate(n, index, 220, 231, allview);
    index := index + 1;

    //������ 8
    PhotoInputCreate(n, index, 255, 264, allviewbuyer);
    index := index + 1;
  end;
end;

procedure TObj_MM.PhotoInputCreate(cashNumber, index, topBtn, topLabel: integer; btnText: string);
begin
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

  //����� ���� 1 �����
  FlocLb:= TLabel.Create(obj_MM);
  FlocLb.Parent := Cash_Panel;
  FlocLb.Name := 'FlocCash' + IntToStr(index);
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
  if Open_photo.Execute then (FindComponent('FlocCash' + IntToStr(btnID)) as TLabel).Caption := Open_photo.FileName;
  // ���� �������� � ������� ����� � ������� � ���� ���� � �����
end;

end.
