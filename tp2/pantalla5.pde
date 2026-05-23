//Imagenes Wybie
PImage imagenWybie;
float posXWybie, posYWybie;
float tamXWybie, tamYWybie;

//Imagen gato
PImage imagenGato;
float posXGato, posYGato;
float tamXGato, tamYGato;

//Texto
String textoP5;
float posXTextoP5, posYTextoP5;
float opacidadTextoP5;

//Cuadro texto
float posXCuadroTextoP5, posYCuadroTextoP5;
float tamXCuadroTextoP5, tamYCuadroTextoP5;
float opacidadCuadroTextoP5;

//Tiempo
int contadorPantalla5;

void setupPantalla5() {
  //Imagen Wybie
  imagenWybie = loadImage("wybie_lovat.png");
  posXWybie = 500;
  posYWybie = 480;
  tamXWybie = 280;
  tamYWybie = 460;

  //Imagen gato
  imagenGato = loadImage("el_gato.png");
  posXGato = -200;
  posYGato = 480;
  tamXGato = 258;
  tamYGato = 460;

  //Cuadro texto
  posXCuadroTextoP5 = 140;
  posYCuadroTextoP5 = 30;
  tamXCuadroTextoP5 = 360;
  tamYCuadroTextoP5 = 0;
  opacidadCuadroTextoP5 = 0;

  //Texto
  textoP5 = "Wybie, un chico misterioso del vecindario, y un gato negro comienzan a acompañarla";
  posXTextoP5 = 140;
  posYTextoP5 = 30;
  opacidadTextoP5 = 0;

  //Tiempo
  contadorPantalla5 = 0;
}

void drawPantalla5() {
  drawFondo();

  //Tiempo
  contadorPantalla5++;

  //Entrada Wybie
  if (contadorPantalla5 < 100) {
    posXWybie = map(contadorPantalla5, 0, 100, 500, 340);
    posYWybie = map(contadorPantalla5, 0, 100, 480, 180);
    tamXWybie = map(contadorPantalla5, 0, 100, 280, 186);
    tamYWybie = map(contadorPantalla5, 0, 100, 460, 307);
  }

  //Entrada Gato
  if (contadorPantalla5 < 100) {
    posXGato = map(contadorPantalla5, 0, 100, -200, 80);
    posYGato = map(contadorPantalla5, 0, 100, 480, 200);
    tamXGato = map(contadorPantalla5, 0, 100, 258, 172);
    tamYGato = map(contadorPantalla5, 0, 100, 460, 307);
  }

  //Entrada cuadro texto
  if (contadorPantalla5 > 120 && contadorPantalla5 < 220) {
    tamYCuadroTextoP5 = map(contadorPantalla5, 120, 220, 0, 120);
    opacidadCuadroTextoP5 = map(contadorPantalla5, 120, 220, 0, 160);
  }

  //Entrada texto
  if (contadorPantalla5 > 230 && contadorPantalla5 < 310) {
    opacidadTextoP5 = map(contadorPantalla5, 230, 310, 0, 255);
  }

  //Salida texto
  if (contadorPantalla5 > 490 && contadorPantalla5 < 570) {
    opacidadTextoP5 = map(contadorPantalla5, 490, 570, 255, 0);
  }

  //Salida cuadro texto
  if (contadorPantalla5 > 560 && contadorPantalla5 < 640) {
    tamYCuadroTextoP5 = map(contadorPantalla5, 560, 640, 120, 0);
    opacidadCuadroTextoP5 = map(contadorPantalla5, 560, 640, 160, 0);
  }

  //Salida Wybie
  if (contadorPantalla5 > 580 && contadorPantalla5 < 700) {
    posXWybie = map(contadorPantalla5, 580, 700, 340, -200);
    posYWybie = map(contadorPantalla5, 580, 700, 180, 180);
    tamXWybie = map(contadorPantalla5, 580, 700, 186, 186);
    tamYWybie = map(contadorPantalla5, 580, 700, 307, 307);
  }

  //Salida Gato
  if (contadorPantalla5 > 600 && contadorPantalla5 < 720) {
    posXGato = map(contadorPantalla5, 600, 720, 80, -250);
    posYGato = map(contadorPantalla5, 600, 720, 200, 200);
    tamXGato = map(contadorPantalla5, 600, 720, 172, 172);
    tamYGato = map(contadorPantalla5, 600, 720, 307, 307);
  }

  //Imagenes wybie y gato
  image(imagenWybie, posXWybie, posYWybie, tamXWybie, tamYWybie);
  image(imagenGato, posXGato, posYGato, tamXGato, tamYGato);

  //Cuadro texto
  noStroke();
  fill(0, opacidadCuadroTextoP5);
  rect(posXCuadroTextoP5, posYCuadroTextoP5, tamXCuadroTextoP5, tamYCuadroTextoP5, 16);

  //Texto
  fill(240, 220, 90, opacidadTextoP5);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(20);
  text(textoP5, posXTextoP5, posYTextoP5, 360, 120);

  //Cambio a pantalla 6
  if (contadorPantalla5 > 820) {
    estado = 6;
  }
}
