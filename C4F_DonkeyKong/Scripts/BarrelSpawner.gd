extends Node2D

@export var barrel : PackedScene
@export var spawnTime : float = 1

var timer : Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    timer = Timer.new()
    add_child(timer)
    timer.set_wait_time(spawnTime)
    timer.timeout.connect(spawnBarrel)
    timer.start()
    
func spawnBarrel() -> void:
    var newBarrel = barrel.instantiate()
    newBarrel.position = position
    add_child(newBarrel)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
