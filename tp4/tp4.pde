///////////////////////////////////////////////////////////////////////////TRABAJO PRÁCTICO N° 4///////////////////////////////////////////////////////////////////////////////////////
//ALUMNA: Contreras Garrido, Jimena
//LEGAJO: 88356/4
//Link al video: https://youtu.be/WigUJj-rgNc 

Juego juego;

void setup() { 
  
  
  juego = new Juego();
  size (800, 600);
  frameRate (10);
}

void draw() {

  juego.dibujar();
  
}

void keyPressed(){
juego.teclas();


}
