extends KinematicBody2D

var xvel = 0
var yvel = 0

var velocity = Vector2()
var frame = 0

func _physics_process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	frame += 1
	if Input.is_action_pressed('ui_right'):
		velocity.x += 256*delta
		print("fuck")
	elif Input.is_action_pressed('ui_left'):
		velocity.x -= 256*delta
	if Input.is_action_pressed('ui_down'):
		velocity.y += 256*delta
	elif Input.is_action_pressed('ui_up'):
		velocity.y -= 256*delta
	
	position += velocity*delta
	rotation = 2*frame*delta
