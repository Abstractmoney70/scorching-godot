extends CodeEdit

func _ready() -> void:
	var highlighter := CodeHighlighter.new()
	# hi -> hello
	highlighter.set_symbol_color(Color(0.635, 0.745, 0.945))
	highlighter.set_member_variable_color(Color(0.635, 0.745, 0.945))
	highlighter.add_color_region("#", "", Color.DIM_GRAY)
	highlighter.add_color_region("'", "'", Color(0.856, 0.726, 0.42), false)
	highlighter.add_color_region('"', '"', Color(0.856, 0.726, 0.42), false)
	highlighter.add_keyword_color("var", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("(", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("queue_free", Color(0.298, 0.553, 0.769))
	highlighter.add_keyword_color("extends", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("true", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("false", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("float", Color(0.29, 0.824, 0.639))
	highlighter.add_keyword_color("bool", Color(0.29, 0.824, 0.639))
	highlighter.add_keyword_color("String", Color(0.29, 0.824, 0.639))
	highlighter.add_keyword_color("int", Color(0.29, 0.824, 0.639))
	highlighter.add_keyword_color("void", Color(0.29, 0.824, 0.639))
	highlighter.add_keyword_color(":", Color(0.635, 0.745, 0.945))
	highlighter.add_keyword_color("func", Color(1, 0.439, 0.518))
	highlighter.add_keyword_color("pass", Color(0.796, 0.455, 0.647))
	highlighter.add_keyword_color("if", Color(0.796, 0.455, 0.647))
	highlighter.add_keyword_color("elif", Color(0.796, 0.455, 0.647))
	highlighter.add_keyword_color("else", Color(0.796, 0.455, 0.647))
	highlighter.set_function_color(Color(0.365, 0.804, 0.894))
	highlighter.add_keyword_color("print", Color(0.553, 0.553, 0.82))
	highlighter.add_keyword_color("seed", Color(0.553, 0.553, 0.82))
	highlighter.add_keyword_color("randi_range", Color(0.553, 0.553, 0.82))
	highlighter.add_keyword_color("randf", Color(0.553, 0.553, 0.82))
	highlighter.add_keyword_color("randomize", Color(0.553, 0.553, 0.82))
	highlighter.add_keyword_color("str", Color(0.553, 0.553, 0.82))
	
	
	syntax_highlighter = highlighter
