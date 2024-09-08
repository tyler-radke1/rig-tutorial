extends CharacterBody2D
	
func checkMovement(delta: float):
	var playerSpeed = 400
	var inputDirection = Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
	velocity = inputDirection.normalized() * playerSpeed

func _physics_process(delta: float) -> void:
	checkMovement(delta)
	move_and_slide()
