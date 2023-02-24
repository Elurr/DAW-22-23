<?php
    // recogemos la variable enviada por GET
    $value = "%" . $_GET['value'] . "%";
    $filtro = $_GET['filtro'];

    // realizamos la conexión a la BD
    $conn = mysqli_connect('localhost', 'root', '1234');

    mysqli_select_db($conn, 'logeo_registro');
    $sql = "SELECT * FROM usuarios WHERE $filtro LIKE '$value'";

    if ($_GET['value'] == 'all') {
        $sql = "SELECT * FROM usuarios";
    }
    $result = mysqli_query($conn, $sql);

    // Imprimimos los datos en una tabla
    echo "<table>
        <tr>
            <th>Nombre de usuario</th>
            <th>Email</th>
            <th>Permisos</th>
        </tr>";
    // Contenido de la tabla
    while ($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>" . $row['user'] . "</td>";
        echo "<td>" . $row['email'] . "</td>";
        echo "<td>" . $row['type_user'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";

    mysqli_close($conn);
