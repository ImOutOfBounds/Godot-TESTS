extends CharacterBody2D


@export var camPosition = Vector2(0, 0)
@export var enteredRoom = false
const SPEED = 300.0

func _ready() -> void:
	$Camera2D.set_as_top_level(true)

func _physics_process(delta):
	
	if enteredRoom:
		changeCam(camPosition)
		
	var directionX = Input.get_axis("ui_left", "ui_right")
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

func changeCam(camPosition):
	$Camera2D.global_position = camPosition
	enteredRoom = false
