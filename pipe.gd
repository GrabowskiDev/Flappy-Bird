extends CharacterBody2D

const SPEED = -3.5

func _process(delta):
	position += Vector2(SPEED, 0)

func death():
	get_tree().change_scene_to_file("res://main.tscn")

func _on_pipe_up_body_entered(body):
	death()

func _on_pipe_down_body_entered(body):
	death()
