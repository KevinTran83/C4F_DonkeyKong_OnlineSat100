extends Control

func _ready() -> void : visible = false

func Display() -> void:
    print("GameOVER")
    visible = true
    get_tree().paused = true
