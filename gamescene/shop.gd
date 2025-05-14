extends Node2D

var testItems = ["Lorem", "Ipsum", "Dolor", "Sit", "Amet", "Consectutor"]
var boughtItems = []
var itemStateSet = [1, 1, 1, 1, 1, 1]
var rerollCost = 1
var moneySpent = 0
var picked

func new() -> String:
	if testItems.size() == 0:
		print("배열에 있는 아이템을 다쳐먹었단다.")
		return "Nan"
	randomize()
	picked = randi_range(1, testItems.size()) - 1
	var item = testItems[picked]
	print(item)
	return item
	
func reroll():
	print("비사아아아앙! 위용위용 리롤함!!!!")
	rerollCost += 1
	moneySpent += rerollCost
	if testItems.size() == 0:
		print("배열에 있는 아이템을 다쳐먹었단다.")
		return "Nan"
	randomize()
	picked = randi_range(1, testItems.size()) - 1
	var item = testItems[picked]
	print(item)
	return item

func buy():
	if testItems.size() == 0:
		print("배열에 있는 아이템을 다쳐먹었단다.")
		return null
	print("구매 완료, 넌 이제 그지라고 볼 수 있다. ㅋㅋ")
	moneySpent += 3
	boughtItems.append(testItems[picked])
	testItems.remove_at(picked)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("reset"):
		print("R 키 눌림!")
		reroll()
	
	if event.is_action_pressed("buy"):
		print("T 키 눌림!")
		buy()
