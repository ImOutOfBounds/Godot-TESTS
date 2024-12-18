extends Node2D



func _on_room_area_body_entered(body: Node2D) -> void:
	body.camPosition = position
	body.enteredRoom = true
	print("ai papai")
