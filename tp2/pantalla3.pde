//Imagen palacio rosa
PImage imagenPalacioRosa;
float posYPalacioP3;

//Texto
String textoP3;
float posXTextoP3, posYTextoP3;
float opacidadTextoP3;

//Cuadro texto
float posXCuadroTextoP3, posYCuadroTextoP3;
float tamXCuadroTextoP3, tamYCuadroTextoP3;
float opacidadCuadroTextoP3;

//Tiempo
int contadorPantalla3;

void setupPantalla3() {
  //Imagen palacio rosa
  imagenPalacioRosa = loadImage("palacio_rosa.png");
  posYPalacioP3 = 480;

  //Cuadro texto
  posXCuadroTextoP3 = 60;
  posYCuadroTextoP3 = 30;
  tamXCuadroTextoP3 = 520;
  tamYCuadroTextoP3 = 0;
  opacidadCuadroTextoP3 = 0;

  //Texto
  textoP3 = "Acaba de mudarse junto a sus padres a unos viejos apartamentos en Oregon \n El Palacio Rosa";
  posXTextoP3 = 120;
  posYTextoP3 = 35;
  opacidadTextoP3 = 0;

  //Tiempo
  contadorPantalla3 = 0;
}

void drawPantalla3() {
  drawFondo();

  //Tiempo
  contadorPantalla3++;

  //Entrada palacio rosa
  if (contadorPantalla3 < 120) {
    posYPalacioP3 = map(contadorPantalla3, 0, 120, 480, 120);
  }

  //Entrada cuadro texto
  if (contadorPantalla3 > 100 && contadorPantalla3 < 190) {
    tamYCuadroTextoP3 = map(contadorPantalla3, 100, 190, 0, 110);
    opacidadCuadroTextoP3 = map(contadorPantalla3, 100, 190, 0, 160);
  }

  //Entrada texto
  if (contadorPantalla3 > 180 && contadorPantalla3 < 260) {
    opacidadTextoP3 = map(contadorPantalla3, 180, 260, 0, 255);
  }

  //Salida texto
  if (contadorPantalla3 > 470 && contadorPantalla3 < 540) {
    opacidadTextoP3 = map(contadorPantalla3, 470, 540, 255, 0);
  }

  //Salida cuadro texto
  if (contadorPantalla3 > 540 && contadorPantalla3 < 620) {
    tamYCuadroTextoP3 = map(contadorPantalla3, 540, 620, 110, 0);
    opacidadCuadroTextoP3 = map(contadorPantalla3, 540, 620, 160, 0);
  }

  //Salida palacio rosa
  if (contadorPantalla3 > 580 && contadorPantalla3 < 700) {
    posYPalacioP3 = map(contadorPantalla3, 580, 700, 120, 480);
  }

  //Imagen palacio rosa
  image(imagenPalacioRosa, 0, posYPalacioP3, 640, 360);

  //Cuadro texto
  fill(0, opacidadCuadroTextoP3);
  rect(posXCuadroTextoP3, posYCuadroTextoP3, tamXCuadroTextoP3, tamYCuadroTextoP3, 16);

  //Texto
  fill(240, 220, 90, opacidadTextoP3);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(20);
  text(textoP3, posXTextoP3, posYTextoP3, 400, 100);

  //Cambio a pantalla 4
  if (contadorPantalla3 > 760) {
    estado = 4;
  }
}
