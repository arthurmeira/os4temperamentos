unit Tela4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_tela4 = class(TForm)
    Image1: TImage;
    cb_pg5c1: TComboBox;
    cb_pg5c2: TComboBox;
    cb_pg5c3: TComboBox;
    cb_pg5c4: TComboBox;
    cb_pg6c1: TComboBox;
    cb_pg6c2: TComboBox;
    cb_pg6c3: TComboBox;
    cb_pg6c4: TComboBox;
    cb_pg7c1: TComboBox;
    cb_pg7c2: TComboBox;
    cb_pg7c3: TComboBox;
    cb_pg7c4: TComboBox;
    cb_pg8c1: TComboBox;
    cb_pg8c2: TComboBox;
    cb_pg8c3: TComboBox;
    cb_pg8c4: TComboBox;
    btn_avancar3: TButton;
    btn_sair2: TButton;
    btn_ajuda: TButton;
    procedure btn_avancar3Click(Sender: TObject);
    procedure btn_sair2Click(Sender: TObject);
    procedure btn_ajudaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela4: Tfrm_tela4;
  a2, b2, c2, d2: integer;

implementation

{$R *.dfm}

uses Tela, Tela5, Tela7, Tela12;

procedure Tfrm_tela4.btn_ajudaClick(Sender: TObject);
begin
  frm_tela12.visible := true;
end;

procedure Tfrm_tela4.btn_avancar3Click(Sender: TObject);
begin

  // Parte 1
  if (cb_pg5c1.text <> cb_pg5c2.text) and
     (cb_pg5c1.text <> cb_pg5c3.text) and
     (cb_pg5c1.text <> cb_pg5c4.text) then
  begin
    if (cb_pg5c2.text <> cb_pg5c3.text) and
       (cb_pg5c2.text <> cb_pg5c4.text) then
    begin
      if (cb_pg5c3.text <> cb_pg5c4.text) then
      begin
        // Parte 2
        if (cb_pg6c1.text <> cb_pg6c2.text) and
           (cb_pg6c1.text <> cb_pg6c3.text) and
           (cb_pg6c1.text <> cb_pg6c4.text) then
        begin
          if (cb_pg6c2.text <> cb_pg6c3.text) and
             (cb_pg6c2.text <> cb_pg6c4.text) then
          begin
            if (cb_pg6c3.text <> cb_pg6c4.text) then
            begin
              // Parte 3
              if (cb_pg7c1.text <> cb_pg7c2.text) and
                 (cb_pg7c1.text <> cb_pg7c3.text) and
                 (cb_pg7c1.text <> cb_pg7c4.text) then
              begin
                if (cb_pg7c2.text <> cb_pg7c3.text) and
                   (cb_pg7c2.text <> cb_pg7c4.text) then
                begin
                  if (cb_pg7c3.text <> cb_pg7c4.text) then
                  begin
                    // Parte 4
                    if (cb_pg8c1.text <> cb_pg8c2.text) and
                       (cb_pg8c1.text <> cb_pg8c3.text) and
                       (cb_pg8c1.text <> cb_pg8c4.text) then
                    begin
                      if (cb_pg8c2.text <> cb_pg8c3.text) and
                         (cb_pg8c2.text <> cb_pg8c4.text) then
                      begin
                        if (cb_pg8c3.text <> cb_pg8c4.text) then
                        begin

                            frm_tela4.visible := false;
                            frm_tela5.Visible := true;

                            //Soma
                            a2:= (StrToInt(cb_pg5c1.text) + StrToInt(cb_pg6c1.text) + StrToInt(cb_pg7c1.text) + StrToInt(cb_pg8c1.text));
                            b2:= (StrToInt(cb_pg5c2.text) + StrToInt(cb_pg6c2.text) + StrToInt(cb_pg7c2.text) + StrToInt(cb_pg8c2.text));
                            c2:= (StrToInt(cb_pg5c3.text) + StrToInt(cb_pg6c3.text) + StrToInt(cb_pg7c3.text) + StrToInt(cb_pg8c3.text));
                            d2:= (StrToInt(cb_pg5c4.text) + StrToInt(cb_pg6c4.text) + StrToInt(cb_pg7c4.text) + StrToInt(cb_pg8c4.text));

                        end else
                          showmessage('Erro! Confira as respostas da quarta pergunta.');
                      end else
                        showmessage('Erro! Confira as respostas da quarta pergunta.');
                    end else
                      showmessage('Erro! Confira as respostas da quarta pergunta.');
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

procedure Tfrm_tela4.btn_sair2Click(Sender: TObject);
begin
  frm_tela4.Close;
end;

end.
