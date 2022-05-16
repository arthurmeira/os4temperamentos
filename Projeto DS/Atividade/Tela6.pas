unit Tela6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_tela6 = class(TForm)
    Image1: TImage;
    cb_pg13c1: TComboBox;
    cb_pg13c2: TComboBox;
    cb_pg13c3: TComboBox;
    cb_pg13c4: TComboBox;
    cb_pg14c1: TComboBox;
    cb_pg14c2: TComboBox;
    cb_pg14c3: TComboBox;
    cb_pg14c4: TComboBox;
    cb_pg15c1: TComboBox;
    cb_pg15c2: TComboBox;
    cb_pg15c3: TComboBox;
    cb_pg15c4: TComboBox;
    btn_avancar5: TButton;
    btn_sair4: TButton;
    btn_ajuda: TButton;
    procedure btn_sair4Click(Sender: TObject);
    procedure btn_avancar5Click(Sender: TObject);
    procedure btn_ajudaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela6: Tfrm_tela6;
  a4, b4, c4, d4: integer;

implementation

{$R *.dfm}

uses Tela, Tela7, Tela12;

procedure Tfrm_tela6.btn_ajudaClick(Sender: TObject);
begin
  frm_tela12.visible := true;
end;

procedure Tfrm_tela6.btn_avancar5Click(Sender: TObject);
begin

// Parte 1
  if (cb_pg13c1.text <> cb_pg13c2.text) and
     (cb_pg13c1.text <> cb_pg13c3.text) and
     (cb_pg13c1.text <> cb_pg13c4.text) then
  begin
    if (cb_pg13c2.text <> cb_pg13c3.text) and
       (cb_pg13c2.text <> cb_pg13c4.text) then
    begin
      if (cb_pg13c3.text <> cb_pg13c4.text) then
      begin
        // Parte 2
        if (cb_pg14c1.text <> cb_pg14c2.text) and
           (cb_pg14c1.text <> cb_pg14c3.text) and
           (cb_pg14c1.text <> cb_pg14c4.text) then
        begin
          if (cb_pg14c2.text <> cb_pg14c3.text) and
             (cb_pg14c2.text <> cb_pg14c4.text) then
          begin
            if (cb_pg14c3.text <> cb_pg14c4.text) then
            begin
              // Parte 3
              if (cb_pg15c1.text <> cb_pg15c2.text) and
                 (cb_pg15c1.text <> cb_pg15c3.text) and
                 (cb_pg15c1.text <> cb_pg15c4.text) then
              begin
                if (cb_pg15c2.text <> cb_pg15c3.text) and
                   (cb_pg15c2.text <> cb_pg15c4.text) then
                begin
                  if (cb_pg15c3.text <> cb_pg15c4.text) then
                  begin

                      frm_tela6.visible := false;
                      frm_tela7.Visible := true;

                      //Soma
                      a4:= (StrToInt(cb_pg13c1.text) + StrToInt(cb_pg14c1.text) + StrToInt(cb_pg15c1.text));
                      b4:= (StrToInt(cb_pg13c2.text) + StrToInt(cb_pg14c2.text) + StrToInt(cb_pg15c2.text));
                      c4:= (StrToInt(cb_pg13c3.text) + StrToInt(cb_pg14c3.text) + StrToInt(cb_pg15c3.text));
                      d4:= (StrToInt(cb_pg13c4.text) + StrToInt(cb_pg14c4.text) + StrToInt(cb_pg15c4.text));

                  end else
                    showmessage('Erro! Confira as respostas da terceira pergunta.');
                end else
                  showmessage('Erro! Confira as respostas da terceira pergunta.');
              end else
                showmessage('Erro! Confira as respostas da terceira pergunta.');
            end else
              showmessage('Erro! Confira as respostas da segunda pergunta.');
          end else
            showmessage('Erro! Confira as respostas da segunda pergunta.');
        end else
          showmessage('Erro! Confira as respostas da segunda pergunta.');
      end else
        showmessage('Erro! Confira as respostas da primeira pergunta.');
    end else
      showmessage('Erro! Confira as respostas da primeira pergunta.');
  end else
    showmessage('Erro! Confira as respostas da primeira pergunta.');

end;

procedure Tfrm_tela6.btn_sair4Click(Sender: TObject);
begin
  frm_tela6.Close;
end;

end.
