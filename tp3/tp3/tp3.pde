/*
TRABAJO PRACTICO N° 3

Alumna: Contreras Garrido, Jimena
Legajo: 88356/4

video: https://youtu.be/CBM3iZXSYa8

*/

int pantalla;
PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10, imagen11, imagen12, imagen13, imagen14, imagen15, imagen16, imagen17; 
float posx1, velo, posY, posY2, posY3, posY4, posY5, posY6;
int x;

 void setup () {

   size (400, 400);

   imagen1 = loadImage ("paginaPrincipal.png");
   imagen2 = loadImage ("objetivo2.png");
   imagen3 = loadImage ("ruta2.png");
   imagen4 = loadImage ("auto.amarillo.png");
   imagen5 = loadImage ("auto.rojo.png");
   imagen6 = loadImage ("auto.azul.png");
   imagen7 = loadImage ("auto.gris.png");
   imagen8 = loadImage ("opcion1.png");
   imagen9 = loadImage ("opcion2.png");
   imagen10 = loadImage ("opcion3.png");
   imagen11 = loadImage ("opcion4.png");
   imagen12 = loadImage ("nivel.png");
   imagen13 = loadImage ("explosion.png");
   imagen14 = loadImage ("perder.png");
   imagen15 = loadImage ("ganar.png");
   imagen16 = loadImage ("nivel2.png");
   imagen17 = loadImage ("moneda.png");

   x = 0;

   velo = 2.5;

   pantalla = 0;

   posx1 = -1000;

   posY = 140;

   posY2 = -100;

   posY3 = -326;

   posY4 = -500;

   posY5 = -680;

   posY6 = -790;
  
 }

 void draw () {

  if (pantalla == 0) {

   image ( imagen1, 0, 0); 

  } 

  if ( pantalla == 2) {

   image ( imagen2, 0, 0);
   noCursor();

  }

  if (pantalla == 3) { //pantalla juego

   imageMode (CORNER); 
   image ( imagen3, 0, posx1, 400, 1400); 

   posx1 = posx1 + velo;

     if (posx1 > -30) {

      velo = 0;

     }

     image ( imagen12, 6, 6);

     if (x==1) {

     image (imagen5, mouseX, mouseY, 30, 50);

    } if ( x==2) {

      image (imagen6, mouseX, mouseY, 30, 50);

    } if (x==3) {

      image (imagen4, mouseX, mouseY, 30, 50);

    } if (x==4) {

      image (imagen7, mouseX, mouseY, 30, 50);

    }

    if (dist (212, 40, mouseX, mouseY) < 40) { //colision punto de llegada

      pantalla = 9; 
      cursor(); 


    }

    

    //autos

    //fill (0); 
    //rect (138, posY, 40, 90); //auto1

    posY = posY + velo;

    //rect (195, posY2, 40, 70); //auto2

    posY2 = posY2 + velo;

    //rect (195, posY3, 40, 70);//auto3

    posY3 = posY3 + velo;

    //rect (138, posY4, 40, 70);

    posY4 = posY4 +  velo;

    //rect (195, posY5, 40, 70);

    posY5 = posY5 + velo;

    //rect (195, posY6, 40, 70);

    posY6 = posY6 + velo;
   
//colision 
  if(  (mouseX>138) && (mouseX<138+40) && (mouseY>posY) && (mouseY<posY+90) ){
    pantalla = 8;
  }
  
  if(  (mouseX>195) && (mouseX<195+40) && (mouseY>posY2) && (mouseY<posY2+70) ){
    pantalla = 8;
  }
  
  if(  (mouseX>195) && (mouseX<195+40) && (mouseY>posY3) && (mouseY<posY3+70) ){
    pantalla = 8;
  }
  
  if(  (mouseX>138) && (mouseX<138+40) && (mouseY>posY4) && (mouseY<posY4+70) ){
  pantalla = 8;
  }
  
  if(  (mouseX>195) && (mouseX<195+40) && (mouseY>posY5) && (mouseY<posY5+70) ){
    pantalla = 8;
  }
  
  if(  (mouseX>195) && (mouseX<195+40) && (mouseY>posY6) && (mouseY<posY6+70) ){
    pantalla = 8;
  }
  
  if ( (mouseX > 210) &&  (mouseX < 140) &&  (mouseY > height) && (mouseY < 0) ) { //colision bordes

      image (imagen13, mouseX, mouseY, 40, 50);
      pantalla = 8;


    }

  }

  if (pantalla == 4) {

    image ( imagen8, 0, 0);

  }


  if (pantalla == 5) {

    image ( imagen9, 0, 0);

  }

  if (pantalla == 6) {

    image ( imagen10, 0, 0);

  }

  if (pantalla == 7) {

    image ( imagen11, 0, 0);

  }

  if (pantalla == 8) {

   image (imagen14, 0, 0);
   cursor();

  }

  if (pantalla == 9) {

    image (imagen15, 0, 0);
    if (dist (200, 320, mouseX, mouseY) < 50) {
    pantalla = 10;

  }

  }

  if (pantalla == 10) {

    image (imagen16, 0, 0);

  }

 }
void mousePressed () {
 
   if (pantalla == 0 && dist (200, 320, mouseX, mouseY) < 50) { 
      pantalla = 2;
      
   }
      
   if (pantalla == 8 && dist (200, 320, mouseX, mouseY) < 50) {

     pantalla = 0;
  }

}

void keyPressed () {

 if (keyCode == ' ') {

   pantalla = 3;
 }
 
 if (keyCode == '1') {

  pantalla = 4;
  x = 1;

 } if (keyCode == '2') {

   pantalla = 5;
   x = 2;

 } if (keyCode == '3') {

   pantalla = 6;
   x = 3;

 } if (keyCode == '4'){

   pantalla = 7;
   x = 4;

 }
 
 if (keyCode == 'v' || keyCode == 'V') {

   pantalla = 2;

 }

}
