extends Label

var score = 0

func _ready():
	text = String(score)

func _on_Pong_PlayerScore():
	score += 1
	text = String(score)
