unit obj_MM_form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs,
  System.ImageList, Vcl.ImgList, Vcl.Menus, FileCtrl, Vcl.Buttons;

type
  TObj_MM = class(TForm)
    object_name: TLabel;
    floc_1: TLabel;
    floc_3: TLabel;
    Make: TButton;
    Open_photo: TOpenPictureDialog;
    floc_2: TLabel;
    destdesc: TLabel;
    destlock: TLabel;
    OpenDir: TButton;
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
    procedure OpenFile1Click(Sender: TObject);
    procedure OpenFile2Click(Sender: TObject);
    procedure OpenFile3Click(Sender: TObject);
    procedure OpenDirClick(Sender: TObject);
    procedure MakeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenFile4Click(Sender: TObject);
    procedure OpenFile5Click(Sender: TObject);
    procedure OpenFile6Click(Sender: TObject);
    procedure OpenFile7Click(Sender: TObject);
    procedure OpenFile8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  obj_MM: Tobj_MM;

implementation

  uses obj_select_form;

{$R *.dfm}

procedure TObj_MM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  obj_sel_form.Close;
end;


procedure TObj_MM.MakeClick(Sender: TObject);
var
  cash1_path, cash2_path, cash3_path, dest_folder: string;
begin
  dest_folder := destlock.Caption; // �������� ���� � ������� �����
  cash1_path := floc_1.Caption; // �������� ���� � ���� ����� 1 �� ������
  cash2_path := floc_2.Caption; // �������� ���� � ���� ����� 2 �� ������
  cash3_path := floc_3.Caption; // �������� ���� � ���� ����� 3 �� ������
  if RenameFile(cash1_path, dest_folder + '\' + '����� 1 ����� ���' + '.jpg') then
    ShowMessage('���� ����� 1 ������������'); // �������������� 1�� ����� ������ �����


end;

procedure TObj_MM.OpenDirClick(Sender: TObject);
var
  dir: String;
begin
  if SelectDirectory('�������� �����, ��� ���������� ������������ ����:', '', dir) then
    destlock.Caption := dir;
    end;

procedure TObj_MM.OpenFile1Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_1.Caption := Open_photo.FileName;
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
