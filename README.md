# TP#2 — Variables y Condicionales

## Consigna

Realizar una presentación dinámica que incorpore el uso de **variables** y **condicionales**. La propuesta debe incluir algún tipo de lógica: valores que cambian (variables) y al menos una decisión (condicional) que modifique el contenido o su apariencia (por ejemplo, texto, imágenes o estilos según una condición).

## Requisitos

- Al menos **5 pantallas**, cada una con una imagen y un texto
- El texto debe usar una **fuente de Processing** (`loadFont`) y tener **animación** (fade, escalado, movimiento)
- La transición entre pantallas es **automática por tiempo**
- Al finalizar debe haber un **botón para reiniciar** la presentación
- Resolución: **640 x 480 px**

## Puntos técnicos aplicados

- Condicionales (`if`, `if/else`)
- Operadores lógicos AND / OR (`&& / ||`)
- Variables (globales y por pantalla)
- Funciones propias (`setupPantallaX()`, `drawPantallaX()`, `drawFondo()`, `reiniciar()`)
- `loadImage()`, `loadFont()`
- `mousePressed` (detección de click en botón)
- `mouseClicked` (opcional)

## Estructura del proyecto

```
tp2/
├── tp2.pde               # sketch principal (setup, draw, mousePressed)
├── fondo.pde             # fondo animado en loop vertical
├── pantalla1.pde         # pantalla de inicio (título + botón COMENZAR)
├── pantalla2.pde         # introducción de Coraline
├── pantalla3.pde         # el Palacio Rosa
├── pantalla4.pde         # los vecinos (Bobinsky, Spink y Forcible)
├── pantalla5.pde         # Wybie y el gato
├── pantalla6.pde         # los padres
├── pantalla7.pde         # la puerta misteriosa
├── pantalla8.pde         # la otra madre y el otro padre
├── pantalla9.pde         # la bruja
├── pantalla10.pde        # texto final + botón REINICIAR
├── reiniciar.pde         # resetea todos los contadores y estados
└── data/
    ├── coraline_fondo.png
    ├── coraline_tunel.png
    ├── coraline_jones_1.png
    ├── palacio_rosa.png
    ├── señor_bobinsky.png
    ├── señoritas_spink_forcible.png
    ├── wybie_lovat.png
    ├── el_gato.png
    ├── coraline_padres.png
    ├── coraline_puerta.png
    ├── coraline_abre_puerta.png
    ├── raton_acrobata.png
    ├── otro_padre.png
    ├── otra_madre.png
    ├── bruja.png
    ├── KristenITC-Regular-72.vlw
    ├── KristenITC-Regular-28.vlw
    └── KristenITC-Regular-22.vlw
```

## Cómo funciona

### Máquina de estados

La presentación se maneja con una variable `estado` que indica qué pantalla se está mostrando. En `draw()` se llama a la función correspondiente:

```java
if (estado == 1) drawPantalla1();
if (estado == 2) drawPantalla2();
// ...
```

Cada pantalla, al terminar su animación, **cambia el estado** para pasar a la siguiente:

```java
if (contadorPantalla2 > 700) {
  estado = 3;
}
```

### Animaciones por tiempo

Cada pantalla tiene su propio **contador** que se incrementa en `draw()`. Con `map()` se traduce ese contador en:

- **Opacidad** (fade in / fade out)
- **Posición** (entrada / salida de imágenes)
- **Tamaño** (zoom de imágenes y textos)

Ejemplo:

```java
if (contadorPantalla2 > 240 && contadorPantalla2 < 320) {
  opacidadTexto = map(contadorPantalla2, 240, 320, 0, 255);
}
```

### Fondo animado

`drawFondo()` dibuja dos copias de la misma imagen apiladas verticalmente y las mueve hacia arriba. Cuando una sale de pantalla, vuelve a entrar por abajo. Da la sensación de **scroll infinito**.

### Botón de inicio y reinicio

- **Pantalla 1:** aparece un botón `COMENZAR` después de un tiempo. Al apretarlo se activa `botonComenzarActivado`, que dispara un zoom sobre la imagen y un fade a negro para pasar a la pantalla 2.
- **Pantalla 10:** aparece un botón `REINICIAR`. Al apretarlo se activa `botonReinicioActivado`, hace un fade a negro, y llama a `reiniciar()`.

### Reinicio

`reiniciar()` resetea todos los contadores a `0`, vuelve `estado` a `1` y llama a todos los `setupPantallaX()` para dejar las variables como al inicio.
