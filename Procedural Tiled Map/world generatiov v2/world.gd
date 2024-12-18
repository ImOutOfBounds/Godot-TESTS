extends Node2D

var borders = Rect2(1, 1, 38, 21)
@onready var tileMap = $TileMap

func _ready():
	generate_level()
	
func generate_level():
	var walker = Walker.new(Vector2(19, 11), borders)
	var map = walker.walk(500)
	walker.queue_free()
	var cells = []
	for location in map:
		cells.append(Vector2(location))
		tileMap.set_cell(0, location, -1, Vector2i(0,3) )
		
	tileMap.set_cells_terrain_connect(0, cells, 0, -1)

func _input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().reload_current_scene()
