extends KinematicBody2D

var speed= 300
var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_just_pressed("right"):
		velocity.x += 1	
	velocity = velocity.normalized() * speed
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
