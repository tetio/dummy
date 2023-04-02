extends CollisionShape2D

const MIN_X = 0
const MIN_Y = 0
const MAX_X = 1000
const MAX_Y = 500
var rng = RandomNumberGenerator.new()
const ball_resource = preload("res://actors/ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var my_random_number = rng.randf_range(0.0, 10000.0)
	if my_random_number > 9990:
		instantiate_ball()


func instantiate_ball():
	var ball = ball_resource.instantiate()
	var scale = rng.randf_range(0.0, 1.0)
	ball.scale = Vector2(scale, scale)
	ball.speed = rng.randf_range(100, 500)
	ball.position.y = rng.randf_range(MIN_Y, MAX_Y)
	get_parent().add_child(ball)
