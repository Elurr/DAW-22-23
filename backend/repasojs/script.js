$(document).ready(function () {
    $('input.pass').on('change', function() {
        // quiero comparar los valores de los dos inputs
        valor1 = $('input[name="pass"]').val();
        valor2 = $('input[name="confirm"]').val();

        if (valor1 == valor2) {
            // si los valores coinciden:

            // activamos el botón de registro
            $('input[type="submit"]').removeAttr('disabled');
        }
    })
});