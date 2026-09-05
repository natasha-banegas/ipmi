void setupFor3() {
  size(400, 400);
}

void drawFor3() {
  background(255);

  //secuencia de circulos, inicia en el ancho, mientras sea mayor a cero, va creando circulos con un espacio de 20px
  for (int c=width; c > 0; c -= 20) {
    ellipse(width/2, height/2, c, c);
  }
}
