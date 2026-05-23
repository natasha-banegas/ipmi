//Texto final
String textoFinal;
float posXTextoFinal, posYTextoFinal;
float opacidadTextoFinal;

//Boton reiniciar
float posXBotonReinicio, posYBotonReinicio;
float tamXBotonReinicio, tamYBotonReinicio;
boolean hoverBotonReinicio, botonReinicioActivado;
float tamTextoBotonReinicio;

//Oscurecer pantalla
float opacidadPantallaFinal;

//Tiempo
int contadorPantalla10;
int contadorTransicionFinal;

void setupPantalla10() {
  //Texto final
  textoFinal = "¿Logrará Coraline volver a casa?";
  posXTextoFinal = width / 2;
  posYTextoFinal = 100;
  opacidadTextoFinal = 0;

  //Boton reiniciar
  tamXBotonReinicio = 200;
  tamYBotonReinicio = 50;
  posXBotonReinicio = width / 2 - tamXBotonReinicio / 2;
  posYBotonReinicio = 365;
  tamTextoBotonReinicio = 20;

  //Oscurecer pantalla
  opacidadPantallaFinal = 0;

  //Tiempo
  contadorPantalla10 = 0;
  contadorTransicionFinal = 0;
  botonReinicioActivado = false;
}

void drawPantalla10() {
  drawFondo();

  //Tiempo
  if (botonReinicioActivado == false) {
    contadorPantalla10++;
  }

  //Entrada texto final
  if (contadorPantalla10 > 0 && contadorPantalla10 < 80) {
    opacidadTextoFinal = map(contadorPantalla10, 0, 80, 0, 255);
  }

  //Texto final
  textAlign(CENTER, CENTER);
  fill(240, 220, 90, opacidadTextoFinal);
  textFont(fuenteTexto);
  textSize(28);
  text(textoFinal, posXTextoFinal, posYTextoFinal);

  //Boton reiniciar
  if (contadorPantalla10 > 120) {
    if (mouseX > posXBotonReinicio && mouseX < posXBotonReinicio + tamXBotonReinicio && mouseY > posYBotonReinicio && mouseY < posYBotonReinicio + tamYBotonReinicio) {
      hoverBotonReinicio = true;
    } else {
      hoverBotonReinicio = false;
    }

    if (hoverBotonReinicio) {
      fill(255, 255, 120);
      stroke(255, 255, 180);
      strokeWeight(2);
      rect(posXBotonReinicio - 5, posYBotonReinicio - 2.5, tamXBotonReinicio + 10, tamYBotonReinicio + 5, 16);
      tamTextoBotonReinicio = 22;
    } else {
      fill(240, 220, 90);
      noStroke();
      rect(posXBotonReinicio, posYBotonReinicio, tamXBotonReinicio, tamYBotonReinicio, 16);
      tamTextoBotonReinicio = 20;
    }

    //Texto boton
    fill(0);
    textFont(fuenteTextoBoton);
    textSize(tamTextoBotonReinicio);
    text("REINICIAR", posXBotonReinicio + tamXBotonReinicio / 2, posYBotonReinicio + tamYBotonReinicio / 2);
    noStroke();
  }

  //Zoom 
  if (botonReinicioActivado) {
    contadorTransicionFinal++;
    opacidadPantallaFinal = map(contadorTransicionFinal, 0, 80, 0, 255);
  }

  //Oscurecer pantalla
  fill(0, opacidadPantallaFinal);
  rect(0, 0, width, height);

  //Reiniciar todo
  if (contadorTransicionFinal > 80) {
    reiniciar();
  }
}
