unit Tela12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  Tfrm_tela12 = class(TForm)
    Image1: TImage;
    btn_fechar: TButton;
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela12: Tfrm_tela12;

implementation

{$R *.dfm}

procedure Tfrm_tela12.btn_fecharClick(Sender: TObject);
begin
  frm_tela12.visible := false;
end;

end.
