extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -800.0
const JUMP_DEACCELERATION = 1.8
const FALL_ANIM_DELAY = 200

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var anim = get_node("AnimationPlayer")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		if velocity.y <= 0:
			velocity.y += gravity * JUMP_DEACCELERATION * delta
		else:
			velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
		
	# Rotation animation
	if velocity.y <= 0:
		anim.play("Jump")
	elif velocity.y > FALL_ANIM_DELAY:
		anim.play("Fall")

	move_and_slide() 
