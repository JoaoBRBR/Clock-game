void game() {
  teclado();
  relogio();
  sunMoon();
  ponteiro();
  timer();
  texto();
  ///mostra Record mais
  textSize(Wdois);
  fill(255);
  text("hs:", 1.4*Wtres, Wdois);
  text(score, 2*Wtres, Wdois);
  text("s:", 2*Wquatro, Wdois);
  text(atualScore, 2.2*Wquatro, Wdois);
  if (atualScore > score) {
    score = atualScore;
  }
}

void sunMoon() {
  if (dayTime < 12) {
    fill(255);
    noStroke();
    ellipse(width-Wdois, Wtres, Wdois, Wdois);
    stroke(255);
    strokeWeight(2);
    for (int a=0; a<12; a++) {
      //point((width-Wdois)+(x[a]*0.6*Wdois), Wtres+(y[a]*0.6*Wdois));
      line((width-Wdois)+(x[a]*0.6*Wdois), Wtres+(y[a]*0.6*Wdois),(width-Wdois)+(x[a]*0.8*Wdois), Wtres+(y[a]*0.8*Wdois));
    }
  }else{
    fill(0);
    noStroke();
    ellipse(width-Wdois, Wtres, Wdois, Wdois);
    fill(170);
    ellipse(width-1.3*Wdois, Wtres, Wdois, Wdois);
  }
}

//faz logica dos numeros
void ponteiro() {
  if (certo == true) {
    certo = false;
    hora = random(0, 12);
    if (hora > 1) {
      minuto = (hora-int(hora))*60;
    } else {
      minuto = hora*60;
    }
    if (nightMode == true) {
      dayTime = int(random(24));
    } else {
      dayTime = 0;
    }
  }
  ///caso hora=0, hora=12:
  int h = int(hora);
  if(dayTime > 12){
    h+=12;
  }
  junto=(h*100)+int(minuto);
  
  //prints for debug
  //println("t:"+traker);
  //println("d:"+d);
  //println("p:"+p);
  //println("j:"+junto);
  //println("h:"+int(hora));
  //println("m:"+int(minuto));

  float xa=cos(radians(map(hora, 0, 12, 0, 360)-90))*Wtres;
  float ya=sin(radians(map(hora, 0, 12, 0, 360)-90))*Wtres;
  float x=cos(radians(map(minuto, 0, 60, 0, 360)-90))*1.2*Wquatro;
  float y=sin(radians(map(minuto, 0, 60, 0, 360)-90))*1.2*Wquatro;
  noFill();
  strokeWeight(Wdois/9);
  stroke(200);
  line(width/2, 1.8*Wquatro, width/2+x, 1.8*Wquatro+y);
  stroke(150);
  line(width/2, 1.8*Wquatro, width/2+xa, 1.8*Wquatro+ya);
  stroke(0);
}
void relogio() {
  stroke(200);
  strokeWeight(5);
  for (int a=0; a<60; a++) {
    point((width/2)+(sx[a]*1.3*Wquatro), 1.8*Wquatro+(sy[a]*1.3*Wquatro));
  }
  stroke(255);
  strokeWeight(9);
  for (int a=0; a<12; a++) {
    point((width/2)+(x[a]*1.3*Wquatro), 1.8*Wquatro+(y[a]*1.3*Wquatro));
  }
}
