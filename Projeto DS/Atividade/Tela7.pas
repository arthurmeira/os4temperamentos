unit Tela7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfrm_tela7 = class(TForm)
    btn_sair5: TButton;
    Image1: TImage;
    barra1: TProgressBar;
    barra2: TProgressBar;
    barra3: TProgressBar;
    barra4: TProgressBar;
    Timer1: TTimer;
    lbl_resultado: TLabel;
    btn_mostrar1: TButton;
    btn_mostrar2: TButton;
    btn_mostrar4: TButton;
    btn_mostrar3: TButton;
    lbl_palavra: TLabel;
    lbl_total1: TLabel;
    lbl_total2: TLabel;
    lbl_total3: TLabel;
    lbl_total4: TLabel;
    lbl_res: TLabel;
    lbl_pchave: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btn_mostrar1Click(Sender: TObject);
    procedure btn_mostrar2Click(Sender: TObject);
    procedure btn_mostrar3Click(Sender: TObject);
    procedure btn_mostrar4Click(Sender: TObject);
    procedure btn_sair5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela7: Tfrm_tela7;
  col1, col2, col3, col4, maior: integer;

implementation

{$R *.dfm}

uses Tela, Tela2, Tela3, Tela4, Tela5, Tela6, Tela8, Tela9, Tela10, Tela11, Tela12;

//O que é cada coluna
procedure Tfrm_tela7.btn_mostrar1Click(Sender: TObject);
begin
  frm_tela7.visible := false;
  frm_tela8.visible := true;
end;

procedure Tfrm_tela7.btn_mostrar2Click(Sender: TObject);
begin
  frm_tela7.visible := false;
  frm_tela9.visible := true;
end;

procedure Tfrm_tela7.btn_mostrar3Click(Sender: TObject);
begin
  frm_tela7.visible := false;
  frm_tela11.visible := true;
end;

procedure Tfrm_tela7.btn_mostrar4Click(Sender: TObject);
begin
  frm_tela7.visible := false;
  frm_tela10.visible := true;
end;

//Sair
procedure Tfrm_tela7.btn_sair5Click(Sender: TObject);
begin
  frm_tela7.close;
end;

