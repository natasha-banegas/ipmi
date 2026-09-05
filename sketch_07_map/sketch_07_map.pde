//float diam;
PFont fuente;
int posY;
float tamTexto;
float opacidadTexto;

void setup() {
  size(400, 400);
  fuente = loadFont("Arial-Black-48.vlw");
  textFont(fuente, 24);
  textAlign(CENTER);
  posY = 450;
}

void draw() {
  background(255);

  //map(valor, inicio1, fin1, inicio2, fin2);
  //diam = map(mouseX, 0, width, 50, 250);
  //circle(mouseX, 200, diam);

  tamTexto = map(posY, 450, 100, 24, 48);
  opacidadTexto = map(posY, 450, 100, 25, 255);

  fill(0, opacidadTexto);
  textSize(tamTexto);

  text("¡Hola Mundo!", width/2, posY);
  if (posY > 100) {
    posY--;
  }
}
