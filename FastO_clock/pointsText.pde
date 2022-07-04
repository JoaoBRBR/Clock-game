void texto(){
  textSize(Wdois/2);
  if(perfect == true){
    k+=kv;
    if(k>=2.5){
     kv*=-1; 
    }else if(k < -1){
      perfect = false;
      kv = 0.08;
      k = 0;
    }
    fill(0,255,0);
    text("Perfect!", width-k*Wdois, meio-(Wdois/2));
  }
  if(good == true){
    k+=kv;
    if(k>=2.5){
     kv*=-1; 
    }else if(k < -1){
      good = false;
      kv = 0.08;
      k = 0;
    }
    fill(200);
    text("good", width-k*Wdois, meio-(Wdois/2));
  }
  if(wrong == true){
    k+=kv;
    if(k>=2.5){
     kv*=-1; 
    }else if(k < -1){
      wrong = false;
      kv = 0.08;
      k = 0;
    }
    fill(255,0,0);
    text("wrong!", width-k*Wdois, meio-(Wdois/2));
  }
}
