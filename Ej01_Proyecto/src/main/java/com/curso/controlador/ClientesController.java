package com.curso.controlador;

import org.springframework.stereotype.Controller;

//Spring creará una instancia de esta clase
//La llamará (si no indicamos lo contrario) 'clientesController'
//Le asignará el ámbito 'singleton'
@Controller
public class ClientesController {

	public ClientesController() {
		super();
		System.out.println("Creando una instancia de ClientesController");
	}	
	
}
