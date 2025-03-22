extends Label

func _process(delta: float) -> void : 
    text = "LIVES: " + str(get_tree().root.get_child(0).lives)
