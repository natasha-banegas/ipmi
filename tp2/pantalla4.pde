//Imagenes vecinos
PImage imagenBobinsky;
PImage imagenSpinkYForcible;
float posYBobinsky;
float posYSpinkYForcible;

//Texto arriba
String textoP4_1;
float posXTextoP4_1, posYTextoP4_1;
float opacidadTextoP4_1;

//Texto abajo
String textoP4_2;
float posXTextoP4_2, posYTextoP4_2;
float opacidadTextoP4_2;

//Cuadro texto arriba
float posXCuadroTextoP4_1, posYCuadroTextoP4_1;
float tamXCuadroTextoP4_1, tamYCuadroTextoP4_1;
float opacidadCuadroTextoP4_1;

//Cuadro texto abajo
float posXCuadroTextoP4_2, posYCuadroTextoP4_2;
float tamXCuadroTextoP4_2, tamYCuadroTextoP4_2;
float opacidadCuadroTextoP4_2;

//Tiempo
int contadorPantalla4;

void setupPantalla4() {
  //Imagenes vecinos
  imagenBobinsky = loadImage("señor_bobinsky.png");
  imagenSpinkYForcible = loadImage("señoritas_spink_forcible.png");
  posYBobinsky = -320;
  posYSpinkYForcible = 480;

  //Cuadro texto arriba
  posXCuadroTextoP4_1 = 20;
  posYCuadroTextoP4_1 = 35;
  tamXCuadroTextoP4_1 = 0;
  tamYCuadroTextoP4_1 = 120;
  opacidadCuadroTextoP4_1 = 0;

  //Cuadro texto abajo
  posXCuadroTextoP4_2 = 340;
  posYCuadroTextoP4_2 = 315;
  tamXCuadroTextoP4_2 = 0;
  tamYCuadroTextoP4_2 = 120;
  opacidadCuadroTextoP4_2 = 0;

  //Texto
  textoP4_1 = "En el Palacio Rosa conoce a vecinos extraños y peculiares";
  textoP4_2 = "Ellos son el señor Bobinsky y las señoritas Spink y Forcible";

  //Texto arriba
  posXTextoP4_1 = 40;
  posYTextoP4_1 = 55;
  opacidadTextoP4_1 = 0;

  //Texto abajo
  posXTextoP4_2 = 360;
  posYTextoP4_2 = 335;
  opacidadTextoP4_2 = 0;

  //Tiempo
  contadorPantalla4 = 0;
}

void drawPantalla4() {
  drawFondo();

  //Tiempo
  contadorPantalla4++;

  //Entrada Bobinsky
  if (contadorPantalla4 < 60) {
    posYBobinsky = map(contadorPantalla4, 0, 60, -320, 0);
  }

  //Entrada Spink y Forcible
  if (contadorPantalla4 < 60) {
    posYSpinkYForcible = map(contadorPantalla4, 0, 60, 480, 240);
  }

  //Entrada cuadro texto arriba
  if (contadorPantalla4 > 80 && contadorPantalla4 < 180) {
    tamXCuadroTextoP4_1 = map(contadorPantalla4, 80, 180, 0, 295);
    opacidadCuadroTextoP4_1 = map(contadorPantalla4, 80, 180, 0, 160);
  }

  //Entrada texto arriba
  if (contadorPantalla4 > 180 && contadorPantalla4 < 260) {
    opacidadTextoP4_1 = map(contadorPantalla4, 180, 260, 0, 255);
  }

  //Entrada cuadro texto abajo
  if (contadorPantalla4 > 300 && contadorPantalla4 < 400) {
    tamXCuadroTextoP4_2 = map(contadorPantalla4, 300, 400, 0, 275);
    posXCuadroTextoP4_2 = map(contadorPantalla4, 300, 400, 615, 340);
    opacidadCuadroTextoP4_2 = map(contadorPantalla4, 300, 400, 0, 160);
  }

  //Entrada texto abajo
  if (contadorPantalla4 > 400 && contadorPantalla4 < 480) {
    opacidadTextoP4_2 = map(contadorPantalla4, 400, 480, 0, 255);
  }

  //Salida textos y cuadros
  if (contadorPantalla4 > 600 && contadorPantalla4 < 680) {
    opacidadTextoP4_1 = map(contadorPantalla4, 600, 680, 255, 0);
    opacidadTextoP4_2 = map(contadorPantalla4, 600, 680, 255, 0);
    opacidadCuadroTextoP4_1 = map(contadorPantalla4, 600, 680, 160, 0);
    opacidadCuadroTextoP4_2 = map(contadorPantalla4, 600, 680, 160, 0);
  }

  //Salida imagenes
  if (contadorPantalla4 > 680 && contadorPantalla4 < 760) {
    posYBobinsky = map(contadorPantalla4, 680, 760, 0, -320);
    posYSpinkYForcible = map(contadorPantalla4, 680, 760, 240, 480);
  }

  //Imagenes vecinos
  image(imagenBobinsky, 320, posYBobinsky, 320, 320);
  image(imagenSpinkYForcible, 0, posYSpinkYForcible, 350, 240);

  //Cuadro texto arriba
  fill(0, opacidadCuadroTextoP4_1);
  rect(posXCuadroTextoP4_1, posYCuadroTextoP4_1, tamXCuadroTextoP4_1, tamYCuadroTextoP4_1, 16);

  //Cuadro texto abajo
  fill(0, opacidadCuadroTextoP4_2);
  rect(posXCuadroTextoP4_2, posYCuadroTextoP4_2, tamXCuadroTextoP4_2, tamYCuadroTextoP4_2, 16);

  //Texto arriba
  fill(240, 220, 90, opacidadTextoP4_1);
  textAlign(CENTER, CENTER);
  textFont(fuenteTexto);
  textSize(20);
  text(textoP4_1, posXTextoP4_1, posYTextoP4_1, 260, 80);

  //Texto abajo
  fill(240, 220, 90, opacidadTextoP4_2);
  text(textoP4_2, posXTextoP4_2, posYTextoP4_2, 240, 80);

  //Cambio a pantalla 5
  if (contadorPantalla4 > 820) {
    estado = 5;
  }
}
