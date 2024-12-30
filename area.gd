extends Area3D

#@onready var santa = $"../Santa"
var move_speed = 5.0
@onready var santa = $"../Santa"
var player_in_trigger = false
var target_position = Vector3(11.22,3.289,5.313) 
var lerp_time =0.0
@onready var dar_gaya_player= $"../dar_gayasound"


func _on_body_entered(body: Node) -> void:
	if body is Player:
		player_in_trigger = true
		print("tu mar gaya bey")

func _on_body_exited(body: Node) -> void:
	if body is Player:
		player_in_trigger = false
		print("baag milka baag, tu asani se nahi mar sakta , code kare he marega!")
'''
func _process(delta):
	if player_in_trigger:
		print("mar jha")
		santa.translate(Vector3(0,move_speed*delta,0))
func _process(delta):
	if player_in_trigger:
		lerp_time += delta*move_speed
		lerp_time =clamp(lerp_time,0.0,1.0)
		santa.global_transform.origin=lerp(santa.global_transform.origin, target_position,lerp_time)
		dar_gaya_player.play()
		if lerp_time ==1.0:
			print("Tumhara kuch nahi ho sakta!")
'''
func _process(delta):
	if player_in_trigger:
		lerp_time += delta * move_speed
		lerp_time = clamp(lerp_time, 0.0, 0.5)
		santa.global_transform.origin = lerp(santa.global_transform.origin, target_position, lerp_time)
		
		if lerp_time < 0.5 and !dar_gaya_player.playing:
			dar_gaya_player.play()
			if lerp_time == 1.0:
				print("Tumhara kuch nahi ho sakta!")
