<?php
	require_once("../funciones.php");
	require_once("../utils.php");

	$conexion = conectar_pdo($host, $user, $password, $bbdd);

	
   // ESCRIBA AQUI EL CÓDIGO HTML Y/O PHP NECESARIO 
   
   if ($_SERVER['REQUEST_METHOD'] == 'POST')
   {
	   // Transformamos el JSON de entrada de datos a un array asociativo
	   $datos = json_decode(file_get_contents('php://input'), true);
	   $equipoId = $datos["equipo_id"];
	   $alumnoId = $datos["alumno_id"];
	   $sql = "SELECT edad_minima, deporte_id FROM equipos WHERE id = :id";
	   $consulta = $conexion->prepare($sql);
		$consulta->bindParam(':id', $equipoId);
		$consulta->execute();
		if($consulta->rowCount() < 1){
			$consulta = null;
			salidaDatos('No existe un equipo con ese id', array( 'HTTP/1.1 200 OK'));
		}else{
			$resultado = $consulta->fetch(PDO::FETCH_ASSOC);
			$edadMinima = $resultado["edad_minima"];
			$deporteId = $resultado["deporte_id"];
			$consulta = null;
			$sql = "SELECT edad FROM alumnos WHERE id = :id";
			$consulta = $conexion->prepare($sql);
			$consulta->bindParam(':id', $alumnoId);
			$consulta->execute();
			if($consulta->rowCount() < 1){
				$consulta = null;
				salidaDatos('No existe un alumno con ese id', array( 'HTTP/1.1 200 OK'));
			}else{
				$resultado = $consulta->fetch(PDO::FETCH_ASSOC);
				$edadAlumno = $resultado["edad"];
				$consulta = null;
				$sql = "SELECT * FROM equipos_alumnos WHERE alumno_id = :id";
				$consulta = $conexion->prepare($sql);
				$consulta->bindParam(':id', $alumnoId);
				$consulta->execute();
				if($consulta->rowCount() > 0){
					$consulta = null;
					salidaDatos('Este alumno ya pertenece a otro equipo', array( 'HTTP/1.1 200 OK'));
				}else{
					$consulta = null;
					if(!($edadAlumno >= $edadMinima)){
						salidaDatos('El alumno no tiene la edad mínima para el equipo', array( 'HTTP/1.1 200 OK'));
					}elseif(!($edadAlumno <= ($edadMinima + 2))){
						salidaDatos('El alumno es demasiado mayor para el equipo', array( 'HTTP/1.1 200 OK'));
					}else{
						$sql = "SELECT count(alumno_id) as jugadores FROM equipos_alumnos WHERE equipo_id = :id";
						$consulta = $conexion->prepare($sql);
						$consulta->bindParam(':id', $equipoId);
						$consulta->execute();
						$resultado = $consulta->fetch(PDO::FETCH_ASSOC);
						$numJugadores = $resultado["jugadores"];
						$consulta = null;

						$sql = "SELECT numero_jugadores FROM deportes WHERE id = :id";
						$consulta = $conexion->prepare($sql);
						$consulta->bindParam(':id', $deporteId);
						$consulta->execute();
						$resultado = $consulta->fetch(PDO::FETCH_ASSOC);
						$maxJugadores = $resultado["numero_jugadores"];
						$consulta = null;

						if($numJugadores == $maxJugadores){
							salidaDatos('El equipo está completo', array( 'HTTP/1.1 200 OK'));
						}else{
							$insert = "INSERT INTO equipos_alumnos(equipo_id, alumno_id) VALUES (:equipo_id, :alumno_id)";
							$consulta = $conexion->prepare($insert);
							bindAllParams($consulta, $datos);
							$consulta->execute();
							$mensajeId = $conexion->lastInsertId();
							if($mensajeId) {
								$datos['id'] = $mensajeId;
								salidaDatos(json_encode($datos), 
								array('Content-Type: application/json', 'HTTP/1.1 200 OK'));
							}
						}
					}
				}
			}
		}
	   
   }
?>