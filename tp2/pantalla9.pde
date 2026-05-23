//Imagen bruja
PImage imagenBruja;
float posXBruja, posYBruja;
float tamXBruja, tamYBruja;

//Texto
String textoP9;
float posXTextoP9, posYTextoP9;
float opacidadTextoP9;

//Cuadro texto
float posXCuadroTextoP9, posYCuadroTextoP9;
float tamXCuadroTextoP9, tamYCuadroTextoP9;
float opacidadCuadroTextoP9;

//Tiempo
int contadorPantalla9;

void setupPantalla9() {
  //Imagen bruja
  imagenBruja = loadImage("bruja.png");
  posXBruja = -400;
  posYBruja = 480;
  tamXBruja = 780;
  tamYBruja = 520;
  
  //Cuadro texto
  posXCuadroTextoP9 = 40;
  posYCuadroTextoP9 = 20;
  tamXCuadroTextoP9 = 0;
  tamYCuadroTextoP9 = 100;
  opacidadCuadroTextoP9 = 0;

  //Texto
  textoP9 = "Pero no todo es lo que parece. \n Pronto Coraline descubrirá que su otra madre es una bruja y que tendrá que luchar para escapar";
  posXTextoP9 = 80;
  posYTextoP9 = 30;
  opacidadTextoP9 = 0;

  //Tiempo
  contadorPantalla9 = 0;
}

void drawPantalla9() {
  drawFondo();

  //Tiempo
  contadorPantalla9++;

  //Entrada bruja 
  if (contadorPantalla9 < 100) {
    posXBruja = map(contadorPantalla9, 0, 100, -400, 150);
    posYBruja = map(contadorPantalla9, 0, 100, 480, 140);
    tamXBruja = map(contadorPantalla9, 0, 100, 780, 520);
    tamYBruja = map(contadorPantalla9, 0, 100, 520, 346);
  }

  //Entrada cuadro texto 
  if (contadorPantalla9 > 120 && contadorPantalla9 < 220) {
    tamXCuadroTextoP9 = map(contadorPantalla9, 120, 220, 0, 560);
    posXCuadroTextoP9 = map(contadorPantalla9, 120, 220, 600, 40);
    opacidadCuadroTextoP9 = map(contadorPantalla9, 120, 220, 0, 160);
  }

  //Entrada texto
  if (contadorPantalla9 > 200 && contadorPantalla9 < 280) {
    opacidadTextoP9 = map(contadorPantalla9, 200, 280, 0, 255);
  }

  //Salida texto
  if (contadorPantalla9 > 500 && contadorPantalla9 < 580) {
    opacidadTextoP9 = map(contadorPantalla9, 500, 580, 255, 0);
  }

  //Salida cuadro texto 
  if (contadorPantalla9 > 560 && contadorPantalla9 < 660) {
    tamXCuadroTextoP9 = map(contadorPantalla9, 560, 660, 560, 0);
    posXCuadroTextoP9 = 40;
    opacidadCuadroTextoP9 = map(contadorPantalla9, 560, 660, 160, 0);
  }

  //Salida bruja 
  if (contadorPantalla9 > 640 && contadorPantalla9 < 740) {
    posXBruja = map(contadorPantalla9, 640, 740, 150, 640);
    posYBruja = map(contadorPantalla9, 640, 740, 140, 480);
    tamXBruja = map(contadorPantalla9, 640, 740, 520, 780);
    tamYBruja = map(contadorPantalla9, 640, 740, 346, 520);
  }

  //Imagen bruja
  image(imagenBruja, posXBruja, posYBruja, tamXBruja, tamYBruja);

  //Cuadro texto
  noStroke();
  fill(0, opacidadCuadroTextoP9);
  rect(posXCuadroTextoP9, posYCuadroTextoP9, tamXCuadroTextoP9, tamYCuadroTextoP9, 16);

  //Texto
  fill(240, 220, 90, opacidadTextoP9);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(18);
  text(textoP9, posXTextoP9, posYTextoP9, 480, 80);

  //Cambio a pantalla 10
  if (contadorPantalla9 > 780) {
    estado = 10;
  }
}
