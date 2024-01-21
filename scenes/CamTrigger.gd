extends Area3D

@export var phantom_cam: PhantomCamera3D

func _ready() -> void:
	connect("body_entered", _on_body_entered)
	connect("body_exited", _on_body_exited)


func _on_body_entered(body:Node3D) -> void:
	if body.is_in_group("Player"):
		phantom_cam.set_priority(20)



func _on_body_exited(body:Node3D) -> void:
	if body.is_in_group("Player"):
		phantom_cam.set_priority(0)
