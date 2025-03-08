extends CharacterBody2D

@export var moveSpeed : float = 300
@export var jumpSpeed : float = 500

var gravity : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Can be called multiple times per frame. 'delta' is the elapsed time since
# the last step.
func _physics_process(delta: float) -> void:
    if not is_on_floor() : velocity.y += gravity * delta
    
    velocity.x = Input.get_axis("Left", "Right") * moveSpeed
    
    if Input.is_action_just_pressed("Jump") : velocity.y -= jumpSpeed
    
    move_and_slide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
