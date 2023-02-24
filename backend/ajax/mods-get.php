<?php

// realizamos la conexión a la BD
$conn = mysqli_connect('localhost', 'root', '1234');

mysqli_select_db($conn, 'logeo_registro');

$sql = "SELECT * FROM usuarios";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM audito WHERE id_user = '$id'";
}


$result = mysqli_query($conn, $sql);


// Contenido
if (!isset($_GET['id'])) {
    while ($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        echo "<option value='$id'>" . $id . " - " . $row['user'] . "</option>";
    }
} else {
    // Imprimimos los datos en una tabla
    echo "<table>
    <tr>
        <th>Fecha</th>
        <th>Usuario antiguo</th>
        <th>Usuario nuevo</th>
        <th>Email antiguo</th>
        <th>Email nuevo</th>
    </tr>";

    // Contenido de la tabla
    while ($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>" . $row['fecha_modif'] . "</td>";
        echo "<td>" . $row['old_user'] . "</td>";
        echo "<td>" . $row['new_user'] . "</td>";
        echo "<td>" . $row['old_email'] . "</td>";
        echo "<td>" . $row['new_email'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
}

mysqli_close($conn);
