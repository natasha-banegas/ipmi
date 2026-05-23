int estado;

void setup() {
  size(640, 480);
  estado = 1;
  setupFondo();
  setupPantalla1();
  setupPantalla2();
  setupPantalla3();
  setupPantalla4();
  setupPantalla5();
  setupPantalla6();
  setupPantalla7();
  setupPantalla8();
  setupPantalla9();
  setupPantalla10();
}

void draw() {
  if (estado == 1) drawPantalla1();
  if (estado == 2) drawPantalla2();
  if (estado == 3) drawPantalla3();
  if (estado == 4) drawPantalla4();
  if (estado == 5) drawPantalla5();
  if (estado == 6) drawPantalla6();
  if (estado == 7) drawPantalla7();
  if (estado == 8) drawPantalla8();
  if (estado == 9) drawPantalla9();
  if (estado == 10) drawPantalla10();
}

void mousePressed() {
  if (estado == 1 && contadorTexto > 200 && mouseX > posXBotonComenzar && mouseX < posXBotonComenzar + tamXBotonComenzar && mouseY > posYBotonComenzar && mouseY < posYBotonComenzar + tamYBotonComenzar) {
    botonComenzarActivado = true;
  }

  if (estado == 10 && contadorPantalla10 > 120 && mouseX > posXBotonReinicio && mouseX < posXBotonReinicio + tamXBotonReinicio && mouseY > posYBotonReinicio && mouseY < posYBotonReinicio + tamYBotonReinicio) {
    botonReinicioActivado = true;
  }
}
