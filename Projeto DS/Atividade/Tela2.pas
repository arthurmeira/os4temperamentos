unit Tela2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_tela2 = class(TForm)
    Image1: TImage;
    btn_avancar1: TButton;
    Fechar: TButton;
    procedure btn_avancar1Click(Sender: TObject);
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela2: Tfrm_tela2;

implementation

{$R *.dfm}

uses Tela, Tela3;

procedure Tfrm_tela2.btn_avancar1Click(Sender: TObject);
begin
  frm_tela2.visible := false;
  frm_tela3.Visible := true;
end;

procedure Tfrm_tela2.FecharClick(Sender: TObject);
begin
  frm_tela2.Close;
end;

end.
