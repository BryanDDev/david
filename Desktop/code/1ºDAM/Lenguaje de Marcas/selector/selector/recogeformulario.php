<?php
if(isset($_POST['nombre'])){
        $nombre = $_POST["nombre"];
    }
    if(!empty($_POST['edad'])){
        $edad = $_POST["edad"];
    }
    $estudios = $_POST["estudios"];

    if(!empty($_POST['centro'])){
        $centro = $_POST["centro"];
    }
echo "Los datos de la matricula son: ".$nombre.";".$edad.";".$estudios.";".$centro;
?>