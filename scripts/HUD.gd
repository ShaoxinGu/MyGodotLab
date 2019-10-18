extends CanvasLayer

signal start_game

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()
	
func show_game_over():
	show_message("Game Over")
	yield($MessageTimer,"timeout")
	$StartButton.show()
	$MessageLabel.text = "COME AND CATCH ME"
	$MessageLabel.show()
	
func update_score(score):
	$ScoreLabel.text = str(score)

func _on_StartButton_pressed():
	emit_signal("start_game")
	$StartButton.hide()
	$ScoreLabel.text = "0"

func _on_Label_start_game():
	$MessageLabel.hide()
