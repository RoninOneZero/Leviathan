extends Node

@export var enabled := true
@export var pawn: CharacterBody3D



func _physics_process(delta: float) -> void:
    if !enabled:
        return

    var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
    pawn.input_direction = input_dir