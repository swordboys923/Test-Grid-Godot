class_name grid_system

var lookup_dict = {}

# Called when the node enters the scene tree for the first time.
func _init(width, height):
	for x in width:
		for y in height:
			var key = str(x) + str(y)
			print(key)
			lookup_dict[key] = grid_object.new(x,y)

func get_grid_object(x,y):
	var key = str(x) + str(y)
	return lookup_dict[key]
	
func are_equal(a: grid_object, b: grid_object):
	return a.x == b.x and a.y == b.y
