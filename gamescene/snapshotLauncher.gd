extends Node2D

func _ready():
	print("Loading a dice")
	var newDice = $dice
	print(newDice.getDice())
	print(newDice.roll())
	print(newDice.roll())
	print(newDice.roll())
	
	print("Loading a shop")
	var newShop = $shop
	
	var difficulty = 10
	var round = 1
	var newEnemyGenerator = $enemy
	print("Enemy expect values: (Difficulty:", difficulty, ", Round:", round, ")")
	print("Generating a Normal enemy")
	var enemy = newEnemyGenerator.createEnemy(difficulty, round) 
	print(enemy)
	print("Generating an Elite enemy")
	var elite = newEnemyGenerator.createEliteEnemy(difficulty, round)
	print(elite)
	print("Generating a Boss enemy")
	var boss = newEnemyGenerator.createBossEnemy(difficulty, round)
	print(boss)
	
	print("preparing auto battler")
