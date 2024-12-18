extends Node2D

@export var sala : PackedScene

func _ready():
	var salax = sala.instantiate()
	add_child(salax)
	
	var salay = sala.instantiate()
	salay.position = get_child(1).find_child("Porta1").position - salay.find_child("Porta3").position
	add_child(salay)
	
	var salaz = sala.instantiate()
	salaz.position = get_child(2).find_child("Porta4").position - salaz.find_child("Porta2").position
	add_child(salaz)
	
	var salaa = sala.instantiate()
	salaa.position = get_child(2).find_child("Porta2").position - salaa.find_child("Porta4").position
	add_child(salaa)
	
	var salab = sala.instantiate()
	salab.position = get_child(2).find_child("Porta3").position - salab.find_child("Porta1").position
	add_child(salab)
	
func _process(delta):
	pass
	#print(get_child(1).find_child("Porta1").position)
	
