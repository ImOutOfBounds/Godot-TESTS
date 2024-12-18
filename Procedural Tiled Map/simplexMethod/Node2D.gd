extends Node2D

@onready var tilemap = $TileMap
const map_size = Vector2(500, 500)
const land_cap = .1

func _ready():
	generate_terrain()

func generate_terrain():
	var noise = FastNoiseLite.new()
	noise.seed = randi()
	var cells = []
	for x in map_size.x:
		for y in map_size.y:
			var a = noise.get_noise_2d(x, y)
			if a < land_cap:
				cells.append(Vector2(x, y))
			else:
				tilemap.set_cell(0, Vector2(x, y), 0, Vector2(0, 5), 0)
		
	tilemap.set_cells_terrain_connect(0, cells, 0, 0)
