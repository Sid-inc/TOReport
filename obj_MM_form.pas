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
    RenameButton: TButton;
    procedure OpenFile1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure PhotoInputCreate(index, topBtn, topLabel: integer; pr_pan: TWinControl; btnText, keId: string);
    procedure RenameButtonClick(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
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

implementation

  uses obj_select_form;

{$R *.dfm}

procedure TObj_MM.CreateParams (var Params: TCreateParams);
begin
inherited CreateParams(Params);
  Params.WndParent:= GetDesktopWindow; // ???????? ????? ???????? ?????
end;

procedure TObj_MM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  obj_sel_form.Close;
end;

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
  n, t, a, m, x, y, u, u1, index: integer;
  //??? n - ??? ????, t - ??? ???, a - ??? ??, m - ??? ??, x ? y ??? ??????????? ????? ??????? ??????????, ???????????? ???????????
begin
  obj_MM.Caption := '????? ?????? ??? ' + obj_select_form.Report.Rtype;
  index := 0;
  for n := 1 to obj_select_form.Report.Cashcount do
  begin
    Cash_Panel:= TPanel.Create(obj_MM);
    Cash_Panel.Parent := ScrollBox1;
    Cash_Panel.Name := 'BtnBlock' + IntToStr(n);
    Cash_Panel.Caption := '';
    Cash_Panel.Left := 0;
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    Cash_Panel.Height := 560;
    end
    else
    Cash_Panel.Height := 524;
    Cash_Panel.Width := 810;
    Cash_Panel.Top := Cash_Panel.Height *(n-1);
    //???????? ? ???????? ??? ????
    //?????? 1
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, 10, 15, Cash_Panel, cash +' '+ IntToStr(n)+' ' + inside, '');
    index := index + 1;
    end
    else
    PhotoInputCreate(index, 10, 15, Cash_Panel, cash +' '+ IntToStr(n)+' ' + insidemk, '');
    index := index + 1;

    //?????? 2
    PhotoInputCreate(index, 46, 52, Cash_Panel, cash +' '+ IntToStr(n)+' ' + allviewitems, '');
    index := index + 1;
    //?????? 3
    PhotoInputCreate(index, 82, 89, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ibpmark, '');
    index := index + 1;

    //?????? 4
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, 118, 125, Cash_Panel, cash +' '+ IntToStr(n)+' ' + sksmount, '');
    index := index + 1;
    end
    else
    PhotoInputCreate(index, 118, 125, Cash_Panel, cash +' '+ IntToStr(n)+' ' + allitemsmark, '');
    index := index + 1;

    //?????? 5
    PhotoInputCreate(index, 154, 162, Cash_Panel, cash +' '+ IntToStr(n)+' ' + kkt, '');
    index := index + 1;
    //?????? 6
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, 190, 197, Cash_Panel, cash +' '+ IntToStr(n)+' ' + check, '');
    index := index + 1;
    end
    else
    PhotoInputCreate(index, 190, 197, Cash_Panel, cash +' '+ IntToStr(n)+' ' + checkmk, '');
    index := index + 1;

    //?????? 7
    PhotoInputCreate(index, 226, 233, Cash_Panel, cash +' '+ IntToStr(n)+' ' + allview, '');
    index := index + 1;
    //?????? 8
    PhotoInputCreate(index, 262, 270, Cash_Panel, cash +' '+ IntToStr(n)+' ' + allviewbuyer, '');
    index := index + 1;
    //?????? 9
    PhotoInputCreate(index, 298, 306, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ke + ' '+ pc, '1');
    index := index + 1;
    //?????? 10
    PhotoInputCreate(index, 334, 342, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ke+ ' '+ ibp, '1');
    index := index + 1;
    //?????? 11
    PhotoInputCreate(index, 370, 378, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ke +' '+ pinpad, '1');
    index := index + 1;
    //?????? 12
    PhotoInputCreate(index, 406, 414, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ke + ' '+ scan, '1');
    index := index + 1;
    //?????? 13
    PhotoInputCreate(index, 442, 450, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ke + ' ' + hand, '1');
    index := index + 1;
    //?????? 14
    PhotoInputCreate(index, 478, 486, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ke + ' ' + kkt, '1');
    index := index + 1;
    //?????? 15
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, 514, 522, Cash_Panel, cash +' '+ IntToStr(n)+' ' + ke + ' ' + scales, '1');
    index := index + 1;
    end;


  end;

    //?????? ??? ???? ???
    Uks_Panel:= TPanel.Create(obj_MM);
    Uks_Panel.Parent := ScrollBox1;
    Uks_Panel.Name := 'BtnBlock_uks';
    Uks_Panel.Caption := '';
    Uks_Panel.Top := Cash_Panel.Height *(n-1);
    Uks_Panel.Left := 0;
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    Uks_Panel.Height := 1021;
    end
    else
    Uks_Panel.Height := 913;
    Uks_Panel.Width := 810;
    //?????? ??????? ??? ??????
    u := 10;
    u1 := 15;
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    //?????? 1
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+pcdir, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 2
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+pcserv, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end
    else
    begin
    //?????? 1
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+pcdirmk, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 2
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+pcservmk, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end;
    //?????? 3
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+egais, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end;
    //?????? 4
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+rout, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 5
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+hub, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 6
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+hubtd, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 7
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+bpmark, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? ?????????? ??2 ??? ??
    if obj_select_form.Report.Rtype = 'MK' then
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+bpmark + ' 2', '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end;
    //?????? 8
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allviewb, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 9
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allviewf, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 10
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allviewm, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;

    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allviewloc, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end
    else
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allview + ' 1', '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 9
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allview + ' 2', '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 10
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allview + ' 3' , '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end;
    //?????? 11
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+swith, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end
    else
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+allviewbuyer, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end;
    //?????? 12
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+wifi + ' (WiFi)', '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 13
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+a4prt, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 14
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+a4prt+' ???????????', '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 15
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+testpage, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 16
    PhotoInputCreate(index, u, u1, Uks_Panel, nut, '');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 17
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+ pcdirmk + ' ' + ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 18
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+ ibp + ' ' + pcdirmk+ ' ' + ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 19
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+ pc + ' ' + pcservmk + ' ' + ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 20
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' '+ ibp + ' ' + pcservmk + ' ' + ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 21
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' ' + mon19 + ' ' +ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 22
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' ' + wifi + ' '+ ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 23
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' ' + a4prt + ' '+ ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 24
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' ' + a4scan + ' ' + ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    end;
    //?????? 25
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' ' + master + ' ' +ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 26
    PhotoInputCreate(index, u, u1, Uks_Panel, uks+' ' + reserv + ' ' + ke, '1');
    index := index + 1;
    u:= u +36;
    u1 := u1 + 36;
    //?????? 27
    if obj_select_form.Report.Rtype = 'MM' then
    begin
    PhotoInputCreate(index, u, u1, Uks_Panel, floor_scales + ' ' + ke, '1');
    index := index + 1;
    end;

    //?????? ??? ???????
    Other_Panel:= TPanel.Create(obj_MM);
    Other_Panel.Parent := ScrollBox1;
    Other_Panel.Name := 'BtnBlock_other';
    Other_Panel.Caption := '';
    Other_Panel.Top := Uks_Panel.Height + Cash_Panel.Height *(n-1);
    Other_Panel.Left := 0;
    Other_Panel.Height := (3 + Report.tsdcount*2 + Report.apcount*3 + Report.mpcount*3)*36+15 ;
    Other_Panel.Width := 810;

    //??????
    PhotoInputCreate(index, 10, 15, Other_panel, plan, '');
    index := index + 1;
    //??????
    PhotoInputCreate(index, 46, 52, Other_panel, chklst + ' 1', '');
    index := index + 1;
    //??????
    PhotoInputCreate(index, 82, 89, Other_panel, chklst + ' 2','');
    index := index + 1;

    //?????? ???
    for t := 1 to Report.tsdcount do
    begin
    PhotoInputCreate(index, 118+72*(t-1), 125+72*(t-1), Other_panel, tsd+IntToStr(t)+' '+ view, '');
    index := index + 1;
    PhotoInputCreate(index, 154+72*(t-1), 162+72*(t-1), Other_panel, tsd+IntToStr(t)+' '+ ke, '1');
    index := index + 1;
    end;
    x :=  118+72*(t-1);
    y :=  125+72*(t-1);
    //?????? ??
    for m := 1 to Report.mpcount do
    begin
    PhotoInputCreate(index, x+108*(m-1), y+108*(m-1), Other_panel, mp+IntToStr(m)+' '+ view, '');
    index := index + 1;
    PhotoInputCreate(index, x+36+108*(m-1), y+36+108*(m-1), Other_panel, mp+IntToStr(m)+' '+ prt, '');
    index := index + 1;
    PhotoInputCreate(index, x+72+108*(m-1), y+72+108*(m-1), Other_panel, mp+IntToStr(m)+' '+ ke, '1');
    index := index + 1;
    end;
    x := x+108*(m-1);
    y := y+108*(m-1);
    //?????? ??
    for a := 1 to Report.apcount do
    begin
    PhotoInputCreate(index, x+108*(a-1), y+108*(a-1), Other_panel, ap+IntToStr(a)+' '+ mark, '');
    index := index + 1;
    PhotoInputCreate(index, x+36+108*(a-1), y+36+108*(a-1), Other_panel, ap+IntToStr(a)+' '+ install, '');
    index := index + 1;
    PhotoInputCreate(index, x+72+108*(a-1), y+72+108*(a-1), Other_panel, ap+IntToStr(a)+' '+ ke, '1');
    index := index + 1;
    end;

