extends Node2D

var points: Array[Vector2] = []
var drawing := false

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			drawing = event.pressed

	if event is InputEventMouseMotion and drawing:
		points.append(event.position)
		queue_redraw()

func _draw():
	for i in range(points.size() - 1):
		draw_line(points[i], points[i + 1], Color.WHITE, 2.0)
