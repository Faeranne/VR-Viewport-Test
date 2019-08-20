extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var interface = ARVRServer.find_interface("OpenVR")
	if interface:
		interface.initialize()
		$Viewport.arvr = true

	# make sure vsync is disabled or we'll be limited to 60fps
		OS.vsync_enabled = false
	
	# up our physics to 90fps to get in sync with our rendering
		Engine.target_fps = 90

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
