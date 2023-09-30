extends Path3D

var rng = RandomNumberGenerator.new()

var step = -10
var depth = -1_000

func _ready():
	self.curve = generate_line()

func generate_line():
	var line = Curve3D.new()
	var dir = 1
	for i in range(0, depth, step):
		dir *= -1
		var y = rng.randi_range(-step, step)
		line.add_point(Vector3(0, y, i), Vector3(dir * step, 0, 0), Vector3(-dir * step, 0, 0))
		
	return line