//TIMER
procedure Tfrm_tela7.Timer1Timer(Sender: TObject);
begin
  //Soma das colunas
  col1 := a1 + a2 + a3 + a4;
  col2 := b1 + b2 + b3 + b4;
  col3 := c1 + c2 + c3 + c4;
  col4 := d1 + d2 + d3 + d4;

  //Transforma o valor da soma das colunas em porcentagem de cada progressbar
  barra1.position := col1;
  barra2.position := col2;
  barra3.position := col3;
  barra4.position := col4;

  //Mostra o total de cada coluna: D - I - S - C
  lbl_total1.caption := IntToStr(col1);
  lbl_total2.caption := IntToStr(col2);
  lbl_total3.caption := IntToStr(col3);
  lbl_total4.caption := IntToStr(col4);
       
  //Condições para mostrar o maior valor da soma das colunas
  if (col1 > col2) and (col1 > col3) and (col1 > col4) then
  begin
    lbl_resultado.Caption := 'Colérico';
    btn_mostrar1.visible := true;
  end;

  if (col2 > col1) and (col2 > col3) and (col2 > col4) then
  begin
    lbl_resultado.Caption := 'Sanguíneo';
    btn_mostrar2.visible := true;
  end;

  if (col3 > col1) and (col3 > col2) and (col3 > col4) then
  begin
    lbl_resultado.Caption := 'Fleumático';
    btn_mostrar3.visible := true;
  end;

  if (col4 > col1) and (col4 > col2) and (col4 > col3) then
  begin
    lbl_resultado.Caption := 'Melancólico';
    btn_mostrar4.visible := true;
  end;

  //Condições para mostrar a palavra chave
  //Palavra chave - D
  if lbl_resultado.caption = 'Colérico' then
  begin
    if (col2 < col3) and (col3 > col4) and ((col3 - col4) <= 5)  then
    begin
      lbl_palavra.Caption := 'Visionário';
      btn_mostrar3.visible := true;
    end
    else if (col2 < col3) and (col3 > col4) then
    begin
      lbl_palavra.caption := 'Conquistador';
      btn_mostrar3.visible := true;
    end
    else if (col2 < col3) and (col3 < col4) then
    begin
      lbl_palavra.Caption := 'Criativo';
      btn_mostrar4.visible := true;
    end
    else if (col2 > col3) and (col3 > col4) and ((col3 - col4) <= 5) then
    begin
      lbl_palavra.Caption := 'Inspirador';
      btn_mostrar2.visible := true;
    end
    else if (col2 > col3) and (col3 > col4) then
    begin
      lbl_palavra.Caption := 'Realizador';
      btn_mostrar4.visible := true;
    end;
  end;

  //Palavra chave - I
  if lbl_resultado.caption = 'Sanguíneo' then
  begin
    if (col1 > col3) and (col3 < col4) then
    begin
      lbl_palavra.caption := 'Persuasivo';
      btn_mostrar1.visible := true;
    end
    else if (col1 > col3) and (col3 > col4) then
    begin
      lbl_palavra.caption := 'Incentivador';
      btn_mostrar1.visible := true;
    end
    else if (col1 < col3) and (col3 > col4) and ((col3 - col4) <= 5) then
    begin
      lbl_palavra.Caption := 'Realista';
      btn_mostrar3.visible := true;
    end
    else if (col1 < col3) and (col3 > col4) then
    begin
      lbl_palavra.Caption := 'Conselheiro';
      btn_mostrar3.visible := true;
    end
    else if (col1 < col3) and (col3 < col4) then
    begin
      lbl_palavra.Caption := 'Promotor';
      btn_mostrar4.visible := true;
    end;
  end;

  //Palavra chave - S
  if lbl_resultado.caption = 'Fleumático' then
  begin
    if (col1 < col2) and (col2 < col4) then
    begin
      lbl_palavra.caption := 'Especialista';
      btn_mostrar4.visible := true;
    end
    else if (col1 < col2) and (col2 > col4) then
    begin
      lbl_palavra.caption := 'Conselheiro';
      btn_mostrar2.visible := true;
    end
    else if (col1 > col2) and (col2 < col4) and ((col2 - col4) <= 5) then
    begin
      lbl_palavra.Caption := 'Conquistador';
      btn_mostrar1.visible := true;
    end
    else if (col1 < col2) and (col2 = col4) then
    begin
      lbl_palavra.Caption := 'Defensor';
      btn_mostrar4.visible := true;
    end
    else if (col1 > col2) and (col2 < col3) then
    begin
      lbl_palavra.Caption := 'Argumentista';
      btn_mostrar4.visible := true;
    end;
  end;

  //Palavra chave - C
  if lbl_resultado.caption = 'Melancólico' then
  begin
    if (col1 < col2) and (col2 < col3) and ((col3 - col2) <= 5) then
    begin
      lbl_palavra.caption := 'Pensador objetivo';
      btn_mostrar3.visible := true;
    end
    else if (col1 > col2) and (col2 < col3) then
    begin
      lbl_palavra.caption := 'Criativo';
      btn_mostrar1.visible := true;
    end
    else if (col1 < col2) and (col2 < col3) then
    begin
      lbl_palavra.Caption := 'Realista';
      btn_mostrar3.visible := true;
    end
    else if (col1 < col2) and (col2 > col3) then
    begin
      lbl_palavra.Caption := 'Determinado';
      btn_mostrar2.visible := true;
    end
    else if (col1 > col2) and (col2 < col3) then
    begin
      lbl_palavra.Caption := 'Focado';
      btn_mostrar3.visible := true;
    end;
  end;

end;

end.
