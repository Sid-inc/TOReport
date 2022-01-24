unit obj_select_form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  obj_sel_form: Tobj_sel_form;

implementation

{$R *.dfm}

end.
