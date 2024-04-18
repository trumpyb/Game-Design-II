extends Area3D

@export var next_level = ""
@onready var HUD = get_tree().get_nodes_in_group("HUD")
var laps = 0




func _on_body_entered(body):
	if laps==3:
		if body.is_in_group("Player"):
			#HUD.popuP.visible = true
			#HUD.popuPLabel = "Loading..."
			await get_tree().create_timer(0.1).timeout
			var lvl = "res://" + next_level + ".tscn"
			get_tree().change_scene_to_file(lvl)
	if laps !=3:
		laps = laps + 1
