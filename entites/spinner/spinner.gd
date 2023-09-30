extends PathFollow3D

const SPEED = PI * 5

func _ready():
	self.progress = SPEED
	
func _process(delta):
	$camera_rig.global_position.z = lerpf($camera_rig.global_position.z, self.global_position.z, 0.02)
	
	$body.rotate_y(SPEED * delta)
	self.progress += SPEED * delta * 2
