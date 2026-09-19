# Dodge the Demons

Juego 2D desarrollado en Godot 4 a partir del tutorial oficial **Your first 2D game**.

## Mecánica extra
El jugador dispone de un **escudo** que se activa con `SPACE`.
- Dura 1.5 segundos.
- Puede bloquear un impacto de un demonio.
- Al bloquear un impacto o terminar su duración, entra en enfriamiento durante 3 segundos.

## Controles
- Flechas: mover al jugador.
- SPACE: activar escudo.
- ESC: salir del juego.

## Estructura
- `scenes/`: escenas del juego (`main.tscn`, `player.tscn`, `mob.tscn`, `hud.tscn`).
- `scripts/`: lógica en GDScript (`main.gd`, `player.gd` con movimiento, colisiones y escudo, `mob.gd`, `hud.gd`).
- `assets/`: sprites, música y sonidos.
- `fonts/`: tipografía Xolonium.
- `build/`: ejecutable exportado para la entrega.

## Tutorial base
https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html
