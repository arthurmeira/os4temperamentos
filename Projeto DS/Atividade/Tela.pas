unit Tela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  Tfrm_tela = class(TForm)
    barra: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela: Tfrm_tela;

implementation

{$R *.dfm}

uses Tela2;

procedure Tfrm_tela.Timer1Timer(Sender: TObject);
begin
  barra.position := barra.position + 5;
  if barra.position = 100 then
  begin
    frm_tela.visible := false;
    frm_tela2.visible := true;
    timer1.enabled := false;
  end;
end;

end.
