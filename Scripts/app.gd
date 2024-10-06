extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_item_pressed(idspecial):
	var item_id = idspecial
	
	if item_id == 0:
		$OpenFileDialog.popup()
	elif item_id == 1:
		$SaveFileDialog.popup()
	elif item_id == 2:
		get_tree().queue_delete($".")
	


func _on_open_file_dialog_file_selected(path):
	print(path)
	var f = FileAccess.open(path, 1)
	f.open(path, 1)
	$CodeEdit.text = f.get_as_text()
	f.close()

func _on_save_file_dialog_file_selected(path):
	var f = FileAccess.open(path, 2)
	f.open(path, 2)
	f.store_string($CodeEdit.text)
	f.close()

func _on_file_button_down() -> void:
	$File/FileMenu.visible = true

func _on_file_menu_id_pressed(id: int) -> void:
	_on_item_pressed(id)
	$File/FileMenu.visible = false

func _helpmenu(id):
	var item_id = id
	
	if item_id == 0:
		pass
	elif item_id == 1:
		pass
	elif item_id == 2:
		pass
	elif item_id == 3:
		pass
	elif item_id == 4:
		pass
	elif item_id == 5:
		pass
	elif item_id == 6:
		pass
	elif item_id == 7:
		pass
	elif item_id == 8:
		$Help/About.visible = true

func _on_help_menu_id_pressed(id: int) -> void:
	_helpmenu(id)


func _on_help_button_down() -> void:
	$Help/HelpMenu.visible = true


func _on_about_close_requested() -> void:
	$Help/About.visible = false

func _editor_menu(id):
	var item_id = id
	
	if item_id == 0:
		$Editor/EditorMenu/EditorSettingsWindow.popup()
	if item_id == 1:
		print("huh, neat")
	if item_id == 3:
		print("huh, neat")
	if item_id == 4:
		print("huh, neat")

func _on_editor_button_down() -> void:
	$Editor/EditorMenu.visible = true


func _on_editor_menu_id_pressed(id: int) -> void:
	_editor_menu(id)


func _on_themes_button_button_down() -> void:
	print("poof!")
	$Editor/EditorMenu/EditorSettingsWindow/ThemesButton/Window.visible = true
func _on_editor_settings_window_close_requested() -> void:
	$Editor/EditorMenu/EditorSettingsWindow.visible = false


func _on_window_close_requested() -> void:
	$Editor/EditorMenu/EditorSettingsWindow/ThemesButton/Window.visible = false
	#Themes Window
