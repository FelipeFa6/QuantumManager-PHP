<?php

if(isset($_POST['submit'])){ 
    require_once '../../../db_access.php';
    require_once 'functions.php';

    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $monto = $_POST['monto'];
    $descripcion = $_POST['descripcion'];
    

    if (emptyInputConvenio($nombre, $monto, $descripcion) !== false){
        header("location: ../convenio.php?error=updateEmptyInput");
        exit();
    }
    updateConvenio($conn, $id, $nombre, $monto, $descripcion);
}else{
    //Bad Case
    echo "Let's not talk about this... <br>
    <a href = '../../index.php'><h1>Go back...</h1> </a>";
}