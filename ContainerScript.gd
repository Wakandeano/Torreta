extends Container


# Declare member variables here. Examples:
# var a = 2
var fuego1 =$Torreta/arma/Container/fuego1.visible
var fuego2 =$Torreta/arma/Container/fuego2.visible

# Called when the node enters the scene tree for the first time.
func _ready():
	flash()

func flash():
	if Input.is_action_pressed("ui_up"):
		fuego1.visible = true
		fuego2.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
