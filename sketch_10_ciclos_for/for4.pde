int cant2 = 100;

void setupFor4() {
  size(400, 400);
}

void drawFor4() {
  background(0);

  //secuencia de ellipses: dibuja 100 circulos en posiciones aleatorias)
  for (int i = 0; i < cant2; i++) {
    ellipse(random(width), random(height), 10, 10);
  }
}
