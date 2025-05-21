extends Node

func rollDice(dice: Dictionary) -> int:
	randomize()
	var face_values = dice["face"]
	var mult = dice.get("mult", 1)
	var rand_index = randi() % face_values.size()
	var value = face_values[rand_index]
	return value * mult

func compareDiceScores(dice1: Dictionary, dice2: Dictionary) -> void:
	randomize()

	var score1 = rollDice(dice1)
	var score2 = rollDice(dice2)

	print("Dice 1 rolled: ", score1)
	print("Dice 2 rolled: ", score2)

	if score1 > score2:
		print("Dice 1 wins!")
	elif score1 < score2:
		print("Dice 2 wins!")
	else:
		print("It's a tie!")
