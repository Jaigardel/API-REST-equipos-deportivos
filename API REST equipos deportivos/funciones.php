<?php
	
	// Definición de variables
	$host = "172.26.104.210";
	$user = "pepito01";
	$password = "pepito01";
	$bbdd = "dwes_tarde_gestion_actividades_deportivas";

	$headerJSON = 'Content-Type: application/json';
    $codigosHTTP = [ 
        "200" => "HTTP/1.1 200 OK",
        "400" => "HTTP/1.1 400 Bad Request",
        "404" => "HTTP/1.1 404 Not Found",
        "500" => "HTTP/1.1 500 Internal Server Error"
    ];

/**
 * FUNCIONES DE VALIDACIÓN
 */

	/**
     * Método que devuelve valor de una clave del REQUEST limpia o cadena vacía si no existe
     * @param {string} - Clave del REQUEST de la que queremos obtener el valor
     * @return {string}
    **/
    function obtenerValorCampo(string $campo): string{
        if (isset($_REQUEST[$campo])){
            $valor = trim(htmlspecialchars($_REQUEST[$campo], ENT_QUOTES, "UTF-8"));
        }else{
            $valor = "";
        }
        return $valor;
    }

	/**
	 * Método que valida si un texto no está vacío
	 * @param {string} - Texto a validar
	 * @return {boolean}
	**/
	function validar_requerido(string $texto): bool
	{
		return !(trim($texto) == "");
	}

	
	/**
     * Método que valida si es un número entero positivo 
     * @param {string} - Número a validar
     * @return {bool}
     */
    function validar_entero_positivo(string $numero): bool
    {
        return (filter_var($numero, FILTER_VALIDATE_INT) === FALSE || $numero <= 0) ? False : True;
    }

	/**
	 * Método que valida si es un número entero 
	 * @param {string} - Número a validar
	 * @return {bool}
	**/
    function validar_entero_limites(string $numero, int $limiteInferior , int $limiteSuperior): bool
    {
        return (filter_var($numero, FILTER_VALIDATE_INT,  ["options" => ["min_range" => $limiteInferior, "max_range" => $limiteSuperior]]) === FALSE) ? False : True;
    }


/**
 * FUNCIONES TRABAJAR CON BBDD
 */
	function conectar_mysqli ($host, $user, $password, $bbdd) {

		@ $conexion = new mysqli($host, $user, $password, $bbdd);
		$error = $conexion->connect_errno;

		if( $error != null) {
 			print "<p>Error $error conectando a la base de datos:  $conexion->connect_error</p>";
 			exit();
		}

		return $conexion;
	}

    function conectar_pdo($host, $user, $password, $bbdd) {

        try {
          $mysql="mysql:host=$host;dbname=$bbdd;charset=utf8";
          $conexion = new PDO($mysql, $user, $password);
          // set the PDO error mode to exception
          $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                
        } catch (PDOException $exception) {
           exit($exception->getMessage());
        }
        return $conexion;
       
    }


	function cerrar_conexion ($conexion){
		$conexion->close();
	}

	function resultado_consulta ($conexion, $consulta) {
		$resultado = $conexion->query($consulta);
		return $resultado;
	}

	function liberar_resultado($resultado) {
		$resultado->free();
	}

	function cerrar_consulta($consulta) {
		$consulta->close();
	}

/**
 * FIN FUNCIONES TRABAJAR CON BBDD
 */
?>