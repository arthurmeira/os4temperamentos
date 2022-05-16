program Project2;

uses
  Vcl.Forms,
  Tela in 'Tela.pas' {frm_tela},
  Tela2 in 'Tela2.pas' {frm_tela2},
  Tela3 in 'Tela3.pas' {frm_tela3},
  Tela4 in 'Tela4.pas' {frm_tela4},
  Tela5 in 'Tela5.pas' {frm_tela5},
  Tela6 in 'Tela6.pas' {frm_tela6},
  Tela7 in 'Tela7.pas' {frm_tela7},
  Tela8 in 'Tela8.pas' {frm_tela8},
  Tela9 in 'Tela9.pas' {frm_tela9},
  Tela10 in 'Tela10.pas' {frm_tela10},
  Tela11 in 'Tela11.pas' {frm_tela11},
  Tela12 in 'Tela12.pas' {frm_tela12};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_tela, frm_tela);
  Application.CreateForm(Tfrm_tela2, frm_tela2);
  Application.CreateForm(Tfrm_tela3, frm_tela3);
  Application.CreateForm(Tfrm_tela4, frm_tela4);
  Application.CreateForm(Tfrm_tela5, frm_tela5);
  Application.CreateForm(Tfrm_tela6, frm_tela6);
  Application.CreateForm(Tfrm_tela7, frm_tela7);
  Application.CreateForm(Tfrm_tela8, frm_tela8);
  Application.CreateForm(Tfrm_tela9, frm_tela9);
  Application.CreateForm(Tfrm_tela10, frm_tela10);
  Application.CreateForm(Tfrm_tela11, frm_tela11);
  Application.CreateForm(Tfrm_tela12, frm_tela12);
  Application.Run;
end.
