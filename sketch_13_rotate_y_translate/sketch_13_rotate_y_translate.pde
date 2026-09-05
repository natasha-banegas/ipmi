//translate();
//rotate();
//radians();
//pushMatrix();
//popMatrix();

//los angulos NO se manejan en grados (0°, 45°) ---> tadianes (0, 2 * PI)
//0 = 0
//45° = PI / 4
//90° = PI / 2
//180° = PI (3,14...)
//360° = PI * 2

int vel, acc;

void setup() {
  size(400, 400);
  strokeWeight(2);
  rectMode(CENTER);

  vel = 0; //velocidad actual
  acc = 2; //aceleracion (se suma a velocidad)
}

void draw() {
  background(0);

  //a partir de aca se modifica la matriz (espacio de processing)
  pushMatrix();

  translate(width/2, height/2);

  rotate(radians(-vel));

  rect(0, 0, 200, 200);

  vel += acc;

  //resetea y vuelve a 0
  popMatrix();

  //noLoop(); //frena el ciclo draw
}
