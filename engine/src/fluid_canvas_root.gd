extends Node2D

var points: Array[Vector2] = []

func _input(event):
	if event is InputEventMouseMotion and event.button_mask & MOUSE_BUTTON_MASK_LEFT:
		points.append(event.position)
		queue_redraw()

func _draw():
	for i in range(points.size() - 1):
		draw_line(points[i], points[i + 1], Color.WHITE, 2.0)
