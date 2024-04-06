void dibmapa() {
  push();
  rectMode (CENTER);
  fill (255, 1, 161);
  rect (503, 295, 315, 10); //top
  rect (654, 224, 10, 145);//vertical
  ellipse (633, 189, 100, 100); //hgh
  rect (661, 153, 188, 36);
  //  rect (314,223,152,44);
  rect (306, 259, 125, 82); //bloque-izq

  ellipse (244, 268, 100, 100);
  ellipse (48, 379, 85, 85);
  ellipse (218, 494, 74, 74);

  rect (503, 742, 659, 10); //base
  ellipse (762, 719, 150, 150);


  //MOLINOS
  fill (255, 0, 0);
  rect (521, 295, 231, 10); //top
  rect (158, 742, 255, 10); //base
  rect (338, 223, 60, 10); //top peq

  pop();
}
