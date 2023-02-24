<?php

// realizamos la conexión a la BD
$conn = mysqli_connect('localhost', 'root', '1234');

mysqli_select_db($conn, 'logeo_registro');

$sql = "SELECT * FROM usuarios";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM audito WHERE id_user = '$id'";
    if ($id == 0) $sql = "SELECT * FROM audito WHERE new_user NOT LIKE ''";
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
        $user1 = $row['old_user'];
        $user2 = $row['new_user'];

        $email1 = $row['old_email'];
        $email2 = $row['new_email'];
        if ($user1 == $user2) {
            $user2 = '-';
        }
        if ($email1 == $email2) {
            $email2 = '-';
        }

        echo "<tr>";
        echo "<td>" . $row['fecha_modif'] . "</td>";
        echo "<td>" . $user1 . "</td>";
        echo "<td>" . $user2 . "</td>";
        echo "<td>" . $email1 . "</td>";
        echo "<td>" . $email2 . "</td>";
        echo "</tr>";
    }
    echo "</table>";
}

mysqli_close($conn);
