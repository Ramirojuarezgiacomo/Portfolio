////******Mundo fisica********/////
import fisica.*;
FWorld mundo;
FCompound compuesto;



int pantalla=3;
FCircle circulo; 

////******Cámara OSC********/////
int PUERTO_OSC = 12345;
Receptor receptor;


boolean reproducirGanarfx = true;
boolean reproducirPerderfx = true;

void setup() {

  size(900, 900);
  inicializacion();

  //ajustar el volumen de los sonidos de minimo-30 hasta 0
juegoMusic.setGain(-6); 
  fx.setGain(-12);
  ganarfx.setGain(-6);
  perderfx.setGain(-6);
  perderVida.setGain(-6);
  
  cargarimg();
  Gamesetup();
}

void draw() {

 
  if (pantalla==1) {     inicio();     }
  if (pantalla==2) { 
    GameDraw();   
   // DrawBlob();
  }
  if (pantalla==3) { 
    ganar (); 
    reproducirGanarfx = true;
    circulo.setPosition(70, 170);
    rot=0;
    // Detener la reproducción de juegoMusic en pantalla 3
    juegoMusic.pause();
    perderVida.pause();
  }
  if (pantalla==4) {
    perder(); 
    circulo.setPosition(70, 180);
    rot=0;
    
reproducirPerderfx = true;
    // Detener la reproducción de juegoMusic en pantalla 4
    juegoMusic.pause();
    
    perderVida.pause();
  }


  // si l gatito se sale de la pantalla
 /*   if (circulo.getX() > width || circulo.getX() < 0 || circulo.getY() > height || circulo.getY() < 0) {
      pantalla = 4;
      // Detener la reproducción de juegoMusic en pantalla 4
    juegoMusic.pause();
    }*/
    DrawBlob();
}






void keyPressed() {
  if (key=='1') {  
    pantalla=1;
  }
  if (key=='2') {  
    pantalla=2;
  }
  if (key=='3') {  
    pantalla=3;
  }
  if (key=='4') {  
    pantalla=4;
  }
  //ROTACION MAPA
  if (key=='a') {  
    rot=rot-2;
  }
  if (key=='d') {  
    rot=rot+2;
  }
}



void DrawBlob() {
  receptor.actualizar(mensajes); //  
  receptor.dibujarPuntero(width, height); //la funcion esta en la pestaña receptor

  // Eventos de entrada y salida
  for (Blob b : receptor.blobs) {

    if (b.entro) {
      // println("--> entro blob: " + b.id);
    }
    if (b.salio) {
      //  println("<-- salio blob: " + b.id);
    }
  }
}
