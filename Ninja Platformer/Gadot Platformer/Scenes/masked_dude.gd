extends CharacterBody2D
var speed = 10

func move_up():
	velocity.y = -10

func move_down():
	velocity.y = 10

func move_left():
	velocity.x = -10

func move_right():
	velocity.x = 10
	
	
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	move_left()
	move_and_slide()
# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	
