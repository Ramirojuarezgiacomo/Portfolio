void pelota(){
FCircle circulo = new FCircle (40);
circulo.setPosition (500,120);
 mundo.add(circulo);
 
 circulo.attachImage(gatito); //carga de imagen
 circulo.setRestitution (1.5);//rebote
 circulo.setDensity (0.1);
 circulo.setFriction (10.1);
}
