int cant1 = 5;
int tam1;

void setupFor2() {
  size(400, 400);
  tam1= width/cant1;
}

void drawFor2() {
  background(255);

  //secuencia de rectangulos: recorre 5 posiciones y dibuja un rectángulo en cada una
  for (int i = 0; i < cant1; i++) {
    rect(i*tam1, 0, tam1, tam1);
  }

  //secuencia de rectangulos: empiezan en 0x, mientras sea menor al ancho de la pantalla, se van agregando rectangulos
  for (int i = 0; i < width; i+= tam1) {
    rect(i, 200, tam1, tam1);
  }
}
