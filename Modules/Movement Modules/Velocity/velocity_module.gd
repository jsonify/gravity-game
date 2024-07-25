class_name Velocity extends Node2D

@export var SPEED := 300.0
@export var JUMP_VELOCITY := -400.0

@export_group("Nodes")
@export var individual : CharacterBody2D
@export var input_node : INPUT

var current_speed := SPEED

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func handle_velocity(delta):
	# Add the gravity
	if not individual.is_on_floor():
		individual.velocity.y += gravity * delta
	
	# Handle the jump
	if input_node.get_jump_input() and individual.is_on_floor():
		individual.velocity.y = JUMP_VELOCITY
	
	# Get the input direction
