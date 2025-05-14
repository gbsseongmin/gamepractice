extends Node2D

var dice = {
		"type" = 6,
		"face" = [4, 5, 6, 4, 5, 6],
		"pointer" = [1, 2, 3, 4, 5, 6]
	}

"""
func _init() -> void:
	print("A Loaded Dice:")
	dice = {
		"type" = 6,
		"face" = [4, 5, 6, 4, 5, 6],
		"pointer" = [1, 2, 3, 4, 5, 6]
	}
"""
	
func setDice(newDice) -> void:
	dice = {
		"type" = newDice["type"],
		"face" = newDice["face"],
		"pointer" = newDice["pointer"]
	}
	return

func getDice() -> Dictionary:
	return dice

func roll() -> int:
	randomize()
	var result = dice["pointer"][randi_range(1, dice["type"])] - 1;
	var calaculated = activate(result)
	return calaculated
	
func activate(pointer) -> int:
	# TODO: add some whacky ass effects here.
	var result = dice["face"][pointer]
	return result
