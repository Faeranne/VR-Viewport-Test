extends Spatial

func _ready():
	var interface = ARVRServer.find_interface("OpenVR")
	if interface and interface.initialize():
		get_viewport().arvr = true
		get_viewport().hdr = false
		OS.vsync_enabled = false
		Engine.target_fps = 90