extends CharacterBody3D

@onready var damage_area = $Damage_Area
@onready var attack_area = $Attack_Area
@onready var nav = $NavigationAgent3D

var SPEED = 10.0
var ACCEL = 20.0

var attack = 10

var knockback = 16.0





func _physics_process(delta):
	for player in get_tree().get_nodes_in_group("Player"):
		if $Attack_Range.overlaps_body(player):
			nav.target_position = player.global_position
		if attack_area.overlaps_body(player):
			player.take_damage(attack)
			var inertia = player.global_position - self.global_position
			player.inertia = inertia.normalized() * knockback
	var dir = (nav.target_position - self.global_position).normalized()
	velocity = velocity.lerp(dir * SPEED, ACCEL * delta)
	
	move_and_slide()
	
