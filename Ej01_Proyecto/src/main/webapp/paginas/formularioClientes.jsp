<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
	<title>Clientes</title>
	
	<!-- Podemos utilizar un CDN -->
	<!-- 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
	-->
	
	<!-- O tener nuestros los recursos alojados en nuestro servidor -->
	<link rel="stylesheet" href="../recursos/css/bootstrap.min.css">
	
</head>

<script type="application/javascript">

function vaciarFormulario(){
	document.getElementById("nombre").value=""
	document.getElementById("direccion").value=""
	document.getElementById("telefono").value=""
	document.getElementById("correoE").value=""
	document.getElementById("activo").value=""
	document.getElementById("notas").value=""	
}

function enviarPeticion(metodo, action){
	let formulario = document.getElementById("formulario")
	formulario.method = metodo;
	formulario.action = action;
}

</script>


<body>

	<div class="text-center page-header">
	    <h2 class="mt-4 mb-4">Aplicación de gestion de clientes ClientGest 3000</h2>
	</div>  
	
	<div class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <ul class="navbar-nav">
	        <li class="nav-item active">
	            <a class="nav-link" href="#">Clientes</a>
	        </li>
	        <li class="nav-item">
	            <a class="nav-link" href="#">Facturas</a>
	        </li>
	        <li class="nav-item">
	            <a class="nav-link" href="#">Empleados</a>
	        </li>
	        <li class="nav-item">
	            <a class="nav-link" href="#">Salir</a>
	        </li>
	    </ul>
	</div> 	
	
	<div class="text-center mt-4 mb-4">
		<h2>Formulario de clientes</h2>
	</div>
	
	<form id="formulario">
	
		<div class="text-center mt-4 mb-4">
			<input type="submit" class="btn btn-primary" value="Insertar"  onclick="enviarPeticion('POST','insertarCliente')"/> 
			<input type="submit" class="btn btn-primary" value="Modificar" onclick="enviarPeticion('POST','modificarCliente')"/> 
			<input type="submit" class="btn btn-danger"  value="Borrar"    onclick="enviarPeticion('POST','borrarCliente')"/> 
			<input type="button" class="btn btn-warning" value="Vaciar"    onclick="vaciarFormulario()"/> 
			<input type="submit" class="btn btn-warning" value="Cancelar"  onclick="enviarPeticion('GET','listadoClientes')"/> 
		</div>
			
		<div class="row">
		    <div class="col-sm-12 offset-sm-0 col-md-8 offset-md-2">
		        
				<div class="row">
				    <div class="col-sm-12 col-md-2 mt-1">
				        <label for="nombre">Nombre</label>
				    </div>
				    <div class="col-sm-12 col-md-10 mt-1">
				        <input id="nombre" class="form-control"/>
				    </div>
				    
				    <div class="col-sm-12 col-md-2 mt-1">
				        <label for="direccion">Dirección</label>
				    </div>
				    <div class="col-sm-12 col-md-10 mt-1">
				        <input id="direccion" class="form-control"/>
				    </div>                 
				    
				    <div class="col-sm-12 col-md-2 mt-1">
				        <label for="telefono">Teléfono</label>
				    </div>
				    <div class="col-sm-12 col-md-10 mt-1">
				        <input id="telefono" class="form-control"/>
				    </div>
				    
				    <div class="col-sm-12 col-md-2 mt-1">
				        <label for="correoE">Correo E.</label>
				    </div>
				    <div class="col-sm-12 col-md-10 mt-1">
				        <input id="correoE" class="form-control"/>
				    </div>
	
				    <div class="col-sm-12 col-md-2 mt-1">
				        <label for="activo">Activo</label>
				    </div>
				    <div class="col-sm-12 col-md-10 mt-1">
				        <input id="activo" class="form-control"/>
				    </div>
				
				    <div class="col-sm-12 col-md-2 mt-1">
				        <label for="notas">Notas</label>
				    </div>
				    <div class="col-sm-12 col-md-10 mt-1">
				        <textarea id="notas" class="form-control"></textarea>
				    </div>
				</div>    
		        
		    </div>
		</div>	
	</form>

</body>
</html>