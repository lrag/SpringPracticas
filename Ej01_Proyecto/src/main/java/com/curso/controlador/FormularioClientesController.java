package com.curso.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

//Spring creará una instancia de esta clase
//La llamará (si no indicamos lo contrario) 'clientesController'
//Le asignará el ámbito 'singleton'
@Controller
public class FormularioClientesController {

	public FormularioClientesController() {
		super();
		//Esta traza solo saldrá una vez porque esto es un singleton
		System.out.println("Creando una instancia de FormularioClientesController");
	}	

	@GetMapping("/formularioClientes")	
	public ModelAndView verFormularioClientes() {
		System.out.println("FormularioClientesController.verFormularioClientes()");
		ModelAndView mav = new ModelAndView("formularioClientes");
		return mav;
	}
	
}















