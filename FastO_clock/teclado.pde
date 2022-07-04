//desenha o teclado numerico
void teclado() {
  ///numbers
  textSize(Wtres);
  fill(255);
  //1
  text("1", Wquatro-(Wdois/2), meio+2*Wdois);
  //2
  text("2", 2*Wquatro-(Wdois/2), meio+2*Wdois);
  //3
  text("3", 3*Wquatro-(Wdois/2), meio+2*Wdois);
  //4
  text("4", Wquatro-(Wdois/2), Wquatro+meio+2*Wdois);
  //5
  text("5", 2*Wquatro-(Wdois/2), Wquatro+meio+2*Wdois);
  //6
  text("6", 3*Wquatro-(Wdois/2), Wquatro+meio+2*Wdois);
  //7
  text("7", Wquatro-(Wdois/2), 2*Wquatro+meio+2*Wdois);
  //8
  text("8", 2*Wquatro-(Wdois/2), 2*Wquatro+meio+2*Wdois);
  //9
  text("9", 3*Wquatro-(Wdois/2), 2*Wquatro+meio+2*Wdois);
  //0
  text("0", 2*Wquatro-(Wdois/2), 3*Wquatro+meio+2*Wdois);
  //X
  fill(255, 0, 0);
  text("X", Wquatro-(Wdois/2), 3*Wquatro+meio+2*Wdois);
  //V
  fill(0, 255, 0);
  text("V", 3*Wquatro-(Wdois/2), 3*Wquatro+meio+2*Wdois);

  fill(60);
  //terminal
  if (modoZero == true) {
    if (traker == 4) {
      traker = 3;
    }
    if (traker < 4) {
      if (traker == 1) {
        p = d*10;
        text("0000", (width/2)-(width/7), meio);
        text("     _", (width/2)-(width/7), meio);
      } else if (traker == 2) {
        p = d*10;
        if (p == 0) {
          text("0000", (width/2)-(width/7), meio);
          text("       _", (width/2)-(width/7.7), meio);
          zeroCheker = true;
        } else {
          text("00"+p, (width/2)-(width/7), meio);
          text("       _", (width/2)-(width/7.7), meio);
        }
      } else if (traker == 3) {
        p = d;
        if (zeroCheker == true) {
          text("000"+p, (width/2)-(width/7), meio);
          text("       _", (width/2)-(width/7.7), meio);
        } else {
          text("00"+p, (width/2)-(width/7), meio);
          text("       _", (width/2)-(width/7.7), meio);
        }
      }
    }
  } else {
    if (traker == 0) {
      text("0000", (width/2)-(width/7), meio);
      text("   _", (width/2)-(width/6.5), meio);
    } else if (traker == 1) {
      p = d*100;
      text("0"+p, (width/2)-(width/7), meio);
      text("     _", (width/2)-(width/7), meio);
    } else if (traker == 2) {
      p = d*10;
      text("0"+p, (width/2)-(width/7), meio);
      text("       _", (width/2)-(width/7.7), meio);
    } else if (traker == 3) {
      p = d;
      text("0"+p, (width/2)-(width/7), meio);
      text("       _", (width/2)-(width/7.7), meio);
    } else if (traker == 4) {
      p = d;
      text(p, (width/2)-(width/7.7), meio);
    }
  }


  textSize(0.7*Wtres);
  text(":", (width/2)+(width/35), meio);
}
