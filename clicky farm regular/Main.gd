extends Node
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize() # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


	


func _on_PassiveIncomeTimer_timeout():
	GlobalVars.Money += GlobalVars.PassiveIncome * GlobalVars.Chickens # Replace with function body.
