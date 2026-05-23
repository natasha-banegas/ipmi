//Imagen padres
PImage imagenPadres;
float opacidadImagenPadres;
float posYPadres;

//Texto
String textoP6;
float posXTextoP6, posYTextoP6;
float opacidadTextoP6;

//Cuadro texto
float posXCuadroTextoP6, posYCuadroTextoP6;
float tamXCuadroTextoP6, tamYCuadroTextoP6;
float opacidadCuadroTextoP6;

//Tiempo
int contadorPantalla6;

void setupPantalla6() {
  //Imagen padres
  imagenPadres = loadImage("coraline_padres.png");
  opacidadImagenPadres = 0;
  posYPadres = 175;

  //Cuadro texto
  posXCuadroTextoP6 = 15;
  posYCuadroTextoP6 = 30;
  tamXCuadroTextoP6 = 610;
  tamYCuadroTextoP6 = 0;
  opacidadCuadroTextoP6 = 0;

  //Texto
  textoP6 = "Sus padres, Mel y Charlie Jones, están ocupados escribiendo un catálogo de jardinería y casi no le prestan atención";
  posXTextoP6 = 20;
  posYTextoP6 = 20;
  opacidadTextoP6 = 0;

  //Tiempo
  contadorPantalla6 = 0;
}

void drawPantalla6() {
  drawFondo();

  //Tiempo
  contadorPantalla6++;

  //Entrada imagen
  if (contadorPantalla6 < 80) {
    opacidadImagenPadres = map(contadorPantalla6, 0, 80, 0, 255);
  }

  //Entrada cuadro texto
  if (contadorPantalla6 > 60 && contadorPantalla6 < 160) {
    tamYCuadroTextoP6 = map(contadorPantalla6, 60, 160, 0, 120);
    opacidadCuadroTextoP6 = map(contadorPantalla6, 60, 160, 0, 160);
  }

  //Entrada texto
  if (contadorPantalla6 > 180 && contadorPantalla6 < 260) {
    opacidadTextoP6 = map(contadorPantalla6, 180, 260, 0, 255);
  }

  //Salida texto
  if (contadorPantalla6 > 520 && contadorPantalla6 < 600) {
    opacidadTextoP6 = map(contadorPantalla6, 520, 600, 255, 0);
  }

  //Salida cuadro texto
  if (contadorPantalla6 > 540 && contadorPantalla6 < 640) {
    opacidadCuadroTextoP6 = map(contadorPantalla6, 540, 640, 160, 0);
  }

  //Salida imagen
  if (contadorPantalla6 > 600 && contadorPantalla6 < 700) {
    opacidadImagenPadres = map(contadorPantalla6, 600, 700, 255, 0);
  }

  //Imagen padres
  tint(255, opacidadImagenPadres);
  image(imagenPadres, 85, posYPadres, 461, 307);
  tint(255);

  //Cuadro texto
  noStroke();
  fill(0, opacidadCuadroTextoP6);
  rect(posXCuadroTextoP6, posYCuadroTextoP6, tamXCuadroTextoP6, tamYCuadroTextoP6, 16);

  //Texto
  fill(240, 220, 90, opacidadTextoP6);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(20);
  text(textoP6, posXTextoP6, posYTextoP6, 600, 140);

  //Cambio a pantalla 7
  if (contadorPantalla6 > 740) {
    estado = 7;
  }
}
