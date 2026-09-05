int cant1 = 10;
int tam1;

void setupForAnidado1() {
  size(400, 400);
  tam1 = width / cant1;
}

void drawForAnidado1() {
  background(255);
  noStroke();

  //sistema de grilla
  for (int x = 0; x < cant1; x ++) {
    for (int y = 0; y < cant1; y ++) {
      //alternar colores y figuras
      if ((x+y) % 2 == 0) {
        fill(0, 255, 0);
        rect(x * tam1, y * tam1, tam1, tam1);
      } else {
        fill(0, 0, 255);
        ellipse(x * tam1 + tam1 / 2, y * tam1 + tam1 / 2, tam1, tam1);
      }
    }
  }
}
