extends Sprite


var Disparo = preload('res://Fuego.tscn')


# Called when the node enters the scene tree for the first time.
func _ready():
	scale = Vector2(3,3)
	position = Vector2(150,150)
	#position = Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		rotation += 0.1
	elif Input.is_action_pressed("ui_left"):
		rotation -= 0.1
	elif Input.is_action_pressed("ui_select"):
		add_child(Disparo.instance())
		add_child(Disparo.instance())

#func _on_tween_
