extends RigidBody2D

@export var constLinForce : float = 150
@export var constRotForce : float = 150

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    if linear_velocity.x > 0:
        apply_central_force(Vector2(constLinForce, 0))
        apply_torque       (constRotForce)
    if linear_velocity.x < 0:
        apply_central_force(Vector2(-constLinForce, 0))
        apply_torque       (-constRotForce)

func selfDestruct(other : Node):
    if other.is_in_group("NodeDestroyer") :
        print("OW")
        queue_free()
