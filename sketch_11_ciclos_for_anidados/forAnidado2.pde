int cant2 = 10;
int tam2;

void setupForAnidado2() {
  size(400, 400);
  tam2 = width / cant2;

  frameRate(3);
}

void drawForAnidado2() {
  background(0);

  //sistema de grilla
  for (int x = 0; x < cant2; x ++) {
    for (int y = 0; y < cant2; y ++) {
      //cada celda contiene un cuadrado de tamaño aleatorio
      float ancho1 = random(10, tam2);
      rect(x * tam2, y * tam2, ancho1, ancho1);
    }
  }
}
