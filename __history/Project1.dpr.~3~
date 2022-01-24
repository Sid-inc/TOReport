program Project1;

uses
  Vcl.Forms,
  obj_MM_form in 'obj_MM_form.pas' {Obj_MM},
  obj_MK_form in 'obj_MK_form.pas' {Obj_MK},
  obj_select_form in 'obj_select_form.pas' {obj_sel_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TObj_MM, Obj_MM);
  Application.CreateForm(TObj_MK, Obj_MK);
  Application.CreateForm(Tobj_sel_form, obj_sel_form);
  Application.Run;
end.
