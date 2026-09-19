# Dodge the Demons

Proyecto 2D desarrollado en **Godot 4** a partir del tutorial oficial **Your first 2D game**, incorporando cambios visuales y una mecánica adicional.

## 🎮 Descripción

**Dodge the Demons** es un juego de supervivencia 2D. El objetivo es controlar al personaje, esquivar a los demonios y sobrevivir el mayor tiempo posible para aumentar la puntuación.

## 🛡️ Mecánica extra: escudo

La mecánica adicional implementada es un **escudo temporal**.

- Se activa con **SPACE**.
- Permanece activo aproximadamente **1.5 segundos**.
- Protege al jugador frente a un impacto enemigo.
- Después de utilizarse tiene un enfriamiento aproximado de **3 segundos**.
- Se representa visualmente alrededor del jugador.

Esto añade una decisión defensiva al gameplay: el jugador debe elegir cuándo utilizar el escudo en lugar de depender únicamente de esquivar.

## 🕹️ Controles

| Tecla | Acción |
| --- | --- |
| ↑ ↓ ← → | Mover al jugador |
| SPACE | Activar el escudo |
| ESC | Salir del juego |

## 🧩 Componentes principales

- **Player:** movimiento, animación, colisiones y escudo.
- **Mob:** enemigos que aparecen durante la partida.
- **HUD:** puntuación, mensajes e interfaz.
- **Main:** integración de escenas, temporizadores, generación de enemigos y lógica general.
- **Signals:** comunicación entre las escenas y elementos del juego.

## 🎨 Personalización

- Identidad del juego cambiada a **Dodge the Demons**.
- Assets personalizados para jugador, enemigos y escudo.
- Fuente **Xolonium** para la interfaz.
- Marcador de puntuación y mensajes adaptados a la temática.
- Pantalla inicial con explicación de los controles y la mecánica del escudo.

## 📁 Estructura

```text
Alexis_Aguilera_Practica3/
├── project.godot
├── scenes/
├── scripts/
├── assets/
├── fonts/
├── build/
└── README.md
```

## ▶️ Ejecutar desde Godot

1. Clonar o descargar este repositorio.
2. Abrir **Godot 4**.
3. Importar `project.godot`.
4. Abrir el proyecto.
5. Presionar **F6/F5** para ejecutar la escena o el proyecto.

## 🎥 Video de gameplay

Para la entrega se grabará un video de **máximo 1 minuto** mostrando:

1. Pantalla inicial de Dodge the Demons.
2. Movimiento del jugador.
3. Aparición de demonios.
4. Incremento de la puntuación.
5. Activación y funcionamiento del escudo.

**Estado:** pendiente de grabación.

## 📚 Referencia

Proyecto basado en el tutorial oficial de Godot: **Your first 2D game**.

https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html

## 👤 Autores

**Alexis Kaleb Aguilera Correa**
**Jose Ernesto Luquin Gonzalez**

Práctica 3 — Desarrollo de juego 2D con Godot.
