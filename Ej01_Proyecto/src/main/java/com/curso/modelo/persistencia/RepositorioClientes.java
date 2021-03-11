package com.curso.modelo.persistencia;

import java.util.List;

import com.curso.modelo.entidad.Cliente;

public interface RepositorioClientes {

	List<Cliente> listar();	
	Cliente buscar(Integer id);	
	void insertar(Cliente cliente);	
	void modificar(Cliente cliente);	
	void borrar(Cliente cliente);
	
}
