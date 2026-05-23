//Imagen puerta
PImage imagenPuerta;
float posYPuerta;
float opacidadPuerta;

//Imagen abre puerta
PImage imagenAbrePuerta;
float posYAbrePuerta;
float opacidadAbrePuerta;

//Imagen raton acrobata
PImage imagenRatonAcrobata;
float posXRaton;
float opacidadRaton;

//Texto
String textoP7_1;
String textoP7_2;
float posXTextoP7, posYTextoP7;
float opacidadTextoP7_1;
float opacidadTextoP7_2;

//Cuadro texto
float posXCuadroTextoP7, posYCuadroTextoP7;
float tamXCuadroTextoP7, tamYCuadroTextoP7;
float opacidadCuadroTextoP7;

//Tiempo
int contadorPantalla7;

void setupPantalla7() {
  //Imagen puerta
  imagenPuerta = loadImage("coraline_puerta.png");
  posYPuerta = 480;
  opacidadPuerta = 0;
  
  //Imagen abre  puerta
  imagenAbrePuerta = loadImage("coraline_abre_puerta.png");
  posYAbrePuerta = 480;
  opacidadAbrePuerta = 0;
  
  //Imagen raton acrobata
  imagenRatonAcrobata = loadImage("raton_acrobata.png");
  posXRaton = -170;
  opacidadRaton = 0;

  //Cuadro texto
  posXCuadroTextoP7 = 110;
  posYCuadroTextoP7 = 20;
  tamXCuadroTextoP7 = 440;
  tamYCuadroTextoP7 = 0;
  opacidadCuadroTextoP7 = 0;

  //Primer texto
  textoP7_1 = "Coraline encuentra en su apartamento una pequeña puerta misteriosa";
  opacidadTextoP7_1 = 0;
  
  //Segundo texto  
  textoP7_2 = "Una noche un ratoncito la lleva hasta la puerta y ella decide entrar para descubrir qué hay detrás";
  opacidadTextoP7_2 = 0;

  //Texto
  posXTextoP7 = 140;
  posYTextoP7 = 30;

  //Tiempo
  contadorPantalla7 = 0;
}

void drawPantalla7() {
  drawFondo();

  //Tiempo
  contadorPantalla7++;

  //Entrada puerta
  if (contadorPantalla7 < 80) {
    posYPuerta = map(contadorPantalla7, 0, 80, 480, 210);
    opacidadPuerta = map(contadorPantalla7, 0, 80, 0, 255);
  }

  //Entrada cuadro texto
  if (contadorPantalla7 > 100 && contadorPantalla7 < 200) {
    tamYCuadroTextoP7 = map(contadorPantalla7, 100, 200, 0, 100);
    opacidadCuadroTextoP7 = map(contadorPantalla7, 100, 200, 0, 160);
  }

  //Entrada primer texto
  if (contadorPantalla7 > 180 && contadorPantalla7 < 280) {
    opacidadTextoP7_1 = map(contadorPantalla7, 180, 280, 0, 255);
  }

  //Salida primer texto
  if (contadorPantalla7 > 480 && contadorPantalla7 < 560) {
    opacidadTextoP7_1 = map(contadorPantalla7, 480, 560, 255, 0);
  }

  //Salida puerta
  if (contadorPantalla7 > 500 && contadorPantalla7 < 580) {
    opacidadPuerta = map(contadorPantalla7, 500, 580, 255, 0);
  }

  //Entrada raton 
  if (contadorPantalla7 > 540 && contadorPantalla7 < 740) {
    posXRaton = map(contadorPantalla7, 540, 740, -170, 640);
  }
  
  //Aparece raton
  if (contadorPantalla7 > 540 && contadorPantalla7 < 610) {
    opacidadRaton = map(contadorPantalla7, 540, 610, 0, 255);
  }
  
  //Desaparece raton
  if (contadorPantalla7 > 680 && contadorPantalla7 < 740) {
    opacidadRaton = map(contadorPantalla7, 680, 740, 255, 0);
  }

  //Entrada segundo texto 
  if (contadorPantalla7 > 620 && contadorPantalla7 < 720) {
    opacidadTextoP7_2 = map(contadorPantalla7, 620, 720, 0, 255);
  }

  //Entrada abre puerta 
  if (contadorPantalla7 > 760 && contadorPantalla7 < 860) {
    posYAbrePuerta = map(contadorPantalla7, 760, 860, 480, 210);
    opacidadAbrePuerta = map(contadorPantalla7, 760, 860, 0, 255);
  }

  //Salida segundo texto
  if (contadorPantalla7 > 920 && contadorPantalla7 < 1000) {
    opacidadTextoP7_2 = map(contadorPantalla7, 920, 1000, 255, 0);
  }

  //Salida cuadro texto
  if (contadorPantalla7 > 980 && contadorPantalla7 < 1060) {
    tamYCuadroTextoP7 = map(contadorPantalla7, 980, 1060, 100, 0);
    opacidadCuadroTextoP7 = map(contadorPantalla7, 980, 1060, 160, 0);
  }

  //Salida abre puerta
  if (contadorPantalla7 > 1020 && contadorPantalla7 < 1100) {
    opacidadAbrePuerta = map(contadorPantalla7, 1020, 1100, 255, 0);
  }

  //Imagenes
  tint(255, opacidadPuerta);
  image(imagenPuerta, 85, posYPuerta, 480, 275);
  
  tint(255, opacidadAbrePuerta);
  image(imagenAbrePuerta, 135, posYAbrePuerta, 366, 275);
  
  tint(255, opacidadRaton);
  image(imagenRatonAcrobata, posXRaton, 190, 170, 174);
  tint(255);

  //Cuadro texto
  noStroke();
  fill(0, opacidadCuadroTextoP7);
  rect(posXCuadroTextoP7, posYCuadroTextoP7, tamXCuadroTextoP7, tamYCuadroTextoP7, 16);

  //Primer texto
  fill(240, 220, 90, opacidadTextoP7_1);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(18);
  text(textoP7_1, posXTextoP7, posYTextoP7, 380, 80);

  //Segundo texto
  fill(240, 220, 90, opacidadTextoP7_2);
  text(textoP7_2, posXTextoP7, posYTextoP7, 380, 80);

  //Cambio a pantalla 8
  if (contadorPantalla7 > 1150) {
    estado = 8;
  }
}
