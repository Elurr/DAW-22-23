<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] = 'POST') {
    include 'conexion.php';

    // Recibimos las variables del form
    $user = $_POST['user'];
    $password = $_POST['password'];


    // Hacemos la query para buscar si existe un usuario con estos datos
    $sql = "SELECT * FROM usuarios WHERE nombre = '$user' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
       echo '<p>Has iniciado sesión con éxito</p>';
       echo "<p>Bienvenido $user.";

       $_SESSION['logged'] = true; 
    //    redirigir 
       echo '<a href="pag-principal.php">
                    <button>Volver a página principal</button>
                 </a>';
    }

    $conn->close();
}