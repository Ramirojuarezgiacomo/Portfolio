void mapa(){
//  circulo = new FCircle (40);

  caja = new FBox (315, 10); //top
  caja.setPosition (503, 295);
  mundo.add(caja);
  caja.setStatic(true);
  caja.setFill(255, 1, 161);
  caja.setNoStroke();
   //******CIRCULO*******/////
  circulo = new FCircle (100);
  circulo.setPosition (633, 189);
  mundo.add(circulo);
  circulo.setStatic(true);
  circulo.setFill(255, 1, 161);
  circulo.setNoStroke();
  //*************/////
  caja = new FBox (70, 145);//vertical
  caja.setPosition (654, 224);
  mundo.add(caja);
  caja.setStatic(true);
  caja.setFill(255, 1, 161);
  caja.setNoStroke();
  //*************/////
  caja = new FBox (188, 36); //bloque-der
  caja.setPosition (661, 153);
  mundo.add(caja);
  caja.setStatic(true);
  caja.setFill(255, 1, 161);
  caja.setNoStroke();
   //*************/////
  caja = new FBox (145, 82); //bloque-izq
  caja.setPosition (306, 259);
  mundo.add(caja);
  caja.setStatic(true);
  caja.setFill(255, 1, 161);
  caja.setNoStroke();
  
 //******CIRCULOS*******/////
  circulo = new FCircle (100);
  circulo.setPosition (244, 268);
  mundo.add(circulo);
  circulo.setStatic(true);
  circulo.setFill(255, 1, 161);
  circulo.setNoStroke();
   //*************/////
  circulo = new FCircle (85);
  circulo.setPosition (48, 379);
  mundo.add(circulo);
  circulo.setStatic(true);
  circulo.setFill(255, 1, 161);
  circulo.setNoStroke();
     //*************/////
  circulo = new FCircle (75);
  circulo.setPosition (218, 494);
  mundo.add(circulo);
  circulo.setStatic(true);
  circulo.setFill(255, 1, 161);
  circulo.setNoStroke();
  
    //******BASE******/////
  circulo = new FCircle (150);
  circulo.setPosition (762, 719);
  mundo.add(circulo);
  circulo.setStatic(true);
  circulo.setFill(255, 1, 161);
  circulo.setNoStroke();
   //*************/////
  caja = new FBox (660, 10); //base
  caja.setPosition (503, 742);
  mundo.add(caja);
  caja.setStatic(true);
  caja.setFill(255, 1, 161);
  caja.setNoStroke();
  
}
void dibmolinos(){
      //******1*******/////
  molino1 = new FBox (260, 10); //top
  molino1.setPosition ( 480, 295);
  mundo.add(molino1);
  molino1.setStatic(true);
  molino1.setFill(255, 0, 0);
  molino1.setNoStroke();
   //******2*******/////
  molino2 = new FBox (255, 10); //base
  molino2.setPosition (158, 742);
  mundo.add(molino2);
  molino2.setStatic(true);
  molino2.setFill(255, 0, 0);
  molino2.setNoStroke();
        //******3*******/////
  molino3 = new FBox ( 110, 10); //top
  molino3.setPosition ( 325, 223);
  mundo.add(molino3);
  molino3.setStatic(true);
  molino3.setFill(255, 0, 0);
  molino3.setNoStroke();
  
}
void movmolino(){
    molino1.setRotation(radians(a));
    molino2.setRotation(radians(a));
    molino3.setRotation(radians(a));
   // caja.setRotation(radians(a));
}
