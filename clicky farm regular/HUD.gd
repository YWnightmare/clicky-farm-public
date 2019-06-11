extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var UpgradeEggsCost = 1000
var ChickenVar = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CanvasLayer/MoneyLabel.text = (str(GlobalVars.Money))
	$CanvasLayer/ClickerButton.text = (str(GlobalVars.OnClickMoney*GlobalVars.Multiplier))
	$CanvasLayer/PassiveIncomeLabel.text = (str(GlobalVars.PassiveIncome))
	#if GlobalVars.Money < UpgradeEggsCost:
	#	$CanvasLayer/UpgradeButtonEggs.disabled = true
	#else:
	#	$CanvasLayer/UpgradeButtonEggs.disabled = false
	$CanvasLayer/ChickenLabel.text = (str(GlobalVars.Chickens))
	
	


func upgrade_button_clicked():
	GlobalVars.Money -= UpgradeEggsCost
	UpgradeEggsCost += 200
	
func _on_ClickerButton_pressed():
	GlobalVars.Money += (GlobalVars.OnClickMoney * GlobalVars.Multiplier) # Replace with function body.





func _on_UpgradeButtonEggs_pressed():
	GlobalVars.Money -= 1000
	GlobalVars.Multiplier += 1 # Replace with function body.


func _on_ChickenButton_pressed():
	ChickenVar = randi()%4+1
	if ChickenVar == 1:
		GlobalVars.Chickens += 10
	if ChickenVar == 2:
		GlobalVars.Chickens += 5
	if ChickenVar == 3:
		GlobalVars.Chickens += 1	
	GlobalVars.Chickens += 1 # Replace with function body.
