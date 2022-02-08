program Project1;

uses
  Vcl.Forms,
  obj_MM_form in 'obj_MM_form.pas' {Obj_MM},
  obj_select_form in 'obj_select_form.pas' {obj_sel_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tobj_sel_form, obj_sel_form);
  Application.CreateForm(TObj_MM, Obj_MM);
  Application.Run;
end.
