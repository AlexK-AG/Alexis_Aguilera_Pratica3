extends Area2D
signal hit

@export var speed = 400 # How fast the player will move (pixels/sec).
@export var shield_duration = 1.5 # Cuanto tiempo dura el escudo activo (segundos).
@export var shield_cooldown = 3.0 # Cuanto hay que esperar para volver a usarlo.
var screen_size # Size of the game window.
var is_shielded = false # True mientras el escudo esta activo.
var is_shield_on_cooldown = false # True mientras el escudo se esta "recargando".

func _ready():
	screen_size = get_viewport_rect().size
	$ShieldTimer.wait_time = shield_duration
	$ShieldCooldownTimer.wait_time = shield_cooldown
	$ShieldTimer.timeout.connect(_on_shield_timer_timeout)
	$ShieldCooldownTimer.timeout.connect(_on_shield_cooldown_timer_timeout)
	hide()

func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	if Input.is_action_just_pressed("shield"):
		activate_shield()

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()

	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
		# See the note below about the following boolean assignment
		$AnimatedSprite2D.flip_h = velocity.x < 0
	elif velocity.y != 0:
		$AnimatedSprite2D.animation = "up"
		$AnimatedSprite2D.flip_v = velocity.y > 0
	
	
func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
	# Reiniciamos el estado del escudo cada vez que empieza una partida.
	is_shielded = false
	is_shield_on_cooldown = false
	$ShieldSprite.hide()
	$ShieldTimer.stop()
	$ShieldCooldownTimer.stop()


func activate_shield() -> void:
	# No se puede activar si ya esta activo o si todavia esta "recargando".
	if is_shielded or is_shield_on_cooldown:
		return
	is_shielded = true
	$ShieldSprite.show()
	$ShieldTimer.start()


func _on_shield_timer_timeout() -> void:
	# Se acabo el tiempo del escudo: se oculta y empieza el enfriamiento.
	is_shielded = false
	$ShieldSprite.hide()
	is_shield_on_cooldown = true
	$ShieldCooldownTimer.start()


func _on_shield_cooldown_timer_timeout() -> void:
	# Ya se puede volver a usar el escudo.
	is_shield_on_cooldown = false


func _on_body_entered(body: Node2D) -> void:
	if is_shielded:
		# El escudo bloquea el golpe: destruye al enemigo y el escudo se
		# consume (pasa a enfriamiento) en vez de matar al jugador.
		if body.has_method("queue_free"):
			body.queue_free()
		is_shielded = false
		$ShieldSprite.hide()
		$ShieldTimer.stop()
		is_shield_on_cooldown = true
		$ShieldCooldownTimer.start()
		return

	hide() # Player disappears after being hit.
	hit.emit()
	# Must be deferred as we can't change physics properties on a physics callback.
	$CollisionShape2D.set_deferred("disabled", true)
