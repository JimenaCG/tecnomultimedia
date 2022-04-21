//TRABAJO PRACTICO N° 0
//Alumna: Contreras Garrido, Jimena
//Legado: 88356/4
//Profesor: Bedoian, David 

PFont fuente;

void setup () {
  
 size (400, 370);
 background (#F0E4C6); 
 
 
}

void draw () {
 
 fill (#98774D);
 fuente = createFont ("fuente.otf", 150);
 textFont (fuente, 90);
 text ("Jime", 150, 60); //nombre
 pushStyle ();
 noStroke (); 
 fill (#311900);
 rect (105, 105, 200, 216);
 fill (#C99A6C);
 ellipseMode (CENTER); 
 ellipse (200, 200, 190, 190); //cara
 fill (#FFFFFF); 
 ellipse (160, 200, 40, 40); //ojo izq
 ellipse (240, 200, 40, 40); //ojo der
 fill (#582C00);
 ellipse (155, 200, 27, 27); //iris
 ellipse (235, 200, 27, 27);
 fill (0); 
 ellipse (155, 200, 17, 17); //pupilas
 ellipse (235, 200, 17, 17);
 fill (#FFFFFF);
 ellipse (160, 193, 7, 7);
 ellipse (240, 193, 7, 7);
 fill (#311900); 
 triangle (200, 105, 105, 195, 105, 105); //pelo
 triangle (200, 105, 295, 195, 295, 105);
 popStyle();
 pushStyle ();
 stroke (#311900);
 strokeWeight (40);
 line (111, 125, 105, 300);
 line (301, 125, 305, 300);
 popStyle();
 pushStyle ();
 noStroke ();
 fill (#902700);
 rect (120, 100, 80, 35, 5); //gafas de sol
 rect (205, 100, 80, 35, 5);
 rect (195, 100, 40, 15, 5);
 triangle (121, 100, 121, 137, 110, 200);
 triangle (283, 100, 283, 135, 300, 200);
 fill (#461300);
 rect (130, 105, 60, 25, 5);
 rect (215, 105, 60, 25, 5);
 popStyle ();
 pushStyle ();
 stroke (#311900);
 strokeWeight(5);
 line (170, 165, 145, 168); //cejas
 line (230, 165, 255, 168);
 stroke (#A27F5D);
 line (200, 200, 195, 230);
 line (195, 230, 205, 230);
 stroke (#95594A); //boca
 noFill();
 arc (210, 255, 70, 20, HALF_PI, PI);
 popStyle ();
 pushStyle ();
 noStroke ();
 fill (#C99A6C);
 rectMode (CENTER);
 rect (200, 320, 50, 70);
 fill (0);
 rect (200, 360, 200, 100, 20);
 fill (#C99A6C);
 ellipse (200, 310, 50, 50);
 popStyle ();
 pushStyle ();
 stroke (#AAAAAA);
 strokeWeight (1.5);
 line (173, 309, 200, 360);
 line (228, 309, 200, 360);
 fill(#AAAAAA);
 ellipse (200, 360, 10, 10);
 fill (#FFFFFF);
 ellipse (200, 360, 7, 7);
 popStyle();
 
 
}
