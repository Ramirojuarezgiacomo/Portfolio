class Blob {

  boolean actualizado;
  boolean entro;
  boolean salio;
  
//  int vida;
  
  int ultimaActualizacion;
  
  int limite_tiempo_salir;

  // DATOS DEL BLOB
  int id; //indentificacion del obj capturado 

  float centerX;
  float centerY;


  ArrayList <Float> contorno;

  Blob() {

    entro =  true; // evalua cuando la camara indentifica q el obj sale y cuando entra de la pantalla
    actualizado = false;
    salio = false;

    //vida = 0; ni idea q es
    ultimaActualizacion = 0;
    
    limite_tiempo_salir = -5;
    

    centerX = 0;
    centerY = 0;

    
 //   contorno = new ArrayList<Float>();
  }

  void actualizar(){
   /*if(vida > 0){ //ni idea q hace esto
      entro = false;
    }
    vida++;
    vida = vida % 100;
  */ 
    salio = ultimaActualizacion == limite_tiempo_salir ? true : false;
  }
  void actualizarDatos(OscMessage m) { 
    //actualiza los datos de X e Y del centro del obj

    centerX = m.get(6).floatValue();
    centerY = m.get(7).floatValue();


  /*  for (int i = 17; i < m.arguments ().length; i++) {
      contorno.add(m.get(i).floatValue());
    }    */
  }
//me designa el id del obj capturado y le dice a processing este es...
  void setID( int id) { 
    this.id = id;
  }

//aca ocurre la magia 
  void puntero(float w, float h) {
  
    // Centro - ID - Age
    float x = centerX * w;
  //  float y = centerY * h;
    println ("Coordenada X :" + x); //este es el valor que necesitamos para el rot
   
   
   

    if (pantalla==1 || pantalla==3 || pantalla==4){
    push();
    fill(245,2,122);
    rectMode (CENTER);
    rect (x,755,50,50,5);
    pop();
    }
  
     if (x>=400 && x<500  && contador>0 && pantalla==1 || pantalla==3 || pantalla==4){ 
       contador =contador-1; 
       // Reproduce el sonido cuando se hace clic en la ventana
       if (!fx.isPlaying()) {
         fx.rewind();
         fx.play();
       }  
     } 
    if (contador==0 && pantalla==1){pantalla=2; contador=70;   }
    if (x>=400 && x<500  && contador>0 && pantalla==3 || pantalla==4){  contador =contador-1; } 
    if (contador==0){pantalla=1; contador=70; }
  
   
    
  //PANTALLA JUEGO
    if (pantalla == 2){ 
    if (x>=0 && x<350){   rot=rot-0.1; }
    if (x>=350 && x<550){ rot=rot-0;   }
    if (x>=550 && x<900){ rot=rot+0.1; }
    push();
    fill(247,21,212);
    rectMode (CENTER);
   rect (x,height-50,35,35,5);
   pop();
    }
 
  }
}
