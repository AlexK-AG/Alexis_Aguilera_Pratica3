# Dodge the Demons

Juego 2D desarrollado en Godot 4 a partir del tutorial oficial **Your first 2D game**.

## Descargar y jugar (Windows)

El ejecutable **no está dentro del repositorio**: pesa más de 100 MB y GitHub no permite subir archivos de ese tamaño. Se distribuye en la sección **Releases**.

1. Abre la sección **Releases** de este repositorio (barra lateral derecha) y entra a la versión más reciente.
2. Descarga `Dodge_the_Demons_Windows.zip` (o, por separado, `DodgeTheDemons.exe` y `DodgeTheDemons.pck`).
3. Descomprime y deja **`DodgeTheDemons.exe` y `DodgeTheDemons.pck` en la misma carpeta**.
4. Ejecuta `DodgeTheDemons.exe`.

> Windows puede mostrar el aviso "Windows protegió su PC" porque el ejecutable no está firmado. Pulsa **Más información** y luego **Ejecutar de todas formas**.

### ¿Qué es el archivo `.pck`?

Es el **paquete de recursos** del juego: contiene las escenas, los scripts, los sprites, la música, los sonidos y la fuente. El `.exe` solo trae el motor de Godot, por lo que necesita el `.pck` (con el mismo nombre y en la misma carpeta) para saber qué juego cargar. Sin él, el ejecutable no abre.

Este repositorio también incluye una copia del `.pck` en `build/`, pero para jugar hacen falta **ambos archivos juntos**, así que lo más simple es descargar el `.zip` de Releases.

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
- `build/`: archivos de exportación (el `.exe` se distribuye en Releases).

## Abrir el proyecto en Godot

1. Instala **Godot 4.7** (o superior).
2. En el gestor de proyectos elige **Importar** y selecciona el archivo `project.godot`.
3. Pulsa **Play** (F5). La escena principal es `scenes/main.tscn`.

## Tutorial base

https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html