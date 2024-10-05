extends CodeEdit


func _ready():	
	var highlighter := CodeHighlighter.new()
	# hi
	highlighter.add_color_region("#", "", Color.DIM_GRAY, true)
	highlighter.add_keyword_color("var", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("extends", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("func", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("pass", Color(0.796, 0.455, 0.647))
	highlighter.add_keyword_color("if", Color(0.796, 0.455, 0.647))
	highlighter.add_keyword_color("elif", Color(0.796, 0.455, 0.647))
	highlighter.add_keyword_color("else", Color(0.796, 0.455, 0.647))
	highlighter.set_function_color(Color(0.365, 0.804, 0.894))


	syntax_highlighter = highlighter
