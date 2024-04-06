int anima=0;
void ganar (){            //pantalla3
 // lo puse en true en vez de false porque sino no se reproduce cada vez que reinicias la pantalla
     if (reproducirGanarfx) {
      ganarfx.rewind(); // Vuelve al inicio del audio
      ganarfx.play();
      reproducirGanarfx = false;
    } 
  image (ganar, 0,0,width, height);
 // image (gato,241,281,398,387);
   push();
    fill (random(96),200,random(170),random(10));
    noStroke();
    ellipse (444,478,461,318);
    pop();
  textFont (fuente);
    textSize (96);
     fill (random(118),random(100,205),random(250));
    text ("ganaste",233,214);
      textFont (fuente1);
      textSize (22);
      fill (random (283));
    text ("Para continuar mantenga el mando \n  en el medio de la pantalla",233,807);
      image (izq,315,720,52, 65);
    image (der,546,720,52, 65);
      image (fuego[anima],-17,448,214,233);
       image (fuego[anima],660,344,214,334);
   anima=anima+1;
  if (anima==8){anima=0;}
}


void perder(){         //pantalla4
      if (reproducirPerderfx) {
      perderfx.rewind(); // Vuelve al inicio del audio
      perderfx.play();
      reproducirPerderfx = false;
    }

  image (perder,0,0,width,height);
  push();
    fill (random(200),0,random(100),random(23));
    noStroke();
    ellipse (444,478,461,318);
    pop();
  textFont (fuente);
  textSize (95);
  fill (random(200),0,random(114));
  text ("perdiste",242,226);
    textFont (fuente1);
    textSize (22);
    fill (random (283));
  text ("Para continuar mantenga el mando \n  en el medio de la pantalla",233,807);
    image (fuego[anima],288,313,291,365);
   anima=anima+1;
  if (anima==8){anima=0;}
    image (izq,315,720,52, 65);
    image (der,546,720,52, 65);
  
}
