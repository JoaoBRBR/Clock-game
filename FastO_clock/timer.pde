//barra de tempo

void timer() {
  rectMode(CORNER);
  colorMode(HSB);
  fill(127);
  rect(Wdois/4, Wdois/4, Wdois/2, 10*Wdois);
  fill(map(tempo, 10, 0, 255, 0));
  rect(Wdois/4, Wdois/4+(10-tempo)*Wdois, Wdois/2, tempo*Wdois);
  colorMode(RGB);
  //bonus
  if (tempo>10) {
    tempo=10;
  }
  //tempo acabando
  if (tempo<1) {
    text("!!", Wtres, 10*Wdois);
  }
  //perder
  if (tempo<0) {
    resetEsave();
  }
  tempo-=0.007;
}

//salva pontuacao
void resetEsave() {
  certo = true;
  Menu = true;
  junto=0;
  d=0;
  p=0;
  traker=0;
  Menu = true;
  modoZero = false;
  zeroCheker = false;
  kv = 0.08;
  k = 0;
}
