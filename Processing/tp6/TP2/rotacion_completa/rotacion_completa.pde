import fisica.*;
int a=0; //rotacion propia del objeto (setRotation)
float angle = 0; //angulo para la rotacion
float angle1 = 0;
FWorld mundo;
FBody plataforma1;
FBody plataforma2;
FBody plataforma3;
void setup() {
  size(800, 600);

  Fisica.init(this);
    mundo = new FWorld();
    mundo.setEdges();
  // aqui agrego todos los objetos de fisica 
  drawobjetfisic();
 
  
  // Apply a small linear damping to simulate reduced gravity effect
//  rotatingObject.setDamping(0.01); //factor q controla la amortiguacion
}

void draw() {
  rect(0,0, width,height);
  fill(0,55,131,20);
  mundo.draw();
  mundo.step();
//   angle += radians(1);
 //   a=a+1; // la suma de a tiene q ser la misma q los radianes de angle
 if (key=='d' ){   angle += radians(1);    a=a+1; }
  if (key=='a' ){   angle= angle- radians(1);    a=a-1; }
 Plat1();
 Plat2();
 Plat3();
  
  // Draw the rotating object
 
  
  
}
void mousePressed(){
 // if (key=='d' ){   angle += radians(1);    a=a+1; }
 // if (key=='a' ){   angle= angle- radians(1);    a=a-1; }
}
void drawobjetfisic(){
  plataforma1 = new FBox(10, 80);
  plataforma1.setPosition(width / 2, height / 2);
  plataforma1.setFill (250,30,200);
  
  mundo.add(plataforma1);
  
  plataforma2 = new FBox(10, 100);
  plataforma2.setPosition(width / 2, height / 2);
    plataforma2.setFill (250,30,200);


  mundo.add(plataforma2);
  
    plataforma3 = new FBox(100, 20);
  plataforma3.setPosition(width / 2, height / 2);
        plataforma3.setFill (250,30,200);
  mundo.add(plataforma3); 
}



void Plat1(){
   // Calculate the new position of thae rotating object around a point
 float anclajeX = width / 2; // punto de anclajex
  float anclajeY = height / 2;
  float radius = 200; // distancia en la que esta del punto inicial
  float x = anclajeX + cos(angle+100) * radius;
  float y = anclajeY + sin(angle+100) * radius;
   plataforma1.setRotation(radians(a));
  
  // Update the position of the rotating object
  plataforma1.setPosition(x, y);
  // Increment the angle for rotation

}

void Plat2(){
   // Calculate the new position of the rotating object around a point
  float anclajeX = width / 2; // punto de anclajex
  float anclajeY = height / 2;
  float radius = 120; // distancia en la que esta del punto inicial
  float x = anclajeX + cos(angle) * radius;
  float y = anclajeY + sin(angle) * radius;
   plataforma2.setRotation(radians(a));
  // Update the position of the rotating object
  plataforma2.setPosition(x, y);

}
void Plat3(){
   // Calculate the new position of the rotating object around a point
  float anclajeX = width / 2; // punto de anclajex
  float anclajeY = height / 2;
  float radius = 70; // distancia en la que esta del punto inicial
  float x = anclajeX + cos(angle) * radius;
  float y = anclajeY + sin(angle) * radius;
   plataforma3.setRotation(radians(a));
  // Update the position of the rotating object
  plataforma3.setPosition(x, y);

}
