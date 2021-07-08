extends PanelContainer

onready var menu_transition = $Layout/MenuTransition

func _ready():
	menu_transition.set_menu('Main')

func _on_ButtonA_pressed():
	menu_transition.transition_in('MenuA')

func _on_ButtonB_pressed():
	menu_transition.transition_in('MenuB')

func _on_ButtonB2_pressed():
	menu_transition.transition_in('MenuB2')

func _on_BackButton_pressed():
	menu_transition.transition_out('Main')

func _on_MenuB2_BackButton_pressed():
	menu_transition.transition_out('MenuB')