end;

procedure TObj_MM.PhotoInputCreate(index, topBtn, topLabel: integer; pr_pan: TWinControl; btnText, keId: string);
begin
  //?????? ?????? ????
  OpenFileBtn:= TBitBtn.Create(obj_MM);
  OpenFileBtn.Parent := pr_pan;
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

  obj_select_form.Report.photos[index + 1, 1] := OpenFileBtn.Caption; // ?????????? ? ?????? ??????? ?????? ???????? ??? ????
  obj_select_form.Report.photos[index + 1, 3] := keId; // ?????????? ? ?????? ??????? ?????? ??????? ??

    //????? ???? ?????
  FlocLb:= TLabel.Create(obj_MM);
  FlocLb.Parent := pr_pan;
  FlocLb.Name := 'Floc' + IntToStr(index);
  FlocLb.Caption := '..';
  FlocLb.Top := topLabel;
  FlocLb.Left := 310;
  FlocLb.Height := 30;
  FlocLb.Font.Name := 'System';
end;

procedure TObj_MM.RenameButtonClick(Sender: TObject);
var MainDir: string;
 item, properti: integer;
begin
  MainDir := obj_select_form.Report.Dlock + '\' + obj_select_form.Report.OOname;
  if CreateDir(MainDir) then // ??????? ????? ? ????????? ????????
  begin
    CreateDir(MainDir + '\' + ke); // ??????? ????? ??? ??
    for item := 1 to 200 do  // ????????? ?????? ? ??????? ? ????
    begin
      for properti := 1 to 3 do
      begin

        if obj_select_form.Report.photos[item, 1] <> '' then // ???? ?????? ???????? ?? ??????, ?????? ???? ?????? ? ????
          if obj_select_form.Report.photos[item, 3] = '' then // ???? ??????? ?? ?????? ?????? ?????? ???? ? ???????? ?????
            CopyFile(PChar(obj_select_form.Report.photos[item, 2]), PChar(MainDir + '\' + obj_select_form.Report.photos[item, 1] + '.jpg'), false)
          else // ???? ??????? ?? ?? ?????? ?????? ?????? ???? ? ????? ??
            CopyFile(PChar(obj_select_form.Report.photos[item, 2]), PChar(MainDir + '\' + ke+ '\'  + obj_select_form.Report.photos[item, 1] + '.jpg'), false)
      end;
    end;
    ShowMessage('????? ??????? ???????????');
  end
  else
   ShowMessage('??????: ????? ?? ???????. ????? ??? ?????????? ??? ??? ??????? ? ???????? ???????.');
end;

procedure TObj_MM.OpenFile1Click(Sender: TObject);
var btnID: integer;
begin
  btnID := TButton(Sender).Tag; // ????? ???????? id ?????? ?? ??????? ??????
  if Open_photo.Execute then
    begin
      (FindComponent('Floc' + IntToStr(btnID)) as TLabel).Caption := Open_photo.FileName;// ???? ???????? ? ??????? ????? ? ??????? ? ???? ???? ? ?????
      TBitBtn(Sender).Glyph.LoadFromFile('files/add_file_30x30checked.bmp'); // ?????? ?????? ?? ??????
      obj_select_form.Report.photos[TButton(Sender).Tag + 1, 2] := Open_photo.FileName; // ?????????? ? ?????? ??????? ?????? ???? ??? ????
    end;
end;

end.
