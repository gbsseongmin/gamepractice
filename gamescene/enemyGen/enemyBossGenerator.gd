extends createNormal
class_name createBoss

func createEnemy(difficulty, round) -> Dictionary:
	super(difficulty, round)
	var diceType = [4, 8, 12]
	randomize()
	var type = diceType[randi_range(0, 2)]
	var face
	var pointer
	if type == 4:
		face = [0, 0, 0, 0]
		pointer = [0, 1, 2, 3]
	if type == 8:
		face = [0, 0, 0, 0, 0, 0, 0, 0]
		pointer = [0, 1, 2, 3, 4, 5, 6, 7]
	if type == 12:
		face = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		pointer = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
	
	for i in range(type * (type - 1) / 2):
		randomize()
		face[randi_range(0, type - 1)] += 1
	
	var mult = randi_range(1 + (round - 1) * 5, round * 5) * 4
	
	var newDice = {
		"type" = type,
		"face" = face,
		"pointer" = pointer,
		"mult" = mult
	}
	return newDice
