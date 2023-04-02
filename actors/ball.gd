extends CharacterBody2D

@export var speed: float = 1000
@export var direction_x: float = 1
@export var direction_y: float = 0


# Get the gravity from the project settings to be synced with RigidBody nodes.


func _physics_process(delta):
	
#	if position.x > 1000:
#		direction_x = -1;
#	if position.x < 64:
#		direction_x = 1;

#	if position.x > 1000:
#		queue_free()
	
	velocity = Vector2(direction_x, direction_y) * speed
	
	move_and_slide()

