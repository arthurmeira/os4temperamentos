unit Tela10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tfrm_tela10 = class(TForm)
    Image1: TImage;
    btn_voltar: TButton;
    btn_fechar: TButton;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela10: Tfrm_tela10;

implementation

{$R *.dfm}

uses Tela7;

procedure Tfrm_tela10.btn_fecharClick(Sender: TObject);
begin
  frm_tela10.close;
end;

procedure Tfrm_tela10.btn_voltarClick(Sender: TObject);
begin
  frm_tela10.visible := false;
  frm_tela7.visible := true;
end;

end.
