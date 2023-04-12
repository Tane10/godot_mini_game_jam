extends KinematicBody2D

export var speed = 200

var velocity = Vector2()
var target: Vector2 = position

func _input(event):
	if event.is_action_pressed("click"):
		target = get_global_mouse_position()
		print('target pos %s' % target)

func _physics_process(_delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 5:
		position = move_and_slide(target)
