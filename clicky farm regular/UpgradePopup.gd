extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var multtext = "Ugrape your egg! current multiplier:" + str(GlobalVars.Multiplier)
	$UpgradeMenu/UpgradeEgg.text = multtext
	


func _on_CloseButton_pressed():
	queue_free() # Replace with function body.


func _on_OpenButton_pressed():
	$UpgradeMenu.show() # Replace with function body.


func _on_UpgradeEgg_pressed():
	GlobalVars.Money -= 1000
	GlobalVars.Multiplier += 1
	if GlobalVars.Money > 1000:
		$UpgradeMenu/UpgradeEgg.draw()
	if GlobalVars.Money <1000:
		$UpgradeMenu/UpgradeEgg.hide() # Replace with function body.


func _on_UpgradeChickens_pressed():
	GlobalVars.Money -= 10000
	GlobalVars.PassiveIncome += 0.1 # Replace with function body.
