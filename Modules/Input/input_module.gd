## This is the basic input node that all will inherit
class_name INPUT extends Node2D

var move_input_sidescroll : float # Left, Right, Up, Down movement Vector2
var move_input_topdown : Vector2 # Left, Right, Up, Down movement Vector2
var jump_input : bool # True for jump, false otherwise

## Return the Move Input Vector2
func get_move_input_sidescroll() -> float:
	return move_input_sidescroll

## Return the Move Input Vector2
func get_move_input_topdown() -> Vector2:
	return move_input_topdown

## Return the Jump Input bool
func get_jump_input() -> bool:
	return jump_input

# Base function to handle input
func handle_move_inputs(delta):
	pass
