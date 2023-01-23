<?php
$servername = 'localhost';
$username = 'root';
$password = '1234';
$dbname = 'academia';

// Crear la conexión a la BD
$conn = new mysqli($servername, $username, $password, $dbname);

// Comprobamos la conexión
if ($conn->connect_error) {
    die("Fallo en la conexión: " . $conn->connect_error);
}
echo "Conectado con éxito <br>";

$sql = 'SELECT * FROM alumnos WHERE dni = "12345678F"';
$result = $conn->query($sql);


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test PHP</title>
</head>
<body>
    <h1>Hola Mundo! Esta es mi primera app con PHP</h1>
    <h3>Mi nombre es 
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo $row['nombre'] . " " . $row['apellido1'] . "<br>";
            }
        }
        ?>
    </h3>
</body>
</html>