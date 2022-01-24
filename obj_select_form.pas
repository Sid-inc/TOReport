unit obj_select_form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  obj_sel_form: Tobj_sel_form;
  obj_type: Integer;

implementation

{$R *.dfm}

procedure Tobj_sel_form.MAClick(Sender: TObject);
begin
  obj_type:= 3;
end;

procedure Tobj_sel_form.MKClick(Sender: TObject);
begin
  obj_type:= 2;
end;

procedure Tobj_sel_form.MMClick(Sender: TObject);
begin
  obj_type:= 1;
end;

procedure Tobj_sel_form.next_buttonClick(Sender: TObject);
begin
  case obj_type of
    1: begin
      obj_MM.Show;
      obj_sel_form.Hide;
    end;
    2: ShowMessage('������� �� ����� �K');
    3: ShowMessage('������� �� ����� �A');
  end;
end;

end.