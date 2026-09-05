int cant3 = 10;
int tam3;

void setupForAnidado3() {
  size(400, 400);
  tam3 = width / cant3;
}

void drawForAnidado3() {
  background(0);

  //sistema de grilla
  for (int x = 0; x < cant3; x ++) {
    for (int y = 0; y < cant3; y ++) {
      //cambio de opacidad segun posicion del mouse
      float distancia = dist(mouseX, mouseY, x * tam3, y * tam3);
      float tono = distancia * 255 / dist(width, height, 0, 0);
      fill(255, 0, 0, tono);
      rect(x * tam3, y * tam3, tam3, tam3);
    }
  }
}
