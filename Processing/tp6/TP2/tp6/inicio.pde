void inicio (){
  
  

  image (inicio,0,0,width, height);

  fill (255,0,60, random(182));
  textFont (fuenteh1);
  text ("Neon Maze",171,108);
  fill (255,0,60);
  

    image (izq,315,720,52, 65);
    image (der,546,720,52, 65);
 // text("Evite que el gato toque el fuego",145,626);
 // text ("Evite que el gato toque el fuego",145,514);
 // text ("Gira el mapa para guiar a que el gatito \nllegue a su destino",145,580);
  textSize (22);
  fill (random (283));
  text ("Para continuar mantenga el mando  en el medio de la pantalla",83,825);
    noFill(); 
strokeWeight(3);
stroke(random (255),random( 200, 252),random( 252));
rect (32,156,835,710,5);
     
}
