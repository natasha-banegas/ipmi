int posXCircle;
int posYCircle;
int tamCircle;
int velXCircle;
int velYCircle;

int posXSquare;
int posYSquare;
int tamSquare;
int velXSquare;
int velYSquare;

void setup() {
  size(800, 400);

  posXCircle = 400;
  posYCircle = 200;
  tamCircle = 80;
  velXCircle = 2;
  velYCircle = 2;
  
  posXSquare = 200;
  posYSquare = 200;
  tamSquare = 40;
  velXSquare = 4;
  velXSquare = 4;
}

void draw() {
  background(255);
  
  noStroke();
  fill(255, 255, 0);
  circle(posXCircle, posYCircle, tamCircle);
  
  fill(0, 0, 255);
  square(posXSquare, posYSquare, tamSquare);

  //MOVIMIENTOS
  //posXCircle += 2; //derecha
  //posXCircle -= 2; //izquierda
  //posYCircle += 2; //abajo
  //posYCircle -= 2; //arriba

  //REBOTE
  if (posXCircle >= width - tamCircle/2 || posXCircle <= tamCircle/2) {
    velXCircle *= -1;
  }
  posXCircle += velXCircle;
  
  if (posYCircle >= height - tamCircle/2 || posYCircle <= tamCircle/2) {
    velYCircle *= -1;
  }
  posYCircle += velYCircle;
  
  //LOOP
  if(posXSquare > width) {
    posXSquare = -tamSquare;
  }
  posXSquare += velXSquare;
  
  //CAMBIAR TAMAÑOS
  //tamCircle += 1; //aumenta el tamaño
  //tamSquare -= 1; //disminuye el tamaño
}
