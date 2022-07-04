//menu principal
void menu() {
  fill(255);
  textSize(2*Wtres);
  text("Fast", 1.2*Wtres, Wtres+btnSize);
  textSize(1.6*Wtres);
  text("O'clock", Wtres-Wdois, 2*Wtres+btnSize+btnSize);

  //play btn
  float x=cos(radians(frameCount))*0.9*Wquatro;
  float y=sin(radians(frameCount))*0.9*Wquatro;
  float xa=cos(radians(frameCount/12))*Wtres;
  float ya=sin(radians(frameCount/12))*Wtres;
  noFill();
  stroke(255);
  strokeWeight(Wdois/5);
  ellipse(width/2, meio+Wtres, 2*Wquatro, 2*Wquatro);
  line(width/2, meio+Wtres, width/2+x, y+meio+Wtres);
  line(width/2, meio+Wtres, width/2+xa, ya+meio+Wtres);
  //night btn
  textSize(Wdois);
  if (nightMode == true) {
    fill(255);
    stroke(0);
    text("on", width-2*Wdois, height-2*Wdois);
    text("24h", width-3.5*Wdois, height-Wdois);
  } else {
    fill(0);
    text("off", width-2*Wdois, height-2*Wdois);
    text("12h", width-3.5*Wdois, height-Wdois);
  }
  ellipse(width-Wdois, height-Wdois, Wdois, Wdois);
  
  //scores
  fill(255);
  text("Records:", Wdois, height-Wtres);
  text(score, 2*Wquatro, height-Wtres);
}
