extends Node2D

@export var width: int
@export var height:int

var grid: grid_system
var grid_obj: grid_object

# Called when the node enters the scene tree for the first time.
func _ready():
	grid = grid_system.new(width, height)
	grid_obj = grid_object.new(1,2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_T):
		print(grid.are_equal(grid.get_grid_object(1,2), grid_obj))
