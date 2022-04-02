extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene = load("res://Block.tscn")


# Called when the node enters the scene tree for the first time.
#func _ready():


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouse_click"):
		print("click")
		var block = scene.instance()
		block.position = get_global_mouse_position()
		add_child(block)
		
		


func _on_Area2D_body_entered(body):
	if body.name == "Birb":
		print("GAME OVER")
