//Imagen Coraline
PImage imagenCoraline;
float posXCoraline, posYCoraline;
float tamXCoraline, tamYCoraline;

//Fuente
PFont fuenteTexto;

//Texto
String textoP2;
float posXTextoP2, posYTextoP2;
float opacidadTexto;

//Cuadro texto
float posXCuadroTextoP2, posYCuadroTextoP2;
float tamXCuadroTextoP2, tamYCuadroTextoP2;
float opacidadCuadroTexto;

//Tiempo
int contadorPantalla2;

void setupPantalla2() {
  //Imagenes
  imagenFondo = loadImage("coraline_fondo.png");
  imagenCoraline = loadImage("coraline_jones_1.png");

  //Fuente
  fuenteTexto = loadFont("KristenITC-Regular-22.vlw");

  //Imagen Coraline
  posXCoraline = -220;
  posYCoraline = 520;
  tamXCoraline = 340;
  tamYCoraline = 660;

  //Cuadro texto
  posXCuadroTextoP2 = 170;
  posYCuadroTextoP2 = 210;
  tamXCuadroTextoP2 = 0;
  tamYCuadroTextoP2 = 140;
  opacidadCuadroTexto = 0;

  //Texto
  textoP2 = "Coraline Jones es una niña de 11 años con una personalidad curiosa y aventurera";
  posXTextoP2 = 270;
  posYTextoP2 = 220;
  opacidadTexto = 0;

  //Tiempo
  contadorPantalla2 = 0;
}

void drawPantalla2() {
  drawFondo();

  //Tiempo
  contadorPantalla2++;

  //Entrada Coraline
  if (contadorPantalla2 < 100) {
    posXCoraline = map(contadorPantalla2, 0, 100, -220, 90);
    posYCoraline = map(contadorPantalla2, 0, 100, 520, 70);
    tamXCoraline = map(contadorPantalla2, 0, 100, 340, 220);
    tamYCoraline = map(contadorPantalla2, 0, 100, 660, 460);
  }

  //Entrada cuadro texto
  if (contadorPantalla2 > 120 && contadorPantalla2 < 220) {
    tamXCuadroTextoP2 = map(contadorPantalla2, 120, 220, 0, 360);
    opacidadCuadroTexto = map(contadorPantalla2, 120, 220, 0, 160);
  }

  //Entrada texto
  if (contadorPantalla2 > 240 && contadorPantalla2 < 320) {
    opacidadTexto = map(contadorPantalla2, 240, 320, 0, 255);
  }

  //Salida texto
  if (contadorPantalla2 > 470 && contadorPantalla2 < 530) {
    opacidadTexto = map(contadorPantalla2, 470, 530, 255, 0);
  }

  //Salida cuadro texto
  if (contadorPantalla2 > 500 && contadorPantalla2 < 560) {
    tamXCuadroTextoP2 = map(contadorPantalla2, 500, 560, 360, 0);
    posXCuadroTextoP2 = map(contadorPantalla2, 500, 560, 170, 530);
    opacidadCuadroTexto = map(contadorPantalla2, 500, 560, 160, 0);
  }

  //Salida Coraline
  if (contadorPantalla2 > 500 && contadorPantalla2 < 630) {
    posXCoraline = map(contadorPantalla2, 500, 630, 90, 640);
  }

  //Cuadro texto
  fill(0, opacidadCuadroTexto);
  rect(posXCuadroTextoP2, posYCuadroTextoP2, tamXCuadroTextoP2, tamYCuadroTextoP2, 16);

  //Imagen Coraline
  image(imagenCoraline, posXCoraline, posYCoraline, tamXCoraline, tamYCoraline);

  //Texto
  fill(240, 220, 90, opacidadTexto);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(20);
  text(textoP2, posXTextoP2, posYTextoP2, 250, 120);

  //Cambio a pantalla 3
  if (contadorPantalla2 > 700) {
    estado = 3;
  }
}
