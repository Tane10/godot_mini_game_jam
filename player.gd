extends KinematicBody2D

export var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()

	action()

	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1

	velocity = velocity.normalized() * speed


func action():
	if Input.is_action_just_pressed("action"):
		print('action')





func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
