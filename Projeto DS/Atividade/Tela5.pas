unit Tela5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_tela5 = class(TForm)
    Image1: TImage;
    cb_pg9c1: TComboBox;
    cb_pg9c2: TComboBox;
    cb_pg9c3: TComboBox;
    cb_pg9c4: TComboBox;
    cb_pg10c1: TComboBox;
    cb_pg10c2: TComboBox;
    cb_pg10c3: TComboBox;
    cb_pg10c4: TComboBox;
    cb_pg11c1: TComboBox;
    cb_pg11c2: TComboBox;
    cb_pg11c3: TComboBox;
    cb_pg11c4: TComboBox;
    cb_pg12c1: TComboBox;
    cb_pg12c2: TComboBox;
    cb_pg12c3: TComboBox;
    cb_pg12c4: TComboBox;
    btn_avancar4: TButton;
    btn_sair3: TButton;
    btn_ajuda: TButton;
    procedure btn_avancar4Click(Sender: TObject);
    procedure btn_sair3Click(Sender: TObject);
    procedure btn_ajudaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela5: Tfrm_tela5;
  a3, b3, c3, d3: integer;

implementation

{$R *.dfm}

uses Tela, Tela6, Tela7, Tela12;

procedure Tfrm_tela5.btn_ajudaClick(Sender: TObject);
begin
  frm_tela12.visible := true;
end;

procedure Tfrm_tela5.btn_avancar4Click(Sender: TObject);
begin

  // Parte 1
  if (cb_pg9c1.text <> cb_pg9c2.text) and
     (cb_pg9c1.text <> cb_pg9c3.text) and
     (cb_pg9c1.text <> cb_pg9c4.text) then
  begin
    if (cb_pg9c2.text <> cb_pg9c3.text) and
       (cb_pg9c2.text <> cb_pg9c4.text) then
    begin
      if (cb_pg9c3.text <> cb_pg9c4.text) then
      begin
        // Parte 2
        if (cb_pg10c1.text <> cb_pg10c2.text) and
           (cb_pg10c1.text <> cb_pg10c3.text) and
           (cb_pg10c1.text <> cb_pg10c4.text) then
        begin
          if (cb_pg10c2.text <> cb_pg10c3.text) and
             (cb_pg10c2.text <> cb_pg10c4.text) then
          begin
            if (cb_pg10c3.text <> cb_pg10c4.text) then
            begin
              // Parte 3
              if (cb_pg11c1.text <> cb_pg11c2.text) and
                 (cb_pg11c1.text <> cb_pg11c3.text) and
                 (cb_pg11c1.text <> cb_pg11c4.text) then
              begin
                if (cb_pg11c2.text <> cb_pg11c3.text) and
                   (cb_pg11c2.text <> cb_pg11c4.text) then
                begin
                  if (cb_pg11c3.text <> cb_pg11c4.text) then
                  begin
                    // Parte 4
                    if (cb_pg12c1.text <> cb_pg12c2.text) and
                       (cb_pg12c1.text <> cb_pg12c3.text) and
                       (cb_pg12c1.text <> cb_pg12c4.text) then
                    begin
                      if (cb_pg12c2.text <> cb_pg12c3.text) and
                         (cb_pg12c2.text <> cb_pg12c4.text) then
                      begin
                        if (cb_pg12c3.text <> cb_pg12c4.text) then
                        begin

                            frm_tela5.visible := false;
                            frm_tela6.Visible := true;

                            //Soma
                            a3:= (StrToInt(cb_pg9c1.text) + StrToInt(cb_pg10c1.text) + StrToInt(cb_pg11c1.text) + StrToInt(cb_pg12c1.text));
                            b3:= (StrToInt(cb_pg9c2.text) + StrToInt(cb_pg10c2.text) + StrToInt(cb_pg11c2.text) + StrToInt(cb_pg12c2.text));
                            c3:= (StrToInt(cb_pg9c3.text) + StrToInt(cb_pg10c3.text) + StrToInt(cb_pg11c3.text) + StrToInt(cb_pg12c3.text));
                            d3:= (StrToInt(cb_pg9c4.text) + StrToInt(cb_pg10c4.text) + StrToInt(cb_pg11c4.text) + StrToInt(cb_pg12c4.text));

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

procedure Tfrm_tela5.btn_sair3Click(Sender: TObject);
begin
  frm_tela5.Close;
end;

end.
