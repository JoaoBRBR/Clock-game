//todos botoes
void mousePressed() {

  //botao de voltar
  if (Menu == false) {
    if (mouseX > width-btnSize/2 && mouseX < width && mouseY > 0 && mouseY < btnSize/2) {
      ///resets
      resetEsave();
    }
    //caso modo jogo com
    if (mousePressed==true && PressKey==true) {
      PressKey=false;

      if (modoZero == true) {
        another = 3;
      } else {
        another = 4;
      }
      if (traker < another) {
        //1
        if (mouseX > Wquatro-btnSize/2 && mouseX < Wquatro+btnSize/2 && mouseY >meio+Wdois-btnSize/2 && mouseY <meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+1;
          } else {
            d = 1;
          }
          traker++;
        }
        //2
        if (mouseX > 2*Wquatro-btnSize/2 && mouseX < 2*Wquatro+btnSize/2 && mouseY >meio+Wdois-btnSize/2 && mouseY <meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+2;
          } else {
            d = 2;
          }
          traker++;
        }
        //3
        if (mouseX > 3*Wquatro-btnSize/2 && mouseX < 3*Wquatro+btnSize/2 && mouseY >meio+Wdois-btnSize/2 && mouseY <meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+3;
          } else {
            d = 3;
          }
          traker++;
        }
        //4
        if (mouseX > Wquatro-btnSize/2 && mouseX < Wquatro+btnSize/2 && mouseY >Wquatro+meio+Wdois-btnSize/2 && mouseY <Wquatro+meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+4;
          } else {
            d = 4;
          }
          traker++;
        }
        //5
        if (mouseX > 2*Wquatro-btnSize/2 && mouseX < 2*Wquatro+btnSize/2 && mouseY >Wquatro+meio+Wdois-btnSize/2 && mouseY <Wquatro+meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+5;
          } else {
            d = 5;
          }
          traker++;
        }
        //6
        if (mouseX > 3*Wquatro-btnSize/2 && mouseX < 3*Wquatro+btnSize/2 && mouseY >Wquatro+meio+Wdois-btnSize/2 && mouseY <Wquatro+meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+6;
          } else {
            d = 6;
          }
          traker++;
        }
        //7
        if (mouseX > Wquatro-btnSize/2 && mouseX < Wquatro+btnSize/2 && mouseY >2*Wquatro+meio+Wdois-btnSize/2 && mouseY <2*Wquatro+meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+7;
          } else {
            d = 7;
          }
          traker++;
        }
        //8
        if (mouseX > 2*Wquatro-btnSize/2 && mouseX < 2*Wquatro+btnSize/2 && mouseY >2*Wquatro+meio+Wdois-btnSize/2 && mouseY <2*Wquatro+meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+8;
          } else {
            d = 8;
          }
          traker++;
        }
        //9
        if (mouseX > 3*Wquatro-btnSize/2 && mouseX < 3*Wquatro+btnSize/2 && mouseY >2*Wquatro+meio+Wdois-btnSize/2 && mouseY <2*Wquatro+meio+Wdois+btnSize/2)
        {
          if (traker > 0) {
            d=d*10;
            d=d+9;
          } else {
            d = 9;
          }
          traker++;
        }
        //0
        if (mouseX > 2*Wquatro-btnSize/2 && mouseX < 2*Wquatro+btnSize/2 && mouseY >3*Wquatro+meio+Wdois-btnSize/2 && mouseY <3*Wquatro+meio+Wdois+btnSize/2)
        {
          if (traker>0) {
            d=d*10;
            traker++;
          } else {
            modoZero = true;
            zeroCheker = false;
            traker++;
          }
        }
      }
      //apaga
      if (mouseX > Wquatro-btnSize/2 && mouseX < Wquatro+btnSize/2 && mouseY >3*Wquatro+meio+Wdois-btnSize/2 && mouseY <3*Wquatro+meio+Wdois+btnSize/2)
      {
        d=0;
        traker=0;
        junto = 0;
        p=0;
        modoZero = false;
        zeroCheker = false;
      }
      //confirma
      if (mouseX > 3*Wquatro-btnSize/2 && mouseX < 3*Wquatro+btnSize/2 && mouseY >3*Wquatro+meio+Wdois-btnSize/2 && mouseY <3*Wquatro+meio+Wdois+btnSize/2)
      {
        if (p==junto) {
          certo = true;
          atualScore+=10;
          tempo+=8;
          junto = 0;
          p=0;
          perfect = true;
        }else if((p>junto && p<junto+4) || (p<junto && p>junto-4)){
          certo = true;
          atualScore+=4;
          tempo+=8;
          junto = 0;
          p=0;
          good = true;
        }else{
          wrong = true;
        }
        d=0;
        traker=0;
        modoZero = false;
        zeroCheker = false;
      }
    }
  }
  //menu
  else {
    if (mouseX > (width/2)-Wquatro && mouseX < (width/2)+Wquatro && mouseY > meio+Wtres-Wquatro && mouseY < meio+Wtres+Wquatro)
    {
      Menu = false;
    }
    if (mouseX > width-2*Wdois  && mouseY > width-2*Wdois && nightMode == false)
    {
      nightMode = true;
    } else if (mouseX > width-2*Wdois  && mouseY > width-2*Wdois && nightMode == true)
    {
      nightMode = false;
    }
  }
}
