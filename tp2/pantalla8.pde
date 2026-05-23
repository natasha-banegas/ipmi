//Imagen otro padre
PImage imagenOtroPadre;
float posXPadre;

//Imagen otra madre
PImage imagenOtraMadre;
float posXMadre;

//Texto
String textoP8;
float posXTextoP8, posYTextoP8;
float opacidadTextoP8;

//Cuadro texto
float posXCuadroTextoP8, posYCuadroTextoP8;
float tamXCuadroTextoP8, tamYCuadroTextoP8;
float opacidadCuadroTextoP8;

//Tiempo
int contadorPantalla8;

void setupPantalla8() {
  //Imagenes
  imagenOtroPadre = loadImage("otro_padre.png");
  imagenOtraMadre = loadImage("otra_madre.png");

  posXPadre = -250;
  posXMadre = 640;

  //Cuadro texto
  posXCuadroTextoP8 = 120;
  posYCuadroTextoP8 = 320;
  tamXCuadroTextoP8 = 400;
  tamYCuadroTextoP8 = 120;
  opacidadCuadroTextoP8 = 0;

  //Texto
  textoP8 = "Al otro lado de la puerta, Coraline conoce a su otra madre y otro padre, quienes son atentos, cariñosos y le preparan ricas comidas";
  posXTextoP8 = 200;
  posYTextoP8 = 330;
  opacidadTextoP8 = 0;

  //Tiempo
  contadorPantalla8 = 0;
}

void drawPantalla8() {
  drawFondo();

  //Tiempo
  contadorPantalla8++;

  //Entrada padre
  if (contadorPantalla8 < 80) {
    posXPadre = map(contadorPantalla8, 0, 80, -250, 0);
  }

  //Entrada madre 
  if (contadorPantalla8 < 80) {
    posXMadre = map(contadorPantalla8, 0, 80, 640, 410);
  }

  //Entrada cuadro texto 
  if (contadorPantalla8 > 100 && contadorPantalla8 < 200) {
    opacidadCuadroTextoP8 = map(contadorPantalla8, 100, 200, 0, 160);
  }

  //Entrada texto
  if (contadorPantalla8 > 180 && contadorPantalla8 < 280) {
    opacidadTextoP8 = map(contadorPantalla8, 180, 280, 0, 255);
  }

  //Salida texto
  if (contadorPantalla8 > 500 && contadorPantalla8 < 580) {
    opacidadTextoP8 = map(contadorPantalla8, 500, 580, 255, 0);
  }

  //Salida cuadro texto 
  if (contadorPantalla8 > 560 && contadorPantalla8 < 640) {
    opacidadCuadroTextoP8 = map(contadorPantalla8, 560, 640, 160, 0);
  }

  //Salida padre 
  if (contadorPantalla8 > 640 && contadorPantalla8 < 760) {
    posXPadre = map(contadorPantalla8, 640, 760, 0, 640);
  }

  //Salida madre
  if (contadorPantalla8 > 650 && contadorPantalla8 < 770) {
    posXMadre = map(contadorPantalla8, 650, 770, 410, 640);
  }

  //Cuadro texto
  noStroke();
  fill(0, opacidadCuadroTextoP8);
  rect(posXCuadroTextoP8, posYCuadroTextoP8, tamXCuadroTextoP8, tamYCuadroTextoP8, 16);

  //Imagenes 
  image(imagenOtroPadre, posXPadre, 110, 250, 375);
  image(imagenOtraMadre, posXMadre, 160, 220, 330);

  //Texto
  fill(240, 220, 90, opacidadTextoP8);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(16);
  text(textoP8, posXTextoP8, posYTextoP8, 260, 100);

  //Cambio a pantalla 9
  if (contadorPantalla8 > 840) {
    estado = 9;
  }
}
