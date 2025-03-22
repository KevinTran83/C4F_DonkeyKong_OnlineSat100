extends Node

@export var lives : int = 3

signal gameOver()

func ChangeLives(amount : int) -> void:
    lives += amount
    lives = clamp(lives, 0, lives)
    if lives == 0 : gameOver.emit()
