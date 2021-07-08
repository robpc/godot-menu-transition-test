tool
extends Control

onready var _tween = $Tween

export var transition_time: float = 0.5

var _queue_position: Vector2
var _in_position: Vector2
var _out_position: Vector2

var _current_control: Control

func _enter_tree():
	if Engine.is_editor_hint() and not is_connected("visibility_changed", self, "_on_visibility_changed"):
		var error = connect("visibility_changed", self, "_on_visibility_changed")
		if error:
			print_debug(error)

func _on_visibility_changed():
	if visible:
		_ready()

func _on_resized():
	_reset_params()
	set_menu(_current_control.name if _current_control else "")

func _reset_params():
	_queue_position = Vector2(rect_size.x + 2, 0)
	_in_position = Vector2(0, 0)
	_out_position = Vector2(-rect_size.x / 2 - 2, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	_reset_params()
	set_menu("")

func set_menu(control_name: String):
	var children = get_children()
	
	if children:
		var first_control: Control
		
		for child in children:
			if child is Control:
				var control = child as Control
				control.rect_position = _queue_position
				control.rect_size = rect_size
				
				if not _current_control:
					# grab the first control
					_current_control = control
				elif control.name == control_name:
					_current_control = control 
		
		if _current_control:
			_current_control.rect_position = _in_position
		
		if control_name and _current_control and control_name != _current_control.name:
			print('Could not find control named "', control_name, '" in children')

func transition_in(control_name: String):
		var control = null
		
		if control_name:
			control = get_node(control_name)
			
		if not control:
			print('Could not find control at path: ', control_name)
			return
			
		if control == _current_control:
			return
		
		if _tween.is_active():
			_tween.stop()
		
		_tween.interpolate_property(_current_control, 'rect_position', null, _out_position, transition_time)
		_tween.interpolate_property(control, 'rect_position', _queue_position, _in_position, transition_time)
		_tween.start()
		
		_current_control = control

func transition_out(control_name: String):
		var control = null
		
		if control_name:
			control = get_node(control_name)
			
		if not control:
			print('Could not find control at path: ', control_name)
			return
			
		if control == _current_control:
			return
		
		if _tween.is_active():
			_tween.stop()
		
		_tween.interpolate_property(_current_control, 'rect_position', null, _queue_position, transition_time)
		_tween.interpolate_property(control, 'rect_position', _out_position, _in_position, transition_time)
		_tween.start()
		
		_current_control = control

