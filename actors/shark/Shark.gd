extends CharacterBody3D


const SPEED = 5.0
# const JUMP_VELOCITY = 4.5

var input_direction: Vector2 = Vector2.ZERO : set = set_input_direction


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta: float) -> void:
	#$Camera3D.look_at(position)

	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	# if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	# 	velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	#print(input_direction)
	var direction := (transform.basis * Vector3(input_direction.x, 0, input_direction.y)).normalized()

	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED

	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

# sets input direction to normalzied vectors only
func set_input_direction(arg:Vector2) -> void:
	input_direction = arg.normalized()

func set_input(arg: bool) -> void:
	$INPUT.enabled = arg