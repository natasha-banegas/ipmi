# TP#3 — OpArt con Funciones y Ciclo For

## Consigna

Crear una obra **Op Art** interactiva con **estructuras repetitivas** (ciclos `for`) y **funciones propias**.

**Objetivo:** Comprender las estructuras repetitivas en Processing a través de la visualización de patrones de repetición, modulables por la apropiación de los índices (variable de la repetición).

## Requisitos

- Resolución de **800 x 400 px**
- Al menos **1 función propia con parámetros** (al menos 1) que **NO retorna** un valor
- Al menos **1 función propia con parámetros** (al menos 1) que **RETORNA** un valor
- **Condicionales** (`if - else`)
- **Ciclos FOR anidados**
- **Eventos** (mouse y/o teclado): modificación de variables
- Algunas funciones matemáticas: `dist()`, `map()`, `random()`
- **Reiniciar** el programa: volver variables a estado original
- Uso de **`rotate()`** y **`translate()`**
- La **imagen de referencia** debe estar ubicada a la **izquierda**

## Puntos técnicos aplicados

- Función con parámetros que NO retorna: `dibujarModulo(x, y, circuloInterior)`
- Función con parámetros que SÍ retorna: `esCirculoInterior(x, y)` → devuelve `boolean`
- Condicionales `if / else if / else` dentro de `esCirculoInterior()`
- Ciclos `for` anidados en `dibujarObra()`: uno para columnas, otro para filas
- Variables globales (`columnas`, `filas`, `tamCelda`, `angulo`, `semillaColores`)
- Funciones matemáticas: `random()`, `map()`, `radians()`
- Eventos mouse: `mousePressed()` (cambia colores), `mouseMoved()` (rota)
- Evento teclado: `keyPressed()` con `r` / `R` (reinicia ángulo)
- Reiniciar: `keyPressed()` con `r` vuelve `angulo` a `0`
- `pushMatrix()`, `translate()`, `rotate()`, `popMatrix()`
- `loadImage()` para la imagen de referencia
- Imagen de referencia ubicada a la izquierda (`image(obra19, 0, 0, 400, 400)`)

## Estructura del proyecto

```
tp3/
├── tp3.pde               # sketch principal (setup, draw, eventos)
├── funciones.pde         # funciones propias del dibujo
├── data/
│   └── 19.jpg            # imagen de referencia (obra de Op Art)
└── README.md
```

## Cómo funciona

### La obra

La mitad izquierda muestra la **imagen de referencia** (`19.jpg`). La mitad derecha genera una **versión propia** compuesta por una grilla de **10 x 10 celdas**, donde cada celda es un módulo con:

- Un **fondo cuadrado** de color aleatorio
- Una **figura interior** (círculo o cuadrado, según la posición) que también tiene color aleatorio y rota según la variable `angulo`

### La decisión de forma (`esCirculoInterior`)

Cada celda pregunta si debe llevar **círculo o cuadrado** adentro. La función `esCirculoInterior(x, y)` decide según la posición:

```java
if (x >= 2 && x <= 7 && y >= 2 && y <= 4) {
  return false;   // cuadrado
} else if (x >= 2 && x <= 7 && y >= 5 && y <= 7) {
  return true;    // círculo
} else if (y <= 4) {
  return true;    // círculo
} else {
  return false;   // cuadrado
}
```

Esto arma **franjas** horizontales y verticales con formas distintas, generando el patrón óptico.

### Los ciclos `for` anidados

```java
for (int x = 0; x < columnas; x++) {
  for (int y = 0; y < filas; y++) {
    // ...
  }
}
```

El `for` externo recorre las **columnas** (x), el interno recorre las **filas** (y). Adentro se calcula la posición en píxeles de cada celda:

```java
float posX = x * tamCelda + tamCelda / 2;
float posY = y * tamCelda + tamCelda / 2;
```

### Los colores

Los colores se generan con `random()`, pero **semillados** con `randomSeed()`:

```java
semillaColores = int(random(10000));   // semilla nueva cada vez
randomSeed(semillaColores);            // se usa en draw()
```

Eso hace que los colores cambien **solo cuando el usuario hace click**, no en cada frame.

### Interacción

- **Click** (mouse): cambia la semilla → nuevos colores
- **Mover el mouse** (izq → der): rota los módulos (0° a 360°)
- **Tecla `r` / `R`**: reinicia el ángulo a 0 (estado original)

### `translate()` y `rotate()`

Cada módulo se dibuja con `pushMatrix()` / `popMatrix()`:

```java
pushMatrix();
translate(x, y);                  // se mueve al centro de la celda
rotate(radians(angulo));          // rota
ellipse(0, 0, tamCelda*.8, tamCelda*.8);   // dibuja en el origen local
popMatrix();
```

Así la rotación es **alrededor del propio módulo**, no del canvas.
