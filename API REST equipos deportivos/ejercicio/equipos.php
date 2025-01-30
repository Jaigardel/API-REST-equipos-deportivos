<?php
	require_once("../funciones.php");
	require_once("../utils.php");

	$conexion = conectar_pdo($host, $user, $password, $bbdd);
   // ESCRIBA AQUI EL CÓDIGO HTML Y/O PHP NECESARIO 

   if ($_SERVER['REQUEST_METHOD'] == 'GET')
   {
	   if (isset($_GET['id'])){
	   //Mostrar un mensaje
		   $select = "SELECT e.id, e.nombre, e.edad_minima AS `edad minima`, d.nombre AS deporte, 
						(SELECT COUNT(alumno_id) FROM equipos_alumnos WHERE equipo_id = e.id) AS `numero jugadores`,
						(SELECT GROUP_CONCAT(CONCAT(a.nombre, ' ', a.apellidos, ' (EDAD: ', a.edad, ')') SEPARATOR ', ') FROM alumnos a INNER JOIN equipos_alumnos ea ON a.id = ea.alumno_id WHERE ea.equipo_id = e.id) AS `nombres alumnos`
					FROM 
						equipos e 
					INNER JOIN 
						deportes d 
					ON 
						e.deporte_id = d.id
					WHERE 
						e.id = :id";

		   $consulta = $conexion->prepare($select);
		   $consulta->bindParam(':id', $_GET['id']);
		   $consulta->execute();
		   if ($consulta->rowCount() > 0) {
			   salidaDatos (json_encode($consulta->fetch(PDO::FETCH_ASSOC)),
			   array('Content-Type: application/json', 'HTTP/1.1 200 OK'));
		   }   else{
				   salidaDatos('', array('HTTP/1.1 404 Not Found'));
			   }
	   } else {
		   //Mostrar lista de mensajes
		   $select = "SELECT e.id, e.nombre, e.edad_minima as `edad minima`, d.nombre as deporte 
		   FROM equipos e INNER JOIN deportes d ON e.deporte_id = d.id ORDER BY e.id";
		   $consulta = $conexion->prepare($select);
		   $consulta->execute();
		   $registros = [];
		   while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
		   $registros[] = $registro;
		   }
		   salidaDatos(json_encode($registros), 
		   array('Content-Type: application/json', 'HTTP/1.1 200 OK'));
		   }
   }
   if ($_SERVER['REQUEST_METHOD'] == 'PUT')
    {
        // Transformamos el JSON de entrada de datos a un array asociativo
        $datos = json_decode(file_get_contents('php://input'), true);
        $mensajeId = $datos['id'];
        $campos = getParams($datos);
		$sql = "SELECT alumno_id FROM equipos_alumnos WHERE equipo_id = :id";
		$consulta = $conexion->prepare($sql);
		$consulta->bindParam(':id', $mensajeId);
		$consulta->execute();
		if($consulta->rowCount() > 0){
			$consulta =  null;
			salidaDatos('No se puede modificar un equipo que contenga alumnos', array( 'HTTP/1.1 200 OK'));
		}elseif($datos['edad_minima'] < 7 || $datos['edad_minima'] > 14){
			$consulta =  null;
			salidaDatos('La edad mínima tiene que estar entre 7 y 14 años', array( 'HTTP/1.1 200 OK'));
		}else{
			$consulta = null;
			$update = "UPDATE equipos SET $campos WHERE id='$mensajeId'";
			$consulta = $conexion->prepare($update);
			bindAllParams($consulta, $datos);
			$consulta->execute();
			salidaDatos('', array( 'HTTP/1.1 200 OK'));
		}	
    }
//En caso de que ninguna de las opciones anteriores se haya ejecutado
        salidaDatos('', array('Content-Type: application/json', 'HTTP/1.1 400 Bad Request'));
?>