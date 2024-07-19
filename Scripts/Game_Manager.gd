extends Node

@export var templates: Array[PackedScene]

func _ready() -> void:
	
	if templates.size() <= 0:
		
		templates.append(preload("res://Objects/Rock_Default.tscn"))
	
		templates.append(preload("res://Objects/Rock_Bounce.tscn"))
		
		templates.append(preload("res://Objects/Rock_Friction.tscn"))
		
		print("Carregamento de recursos feito através de código.\n")
	
	else:
		
		print("Carregamento de recursos feito através da interface do Godot.\n")
	
		pass

func _input(event: InputEvent) -> void:
	
	# Verificando se é um evento de click do mouse.
	
	if event is InputEventMouseButton:
		
		# Verificando se é o botão do mouse com índice igual a 1 (Esquerdo).
		
		if event.button_index == 1:
			
			# Verificando se o botão está sendo pressionado no momento.
			
			if event.pressed:
			
				print(event, "\n")
				
				spawn_box(event.position)

func spawn_box(axis: Vector2) -> void:

	var indice_template: int = randi_range(0, templates.size() - 1)
	
	var template = templates[indice_template]
	
	var objeto = template.instantiate()
	
	objeto.position = axis
	
	add_child(objeto)
