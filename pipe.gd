extends CharacterBody2D

const SPEED = -3.5
@onready var player = get_node("/root/world/Player")

func death():
	get_tree().change_scene_to_file("res://main.tscn")

func _process(delta):
	position += Vector2(SPEED, 0)

func _on_pipe_up_body_shape_entered(body_rid, _player, body_shape_index, local_shape_index):
	death()

func _on_pipe_down_body_shape_entered(body_rid, _player, body_shape_index, local_shape_index):
	death() # something wrong, the function runs at the start, possibly caused by the floor collision

func _on_floor_collision_body_entered(body):
	death()
