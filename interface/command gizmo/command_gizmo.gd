extends Control

@export var top:Texture
@export var top_pressed:Texture
@export var bottom:Texture
@export var bottom_pressed:Texture
@export var left:Texture
@export var left_pressed:Texture
@export var right:Texture
@export var right_pressed:Texture
@export var left_shoulder:Texture
@export var left_shoulder_pressed:Texture
@export var right_shoulder:Texture
@export var right_shoulder_pressed:Texture


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		$BottomFace.texture = bottom_pressed
	elif event.is_action_released("jump"):
		$BottomFace.texture = bottom
