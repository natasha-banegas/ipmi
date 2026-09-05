int cant3 = 100;

void setupFor5() {
  size(400, 400);
  //controla cuántas veces por segundo se ejecuta draw()
  frameRate(3);
}

void drawFor5() {
  background(0);

  //secuencia de rectangulos: dibuja 100 rectangulos en posiciones aleatorias
  for (int i = 0; i < cant3; i++) {
    //declaramos las variables dentro del ciclo for
    float x = random(width);
    float y = random(height);
    rect(x, y, 10, 10);
  }
}
