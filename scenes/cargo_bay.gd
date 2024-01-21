extends Node3D

@export var orbit_cam: PhantomCamera3D
@export var player: CharacterBody3D

func _ready() -> void:
	player.set_input(false)
	

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		orbit_cam.set_priority(0)
		player.set_input(true)


