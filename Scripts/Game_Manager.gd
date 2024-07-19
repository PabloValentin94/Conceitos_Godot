extends Node

func _input(event: InputEvent) -> void:
	
	# Verificando se é um evento de click do mouse.
	
	if event is InputEventMouseButton:
		
		# Verificando se é o botão do mouse com índice igual a 1 (Esquerdo).
		
		if event.button_index == 1:
			
			# Verificando se o botão está sendo pressionado no momento.
			
			if event.pressed:
			
				print(event)
