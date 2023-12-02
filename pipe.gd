extends CharacterBody2D

const SPEED = -3.5

func _process(delta):
	position += Vector2(SPEED, 0)
