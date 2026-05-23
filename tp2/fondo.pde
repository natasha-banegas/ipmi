//Imagen fondo
PImage imagenFondo;
float tamFondo;
float posXFondo;
float posYFondo1, posYFondo2;

void setupFondo() {
  imagenFondo = loadImage("coraline_fondo.png");
  tamFondo = 1254;
  posXFondo = -418;
  posYFondo1 = 0;
  posYFondo2 = -tamFondo;
}

void drawFondo() {
  //Imagenes
  image(imagenFondo, posXFondo, posYFondo1, tamFondo, tamFondo);
  image(imagenFondo, posXFondo, posYFondo2, tamFondo, tamFondo);

  //Movimiento
  posYFondo1 -= 0.4;
  posYFondo2 -= 0.4;

  if (posYFondo1 < -tamFondo) {
    posYFondo1 = tamFondo;
  }

  if (posYFondo2 < -tamFondo) {
    posYFondo2 = tamFondo;
  }
}
