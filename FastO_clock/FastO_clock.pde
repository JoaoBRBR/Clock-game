
///variaveis de medidas de tamanho de tela
float Wtres, Wdois, Wquatro, btnSize, meio;

//booleans para abrir/fexar areas
boolean Menu = true;
boolean PressKey = true;
boolean certo = true;
boolean nightMode = false;
boolean modoZero = false;
boolean zeroCheker = false;

///good perffect bad
boolean good = false;
boolean perfect = false;
boolean wrong = false;

///vareaveis principais
float hora, minuto;
int d;
int traker = 0;
float tempo = 10, k = 0;
int atualScore=0;
int score=0;
int another = 4;
float resultado=0;
float kv = 0.08;
int p=0;
int junto;
int dayTime = 0;

//desenha relogio arrays
float x[] = new float[12];
float y[] = new float[12];
float sx[] = new float[60];
float sy[] = new float[60];

//setup
void setup() {
  size(displayWidth, displayHeight);
  
  //medida das variaveis
  btnSize = height/10;
  Wtres = (width/6);
  Wdois = (width/12);
  Wquatro = (width/4);
  meio = height/2;
  ellipseMode(CENTER);

  //desenha relogio criando pontos
  for (int a=0; a<12; a++) {
    x[a]=sin(radians(a*30));
    y[a]=cos(radians(a*30));
  }
  for (int a=0; a<60; a++) {
    sx[a]=sin(radians(a*6));
    sy[a]=cos(radians(a*6));
  }
}

///principal
void draw() {
  if (!mousePressed) {
    PressKey=true;
  }
  background(170);

  //botao voltar
  if (Menu == false) {
    fill(100);
    textSize(Wdois);
    text("X", width-btnSize/2.8, btnSize/3);
  }
  //partes de janela
  if (Menu == true) {
    menu();
    tempo = 10;
    atualScore=0;
    fill(0);
  } else {
    game();
  }
}
