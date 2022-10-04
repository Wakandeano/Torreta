extends Node2D

func _ready():
	$tween.interpolate_property($FireContainer, 'scale', \
	Vector2(0.3,0.3), Vector2(1,1.5), 0.3, Tween.TRANS_QUAD, Tween.EASE_OUT)
	$tween.interpolate_property($FireContainer, 'modulate:a', \
	1, 0, 0.35, Tween.TRANS_QUAD, Tween.EASE_OUT)
	$FireContainer/AudioStreamPlayer.play()
	$tween.start()

func _on_Tween_tween_all_completed():
	$FireContainer/AudioStreamPlayer.playing = false
	$FireContainer/AudioStreamPlayer.stop()
	queue_free()
