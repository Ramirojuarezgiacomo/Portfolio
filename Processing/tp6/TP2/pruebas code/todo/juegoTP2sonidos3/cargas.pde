PImage gatito,gato, fondo,izq, der;
PImage ganar,perder, heart, heart2, grave, portal, inicio;
PFont fuente, fuente1, fuenteh1;
PImage [ ] fuego = new PImage [8];

void cargarimg(){
 fuente= createFont ( "Beon.otf", 42);
 fuenteh1= createFont ( "Beon.otf", 95);
 fuente1= loadFont ( "OCRAbyBT-Regular-40.vlw");
  
  gatito = loadImage ("gatito-1.png");
  gato = loadImage ("gatito.png");
  ganar= loadImage ("fondo-ganar.png");
  perder= loadImage ("fondo-perder.png");
  fondo= loadImage ("fondo.png");
  inicio= loadImage ("inicio.png");
//  recuadro= loadImage ("recuadro.png");
  izq = loadImage ("izq.png");
  der = loadImage ("der.png");
  heart =loadImage ("corazon.png");
  heart2 =loadImage ("corazon2.png");
  grave =loadImage ("gravedad.png");
  portal =loadImage ("portal.png");
  
  fuego [0] = loadImage ("fotogramaf0011.png");
  fuego [1] = loadImage ("fotogramaf0012.png");
  fuego [2] = loadImage ("fotogramaf0013.png");
  fuego [3] = loadImage ("fotogramaf0014.png"); 
  fuego [4] = loadImage ("fotogramaf0015.png");
  fuego [5] = loadImage ("fotogramaf0016.png");
  fuego [6] = loadImage ("fotogramaf0017.png");
  fuego [7] = loadImage ("fotogramaf0018.png");
  
}

void inicializacion(){
  Fisica.init(this); 
  mundo = new FWorld(); 

  //designa la camara
  setupOSC(PUERTO_OSC);
  receptor = new Receptor();
  //mundo.setEdges();

  
  // Inicializa Minim
  minim = new Minim(this);
  juegoMusic = minim.loadFile("juego.wav");
  fx = minim.loadFile ("click.wav"); 
  ganarfx = minim.loadFile ("ganar.mp3"); 
  perderfx = minim.loadFile ("perder.wav"); 
  
  
  
}

String conseguirNombre(FBody cuerpo)
{
  String nombre = "nada";
  
  if (cuerpo != null)
  {
    nombre = cuerpo.getName();
    
    if (nombre == null)
    {
      nombre = "nada";
    }
  }
  
  return nombre;
}
