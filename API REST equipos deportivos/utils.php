<?php
//Abrir conexión a la base de datos
function conectar($db)
    {
        try
    {
        $mysql="mysql:host={$db['host']};dbname={$db['db']};charset=utf8";
        $conexion = new PDO($mysql, $db['username'],
        $db['password']);

        // set the PDO error mode to exception
        $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
        catch (PDOException $exception) 
        {
            exit($exception->getMessage());
        }
        return $conexion;
    }

//Obtener parámetros
function getParams($params)
    {
        $parametros = [];
        foreach($params as $param => $valor) 
        {
            $parametros[] = "$param=:$param";
        }
        return implode(", ", $parametros);
    }

    //Asociar todos los parámetros a un sql
function bindAllParams($consulta, $params)
    {
        foreach($params as $param => $value)
        {
            $consulta->bindValue(':'.$param, $value);
        }
        return $consulta;
    }
    //Mostrar los datos de salida con las cabeceras recibidas
function salidaDatos($data, $httpHeaders=array())
    {
        if (is_array($httpHeaders) && count($httpHeaders)) 
        {
        foreach ($httpHeaders as $httpHeader) 
        {
        header($httpHeader);
        }
        }

        print $data;
        exit();
    }
?>
