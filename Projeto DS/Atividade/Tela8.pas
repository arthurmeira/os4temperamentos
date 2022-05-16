unit Tela8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tfrm_tela8 = class(TForm)
    Image1: TImage;
    btn_fechar: TButton;
    btn_voltar: TButton;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela8: Tfrm_tela8;

implementation

{$R *.dfm}

uses Tela7;



procedure Tfrm_tela8.btn_fecharClick(Sender: TObject);
begin
  frm_tela8.close;
end;

procedure Tfrm_tela8.btn_voltarClick(Sender: TObject);
begin
  frm_tela8.visible := false;
  frm_tela7.visible := true;
end;

end.
