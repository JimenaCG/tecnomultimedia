////////////////////////////////////////////////////////////////////////TRABAJO PRÀCTICO Nª 1//////////////////////////////////////////////////////////////////////////////////////////
//Alumna: Jimena Contreras Garrido
//Legajo: 88356/4
//Comisiòn: 3


int pantalla, op; 
PImage imagen1;
PImage imagen2;
PImage imagen4;
PImage imagen5;
PImage imagen08;
PImage imagen07;
float posx1, posx2;
PFont miLetra;
float tam;
float velo;
float veloTexto, veloTexto2, veloTexto3, veloTexto4, veloTexto5, veloTexto6;
float posT, posT2, posT3, posT4, posT5, posT6;
void setup (){
  size (700, 500);
  
  imagen1 = loadImage ("1.png");
  imagen2 = loadImage ("2.png");
  imagen4 = loadImage ("4.png");
  imagen5 = loadImage ("5.png");
  imagen07 = loadImage ("07.jpg");
  imagen08 = loadImage ("08.jpg");
  
  miLetra = loadFont ("Coluna-CondensedBold-200.vlw");
  
  posx1 = 0;
  posx2 = 0;
  posT = 90;
  posT2 = 80;
  posT3= 170;
  posT4 = 220;
  posT5 = 90;
  posT6 = 400;
  
  
  pantalla = 0;
  
  tam = 1;
  
  velo = 0.5;
  veloTexto = 0.5;
  veloTexto2 = 0.5;
  veloTexto3 =0.5;
  veloTexto4 =1;
  veloTexto5 =0.5;
  veloTexto6 =0.5;
  op = 0;
}

void draw() {  
  background(0);

  if ( pantalla == 0 ) {
    
    image( imagen1, posx1, 0, 850, height );
    posx1 = posx1 - 1;
    
    fill (#E30202);
    println (posT);
    textFont (miLetra);
    textSize (50);
    posT = posT + veloTexto;
    text ("ARTESMEDIA",posT , 400 );
    textSize (30);
    text ("presenta", posT, 450);
    
    if (posT > 124) {
      
      veloTexto = 0;
      
      stroke (#E30202);
      strokeWeight (1.5);
      line (50, 410, 350, 410);
      line (100, 350, 100, 470);
      
    }
    
    if( frameCount > (2*60) ){ 
      pantalla = 1;
    }
    
  } else if ( pantalla == 1 ) {
   
      image (imagen2, posx1, 0, 950, height);
      posx1 = posx1 - 1;
      
     fill (#E30202);
      println (posT2);
      textFont (miLetra);
      textSize (25);
      posT2 = posT2 + veloTexto3;
      text ("                   una producción de", posT2, 70 );
      textSize (45);
      text ("VANCOUVER MEDIA", posT2, 130);
      
      if (posT2 > 124) {
       
        stroke (#E30202);
        strokeWeight (1.5);
        line (40, 80, 450, 80);
        line (450, 50, 450, 150);
        line (430, 10, 430, 120);
        
      } 
    
    if( frameCount > (4*60) ){
      pantalla = 2;
    }

  } else if ( pantalla == 2 ) {
    
      image (imagen4, posx1, 0, 1200, height);
      posx1 = posx1 - 1;

      fill (#E30202);
      println (posT3);
      textFont (miLetra);
      textSize (47);
      posT3 = posT3 + veloTexto2;
      text ("Itziar Ituño", posT3, 450 );
      
      if (posT3 > 124) {
       
        stroke (#E30202);
        strokeWeight (1.5);
        line (30, 395, 570, 395);
        line (460, 350, 460, 470);
        
      }
   
    if( frameCount > (6 *60) ){
      pantalla = 3;
    }
   
  } else if ( pantalla == 3 ) {
    
    image (imagen5, posx1, 0, 1250, height);
    posx1 += 1;

    fill (#E30202);
    println (posT5);
    textFont (miLetra);
    textSize (50);
    posT5 = posT5 + veloTexto5;
    text ("Paco Tous",posT5 , 450 );
    textSize (50);
    posT6 = posT6 - veloTexto6;
    text ("Pedro Alonso", posT6, 450);
    
    if (posT5 > 122) {
      
      veloTexto5 = 0;
      
    } else if (posT6 > 125) {
      
      veloTexto6 = 0;
      
      stroke (#E30202);
      strokeWeight (1.5);
      line (50, 470, 650, 470);
      line (340, 410, 340, 480);
      
    }
   
    if( frameCount > (8*60) ){
      pantalla = 4;
    }
   
  } else if ( pantalla == 4 ) {
    
    image (imagen07, posx1, 0, 1100, height );
    posx1 = posx1 - 1;

    fill (#E30202);
    println (posT4);
    textFont (miLetra);
    textSize (40);
    posT4 = posT4 -  veloTexto4;
    text ("Y kity manver",posT4 , 260 );
    
    if (posT4 < 124) {
      
      veloTexto4 = 0;
      
      stroke (#E30202);
      strokeWeight (1.5);
      line (50, 270, 350, 270);
      line (110, 220, 110, 300);
      line (100, 220, 100, 300);
      
    }
   
    if( frameCount > (10*60) ){
      pantalla = 5;
   
  }

  } else if ( pantalla == 5 ) {
    
    image (imagen08, CENTER, CENTER, width, height); 
    
    
    
    fill (#E30202);
    println (tam);
    textFont (miLetra);
    tam = tam + velo;
    textSize (tam);
    textAlign (CENTER, CENTER);
    text ("La casa     papel", width/2, 200 ); 
    fill (#FFFFFF);
    tam = tam + velo;
    textSize (tam);
    text ("         de      ", width/2, 200 ); 
   
   if (tam > 90) {
     
     velo = 0;
    
   }
   
    if( frameCount > (16*60) ){
      pantalla = 6;

  }
}

}
