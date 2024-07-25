class_name PLAYER_INPUT extends INPUT

var run_input : bool		# Detect if the player is running

func handle_move_inputs(delta):
	move_input_topdown = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
