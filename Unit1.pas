unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs,
  System.ImageList, Vcl.ImgList, Vcl.Menus, FileCtrl;

type
  TForm1 = class(TForm)
    object_name: TLabel;
    OpenFile1: TButton;
    OpenFile3: TButton;
    fname_1: TLabel;
    fname_2: TLabel;
    fname_3: TLabel;
    floc_1: TLabel;
    floc_3: TLabel;
    Make: TButton;
    Open_photo: TOpenPictureDialog;
    floc_2: TLabel;
    OpenFile2: TButton;
    destdesc: TLabel;
    destlock: TLabel;
    OpenDir: TButton;
    OpenDialog1: TOpenDialog;
    procedure OpenFile1Click(Sender: TObject);
    procedure OpenFile2Click(Sender: TObject);
    procedure OpenFile3Click(Sender: TObject);
    procedure OpenDirClick(Sender: TObject);
    procedure MakeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.MakeClick(Sender: TObject);
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

procedure TForm1.OpenDirClick(Sender: TObject);
var
  dir: String;
begin
  if SelectDirectory('�������� �����, ��� ���������� ������������ ����:', '', dir) then
    destlock.Caption := dir;
end;

procedure TForm1.OpenFile1Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_1.Caption := Open_photo.FileName;
end;

procedure Tform1.OpenFile2Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_2.Caption := Open_photo.FileName;

end;

procedure TForm1.OpenFile3Click(Sender: TObject);
begin
  if Open_photo.Execute then floc_3.Caption := Open_photo.FileName;
end;

end.
