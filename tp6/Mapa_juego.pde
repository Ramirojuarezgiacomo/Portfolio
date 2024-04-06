float rot=0;
 int contador=70;
 int animaFuego=1;
FBox obstaculo;
FBox gravedad;

void GameDraw(){
  fill (10,5,45,70);
  rect (0,0,width,height);
  image (fondo, 0,0, width, height);
 compuesto.setRotation(radians(rot));
  mundo.step();
  mundo.draw();
      mundo.setGravity(0,grav);
 juegoMusic.play();

    image (izq,322,height-72,35, 51);
    image (der,543,height-72,35, 51);
  vidasCat();
}

void Gamesetup(){

  pelota();
  compuesto = new FCompound();
 
  agregarBorde(10, 80, 35 - width/2, 75 - height/2);
  agregarBorde(200, 10, 130 - width/2, 30 - height/2);
  agregarBorde(90, 10, 85 - width/2, 110 - height/2);
  agregarBorde(10, 300, 230 - width/2, 175 - height/2);
  agregarBorde(10, 220, 135 - width/2, 215 - height/2);
  agregarBorde(90, 10, 95 - width/2, 320 - height/2);
  agregarBorde(10, 390, 45 - width/2, 510 - height/2);
  agregarBorde(300, 10, 280 - width/2, 400 - height/2);
  agregarBorde(10, 230, 130 - width/2, 510 - height/2);
  agregarBorde(225, 10, 237 - width/2, 630 - height/2);
  agregarBorde(300, 10, 200 - width/2, 700 - height/2);
  agregarBorde(10, 70, 345 - width/2, 660 - height/2);
  agregarBorde(100, 10, 275 - width/2, 325 - height/2);
  agregarBorde(10, 280, 425 - width/2, 260 - height/2);
  agregarBorde(10, 300, 330 - width/2, 180 - height/2);
  agregarBorde(450, 10, 550 - width/2, 30 - height/2);
  agregarBorde(100, 10, 470 - width/2, 120 - height/2);
  agregarBorde(10, 350, 520 - width/2, 290 - height/2);
  agregarBorde(340, 10, 355 - width/2, 470 - height/2);
  agregarBorde(10, 90, 180 - width/2, 510 - height/2);
  agregarBorde(190, 10, 280 - width/2, 550 - height/2);
  agregarBorde(10, 160, 370 - width/2, 625 - height/2);
  agregarBorde(500, 10, 620 - width/2, 700 - height/2);
  agregarBorde(10, 80, 450 - width/2, 595 - height/2);
  agregarBorde(330, 10, 610 - width/2, 550 - height/2);
  agregarBorde(330, 10, 610 - width/2, 630 - height/2);
  agregarBorde(10, 355, 600 - width/2, 295 - height/2);
  agregarBorde(100, 10, 645 - width/2, 120 - height/2);
  agregarBorde(10, 355, 690 - width/2, 295 - height/2);
  agregarBorde(100, 10, 645 - width/2, 470 - height/2);
  agregarBorde(10, 610, 770 - width/2, 330 - height/2);
  agregarBorde(10, 100, 865 - width/2, 650 - height/2);
  agregarBorde(100, 10, 820 - width/2, 530 - height/2);
  //OBSTACULOS
  obstaculo(20, 20, 330 - width/2, 600 - height/2);
  obstaculo(20, 20, 60 - width/2, 640 - height/2);
  obstaculo(20, 20, 350 - width/2, 240 - height/2);
  gravedad(40, 40, 750 - width/2, 130 - height/2);
  gravedad(40, 40, 350 - width/2, 130 - height/2);
  gravedad(50, 50,320 - width/2, 745 - height/2);
  
  
  
  meta(90,90,820- width/2,670 - height/2);




  mundo.add(compuesto);
  compuesto.setStatic(true);
  compuesto.setPosition(width/2,height/2);

}

// Se crean las cajas para que en el setup se les ponga la posicion
void agregarBorde(float ancho, float alto, float x, float y) {
  FBox caja = new FBox(ancho, alto);
  caja.setPosition(x, y+80);
  caja.setStatic(true);
  caja.setNoStroke();
  caja.setFill(255,0,60);
  compuesto.addBody(caja);
}
void obstaculo(float ancho, float alto, float x, float y) {
  FBox obstaculo = new FBox(ancho, alto);
  obstaculo.setPosition(x, y);
  obstaculo.setStatic(true);
  obstaculo.setNoStroke();
  obstaculo.attachImage(fuego[animaFuego]);
  obstaculo.setFill(0,200,20);
  compuesto.addBody(obstaculo);
  obstaculo.setName("Obstaculo");
  
   animaFuego=animaFuego+2;
  if (animaFuego>=3){animaFuego=0;}
  
  
}
void gravedad(float ancho, float alto, float x, float y) {
  FBox gravedad = new FBox(ancho, alto);
  gravedad.setPosition(x, y);
  gravedad.setStatic(true);
  gravedad.setNoStroke();
  gravedad.setDensity(-30);
  gravedad.setFill(200,100,200);
  gravedad.attachImage(grave);
  compuesto.addBody(gravedad);
  gravedad.setName("gravedad");  
  
}


void meta(float ancho, float alto, float x, float y) {
  FBox meta = new FBox(ancho, alto);
  meta.setPosition(x, y);
  meta.setStatic(true);
  meta.setNoStroke();
  meta.setDensity(-30);
  meta.setFill(200,100,200);
  meta.attachImage(portal);
  compuesto.addBody(meta);
  meta.setName("meta");  
}
