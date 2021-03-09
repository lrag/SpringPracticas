package com.curso.cfg;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.curso.controlador")
public class ConfiguracionMVC {

	public ConfiguracionMVC() {
		super();
		System.out.println("Creando una instancia de ConfiguracionMVC");
	}
	
	
}
