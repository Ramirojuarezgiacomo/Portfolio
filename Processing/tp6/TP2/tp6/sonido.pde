////******Audio********/////
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import ddf.minim.spi.MinimServiceProvider;

Minim minim;
AudioPlayer juegoMusic;
AudioPlayer fx;
AudioPlayer ganarfx;
AudioPlayer perderfx;
AudioPlayer perderVida;


int M=1;
PImage[] sound= new PImage [2];

  
/*void IconMusic(){
  if (pantalla != 3 && pantalla != 4) {
        imageMode (CORNER);
        image (sound[M],426,19,60,60);
    }
}
void PlayMusic(){  
   if (M==0 && mouseX>426 && mouseX<426+60 && mouseY>19 &&mouseY<19+60){
    M=1;
    juegoMusic.pause(); 
  }else if (M==1 && mouseX>426 && mouseX<426+60 && mouseY>19 &&mouseY<19+60){
    M=0;
     juegoMusic.play();  
  }
}*/



int volume = 5; // Valor inicial del volumen (1 al 10)
int sliderPos = 150; // Inicio slider

/*void volumen() {
  minim = new Minim(this);
  
  // barra y slider
  fill(200);
  rect(50, 30, 300, 20);
  fill(0, 255, 0);
  rect(sliderPos, 30, 20, 20);
  
  fill(0);
  textSize(16);
  text("Volumen", 10, 20);
}

void mouseDragged() {
  
  // Slider del volumen
  if (mouseY > 30 && mouseY < 50) {
    sliderPos = constrain(mouseX, 50, 330);
    volume = int(map(sliderPos, 50, 330, 1, 10));
  }
  
  // Ajuste del volumen del audio
  if (juegoMusic.position() > 0) {
    juegoMusic.setGain(map(volume, 1, 10, -30, 0));
  }
}*/
