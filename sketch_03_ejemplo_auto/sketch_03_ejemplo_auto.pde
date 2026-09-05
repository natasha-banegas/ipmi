//AUTO
float posXAuto, posYAuto;
int tamXAuto, tamYAuto;
int velAuto;

//RUEDAS
float posXRuedaIzq, posYRuedaIzq;
float posXRuedaDer, posYRuedaDer;
int tamRuedas;

//RUTA
float posXLinea1, posXLinea2, posXLinea3, posXLinea4, posXLinea5;
int velLinea;

//PRADERA
float posXPrad1, posXPrad2;
float posYPrad;
int velPrad;

//NUBES
float posXNube1, posXNube2, posXNube3;
float posYNube;
int tamXNube, tamYNube;
int velNube;

void setup() {
  size (800, 400);

  //AUTO
  posXAuto = 220;
  posYAuto = 230;
  tamXAuto = 250;
  tamYAuto = 70;
  velAuto = 3;

  //RUEDAS
  tamRuedas = 50;

  //RUTA
  posXLinea1 = 0;
  posXLinea2 = 170;
  posXLinea3 = 340;
  posXLinea4 = 510;
  posXLinea5 = 680;
  velLinea = -3;

  //PRADERA
  posXPrad1 = 200;
  posXPrad2 = 600;
  posYPrad = 280;
  velPrad = -2;

  //NUBE
  posXNube1 = 100;
  posXNube2 = 400;
  posXNube3 = 700;
  posYNube = 45;
  tamXNube = 80;
  tamYNube = 40;
  velNube = -1;
}

void draw() {
  background(135, 205, 235);

  //RUTA
  fill(150);
  rect(0, 280, width, height/2);

  stroke(255);
  strokeWeight(8);
  line(posXLinea1, height - 60, posXLinea1 + 50, height - 60);
  line(posXLinea2, height - 60, posXLinea2 + 50, height - 60);
  line(posXLinea3, height - 60, posXLinea3 + 50, height - 60);
  line(posXLinea4, height - 60, posXLinea4 + 50, height - 60);
  line(posXLinea5, height - 60, posXLinea5 + 50, height - 60);

  //movimiento
  posXLinea1 += velLinea;
  posXLinea2 += velLinea;
  posXLinea3 += velLinea;
  posXLinea4 += velLinea;
  posXLinea5 += velLinea;

  //loop
  if (posXLinea1 < - 50) {
    posXLinea1 = width;
  }
  if (posXLinea2 < - 50) {
    posXLinea2 = width;
  }
  if (posXLinea3 < - 50) {
    posXLinea3 = width;
  }
  if (posXLinea4 < - 50) {
    posXLinea4 = width;
  }
  if (posXLinea5 < - 50) {
    posXLinea5 = width;
  }

  //PRADERA
  noStroke();
  fill(50, 180, 80);
  triangle(posXPrad1, posYPrad, posXPrad1 + 150, posYPrad - 150, posXPrad1 + 300, posYPrad);
  triangle(posXPrad2, posYPrad, posXPrad2 + 150, posYPrad - 150, posXPrad2 + 300, posYPrad);

  //movimiento
  posXPrad1 += velPrad;
  posXPrad2 += velPrad;

  //loop
  if (posXPrad1 < -300) {
    posXPrad1 = width;
  }
  if (posXPrad2 < -300) {
    posXPrad2 = width;
  }

  //AUTO
  fill(255, 0, 0);

  //techo
  quad(
    posXAuto + 15, posYAuto,
    posXAuto + 200, posYAuto,
    posXAuto + 160, posYAuto - 60,
    posXAuto + 80, posYAuto - 60
    );

  //base
  rect(posXAuto, posYAuto, tamXAuto, tamYAuto);

  stroke(0);
  strokeWeight(4);
  line(posXAuto + 120, posYAuto + 5, posXAuto + 130, posYAuto + 5);

  noStroke();
  fill(35);
  rect(posXAuto, posYAuto + 60, 40, 10);
  rect(posXAuto + 210, posYAuto + 60, 40, 10);

  fill(255, 125, 0);
  rect(posXAuto, posYAuto + 20, 15, 15);

  fill(255, 215, 0);
  rect(posXAuto, posYAuto + 35, 15, 10);

  rect(posXAuto + 235, posYAuto + 10, 15, 15);

  //ventanas
  fill(200, 230, 255);
  quad(
    posXAuto + 40, posYAuto - 5,
    posXAuto + 105, posYAuto - 5,
    posXAuto + 105, posYAuto - 50,
    posXAuto + 85, posYAuto -50
    );
  quad(
    posXAuto + 115, posYAuto - 5,
    posXAuto + 180, posYAuto - 5,
    posXAuto + 155, posYAuto -50,
    posXAuto + 115, posYAuto - 50
    );

  //movimiento
  posXAuto += velAuto;

  //loop
  if (posXAuto > width) {
    posXAuto = -tamXAuto;
  }

  //RUEDAS
  fill(0);

  //siguen al auto
  posXRuedaDer = posXAuto + tamXAuto - 55;
  posYRuedaDer = posYAuto + tamYAuto;
  circle(posXRuedaDer, posYRuedaDer, tamRuedas);

  posXRuedaIzq = posXAuto + 55;
  posYRuedaIzq = posYAuto + tamYAuto;
  circle(posXRuedaIzq, posYRuedaIzq, tamRuedas);

  //NUBES
  fill(255);
  ellipse(posXNube1, posYNube, tamXNube, tamYNube);
  ellipse(posXNube1 + 20, posYNube + 25, tamXNube, tamYNube);
  ellipse(posXNube1 - 25, posYNube + 15, tamXNube, tamYNube);

  ellipse(posXNube2, posYNube - 10, tamXNube-10, tamYNube-5);
  ellipse(posXNube2 + 20, posYNube + 15, tamXNube-10, tamYNube-5);
  ellipse(posXNube2 - 25, posYNube + 5, tamXNube-10, tamYNube-5);

  ellipse(posXNube3, posYNube + 10, tamXNube-15, tamYNube-8);
  ellipse(posXNube3 + 20, posYNube + 35, tamXNube-15, tamYNube-8);
  ellipse(posXNube3 - 25, posYNube + 25, tamXNube-15, tamYNube-8);

  //movimiento
  posXNube1 += velNube;
  posXNube2 += velNube;
  posXNube3 += velNube;

  //loop
  if (posXNube1 < -tamXNube) {
    posXNube1 = width + tamXNube;
  }
  if (posXNube2 < -tamXNube) {
    posXNube2 = width + tamXNube;
  }
  if (posXNube3 < -tamXNube) {
    posXNube3 = width + tamXNube;
  }
}
