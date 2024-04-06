void pelota(){
 circulo = new FCircle (50);
 circulo.setPosition (70,180);
 mundo.add(circulo);
 circulo.attachImage(gatito); //carga de imagen
  circulo.setRestitution (0.6);//rebote
//  circulo.setFriction (1000.0);
//circulo.setDensity (2000);
  circulo.setName("gatito");
}


//pasan 15frames por cda colision, X3 vidas son 45
int vida=3;
 void vidasCat(){
      if (vida==3){

      image (heart, 50,20,55,50);
      image (heart, 125,20,55,50);
      image (heart, 200,20,55,50);
    }    if (vida==2){

        perderVida.play();
      image (heart, 50,20,55,50);
      image (heart, 125,20,55,50);
      image (heart2, 200,20,55,50);
    }    if (vida==1){

        perderVida.play();
      image (heart, 50,20,55,50);
      image (heart2, 125,20,55,50);
      image (heart2, 200,20,55,50);

    } if (vida<=0){
        perderVida.play();
     pantalla=4;
    }    
    
    if (pantalla==4){vida =3; }
    if (pantalla==3){vida =3; }
  }
  //CONDICIONES DE GANAR/PERDER
  int grav=2000;
  int contaGrav=50;
void contactStarted(FContact contacto) {
  
  FBody body1= contacto.getBody1();
  FBody body2= contacto.getBody2();
  FBody body3= contacto.getBody2();
  String nombre1 = conseguirNombre(body1);
  String nombre2 = conseguirNombre(body2);
  String nombre3 = conseguirNombre(body3);
  //PERDER
  if (nombre1 == "gatito" && nombre2 == "Obstaculo") {
  vida=vida-1;
  } else  if (nombre2 == "gatito" && nombre1 == "Obstaculo") {
  vida=vida-1;
  }
  
    if (vida==0){      pantalla = 4;}
  
  //CAMBIO DE GRAVEDAD
  if (grav==2000){
  if (nombre1 == "gatito" && nombre2 == "gravedad"  ) {
    grav=-2000;
    contaGrav=contaGrav-1;
  } else  if (nombre2 == "gatito" && nombre1 == "gravedad" ) {
          grav=-2000;
          contaGrav=contaGrav-1;
  }} else   if (grav==-2000){
  if (nombre1 == "gatito" && nombre2 == "gravedad"  ) {
    grav=2000;
    contaGrav=contaGrav-1;
  } else  if (nombre2 == "gatito" && nombre1 == "gravedad") {
          grav=2000;
          contaGrav=contaGrav-1;
  }}
  
if (contaGrav==0){ grav=2000;}
  println ("contaGrav= " +contaGrav);
  
    //GANAR
  if (nombre1 == "gatito" && nombre3 == "meta") {
    pantalla = 3;
  } else  if (nombre3 == "gatito" && nombre1 == "meta") {
    pantalla = 3;
  }
}
