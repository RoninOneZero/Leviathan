extends Area3D

@export var path_pcam: PhantomCamera3D


func _on_body_entered(body:Node3D) -> void:
	# print(body.owner.name)
	if body.is_in_group("Player"):
		path_pcam.set_priority(20)



func _on_body_exited(body:Node3D) -> void:
	if body.is_in_group("Player"):
		path_pcam.set_priority(0)
