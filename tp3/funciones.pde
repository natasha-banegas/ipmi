void dibujarObra() {
  for (int x = 0; x < columnas; x++) {
    for (int y = 0; y < filas; y++) {
      float posX = x * tamCelda + tamCelda / 2;
      float posY = y * tamCelda + tamCelda / 2;

      boolean circuloInterior = esCirculoInterior(x, y);

      dibujarModulo(posX, posY, circuloInterior);
    }
  }
}

boolean esCirculoInterior(int x, int y) {
  if (x >= 2 && x <= 7 && y >= 2 && y <= 4) {
    return false;
  } else if (x >= 2 && x <= 7 && y >= 5 && y <= 7) {
    return true;
  } else if (y <= 4) {
    return true;
  } else {
    return false;
  }
}

void dibujarModulo(float x, float y, boolean circuloInterior) {
  color exterior = color(random(255), random(255), random(255));
  color interior = color(random(255), random(255), random(255));

  noStroke();

  fill(exterior);
  rect(x, y, tamCelda, tamCelda);

  fill(interior);
  pushMatrix();

  translate(x, y);
  rotate(radians(angulo));

  if (circuloInterior) {
    ellipse(0, 0, tamCelda*.8, tamCelda*.8);
  } else {
    rect(0, 0, tamCelda*.7, tamCelda*.7);
  }

  popMatrix();
}
