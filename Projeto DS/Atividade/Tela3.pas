unit Tela3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_tela3 = class(TForm)
    Image1: TImage;
    cb_pg1c1: TComboBox;
    cb_pg1c2: TComboBox;
    cb_pg1c3: TComboBox;
    cb_pg1c4: TComboBox;
    cb_pg2c1: TComboBox;
    cb_pg2c2: TComboBox;
    cb_pg2c3: TComboBox;
    cb_pg2c4: TComboBox;
    cb_pg3c1: TComboBox;
    cb_pg3c2: TComboBox;
    cb_pg3c3: TComboBox;
    cb_pg3c4: TComboBox;
    cb_pg4c1: TComboBox;
    cb_pg4c2: TComboBox;
    cb_pg4c3: TComboBox;
    cb_pg4c4: TComboBox;
    btn_avancar2: TButton;
    btn_sair: TButton;
    btn_ajuda: TButton;
    procedure btn_avancar2Click(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_ajudaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela3: Tfrm_tela3;
  a1, b1, c1, d1: integer;

implementation

{$R *.dfm}

uses Tela, Tela4, Tela7, Tela12;

procedure Tfrm_tela3.btn_ajudaClick(Sender: TObject);
begin
  frm_tela12.visible := true;
end;

procedure Tfrm_tela3.btn_avancar2Click(Sender: TObject);
begin
  // Parte 1
  if (cb_pg1c1.text <> cb_pg1c2.text) and
     (cb_pg1c1.text <> cb_pg1c3.text) and
     (cb_pg1c1.text <> cb_pg1c4.text) then
  begin
    if (cb_pg1c2.text <> cb_pg1c3.text) and
       (cb_pg1c2.text <> cb_pg1c4.text) then
    begin
      if (cb_pg1c3.text <> cb_pg1c4.text) then
      begin
        // Parte 2
        if (cb_pg2c1.text <> cb_pg2c2.text) and
           (cb_pg2c1.text <> cb_pg2c3.text) and
           (cb_pg2c1.text <> cb_pg2c4.text) then
        begin
          if (cb_pg2c2.text <> cb_pg2c3.text) and
             (cb_pg2c2.text <> cb_pg2c4.text) then
          begin
            if (cb_pg2c3.text <> cb_pg2c4.text) then
            begin
              // Parte 3
              if (cb_pg3c1.text <> cb_pg3c2.text) and
                 (cb_pg3c1.text <> cb_pg3c3.text) and
                 (cb_pg3c1.text <> cb_pg3c4.text) then
              begin
                if (cb_pg3c2.text <> cb_pg3c3.text) and
                   (cb_pg3c2.text <> cb_pg3c4.text) then
                begin
                  if (cb_pg3c3.text <> cb_pg3c4.text) then
                  begin
                    // Parte 4
                    if (cb_pg4c1.text <> cb_pg4c2.text) and
                       (cb_pg4c1.text <> cb_pg4c3.text) and
                       (cb_pg4c1.text <> cb_pg4c4.text) then
                    begin
                      if (cb_pg4c2.text <> cb_pg4c3.text) and
                         (cb_pg4c2.text <> cb_pg4c4.text) then
                      begin
                        if (cb_pg4c3.text <> cb_pg4c4.text) then
                        begin

                          frm_tela3.visible := false;
                          frm_tela4.visible := true;

                          //Soma
                          a1:= (StrToInt(cb_pg1c1.text) + StrToInt(cb_pg2c1.text) + StrToInt(cb_pg3c1.text) + StrToInt(cb_pg4c1.text));
                          b1:= (StrToInt(cb_pg1c2.text) + StrToInt(cb_pg2c2.text) + StrToInt(cb_pg3c2.text) + StrToInt(cb_pg4c2.text));
                          c1:= (StrToInt(cb_pg1c3.text) + StrToInt(cb_pg2c3.text) + StrToInt(cb_pg3c3.text) + StrToInt(cb_pg4c3.text));
                          d1:= (StrToInt(cb_pg1c4.text) + StrToInt(cb_pg2c4.text) + StrToInt(cb_pg3c4.text) + StrToInt(cb_pg4c4.text));

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

  procedure Tfrm_tela3.btn_sairClick(Sender: TObject);
  begin
    frm_tela3.Close;
  end;

end.
