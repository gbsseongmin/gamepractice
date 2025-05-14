extends Node2D

func _ready():
	print("Loading a dice")
	var newDice = $dice
	print(newDice.getDice())
	print(newDice.roll())
	print(newDice.roll())
	print(newDice.roll())
