extends Node2D

const PIPE = preload("res://pipe.tscn")

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout

func spawnPipes():
	wait(6000)
	var pipeInstance = PIPE.instantiate()
	get_parent().add_child(pipeInstance)
	pipeInstance.set_position(Vector2(800, 0))
	pipeInstance.apply_scale(Vector2(3.5, 3.5))

# Called when the node enters the scene tree for the first time.
func _ready():
	spawnPipes()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
