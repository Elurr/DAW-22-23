<?php
session_start();

if ($_SESSION['logged'] == true) {
    require('./css/style.php');

    $id = $_SESSION['id'];
    $user_type = $_SESSION['user_type'];

    switch($user_type) {
        case 'usuario':
            include('./tablas/tabla_usuario.php');
            break;
        case 'admin':
            include('./tablas/tabla_admin.php');
            break;
        case 'colaborador':
            include('./tablas/tabla_colab.php');
            break;
        default:
            echo "Ha habido un error";
            break;    
    }
}