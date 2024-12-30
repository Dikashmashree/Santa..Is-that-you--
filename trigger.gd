extends Node3D

@onready var santa= $"../Santa"
var move_speed=5.0
var player_in_trigger =false
# Called when the node enters the scene tree for the first time.
func _on_Trigger_area_entered(body):
	if body.is_in_group("Player"):
		player_in_trigger=true
		print("tu mar gaya bey")

func _on_Trigger_area_exited(body):
	if body.is_in_group("Player"):
		player_in_trigger=true
		print("baag milka baag, tu asanise nahi mar sakta , code kare he marega!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_in_trigger:
		santa.translate(Vector3(move_speed*delta,0,0))
