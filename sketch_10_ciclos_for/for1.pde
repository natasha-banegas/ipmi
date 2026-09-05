//CICLOS FOR
void setupFor1() {
  size(400, 400);
}

void drawFor1() {
  background(255);

  /*
   line(0, 0, 0, 200);
   line(20, 0, 20, 200);
   line(40, 0, 40, 200);
   line(60, 0, 60, 200);
   line(80, 0, 80, 200);
   line(100, 0, 100, 200);
   line(120, 0, 120, 200);
   line(140, 0, 140, 200);
   line(160, 0, 160, 200);
   line(180, 0, 180, 200);
   line(200, 0, 200, 200);
   line(220, 0, 220, 200);
   line(240, 0, 240, 200);
   line(260, 0, 260, 200);
   line(280, 0, 280, 200);
   line(300, 0, 300, 200);
   line(320, 0, 320, 200);
   line(340, 0, 340, 200);
   line(360, 0, 360, 200);
   line(380, 0, 380, 200);
   line(400, 0, 400, 200);
   */

  /*
  for (iniciador, condición, actualización) {
   acciones;
   }
   */

  //secuencia de lineas: empiezan en 0x, mientras sea menor al ancho de la pantalla, va haciendo lineas con un espaciado de 20px
  for (int i = 0; i < width; i += 20) {
    line(i, 0, i, 200);
  }
}
