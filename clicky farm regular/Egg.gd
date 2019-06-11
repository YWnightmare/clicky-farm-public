extends Node
export var MinMoney = GlobalVars.OnClickMoney
export var MaxMoney = GlobalVars.OnClickMoney * 4
export var EggValue = 0
export var EggSpawnTimerRandom = 0
#export var EggType = ["normal", "high", "max"]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	 EggValue = (randi() % MaxMoney)# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_EggSpawnTimer_timeout():
	EggSpawnTimerRandom = randi()%21+1 
	$EggSpawnTimer.wait_time = EggSpawnTimerRandom
	 # Replace with function body.
