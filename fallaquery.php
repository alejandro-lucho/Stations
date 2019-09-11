<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cerrar Fallas</title>
     <link href="css/bootstrap1.css" rel="stylesheet"/>
    <!-- <link href="css/font-awesome1.css" rel="stylesheet"/> -->
</head>
<body onload="viewData()">
  <?php
    if (isset($_SESSION['loggedin'])) {
    }
    else {
        echo "<div class='alert alert-danger mt-4' role='alert'>
        <h4>No has iniciado sesion aun.</h4>
        <p><a href='login.html'>Iniciar Sesion</a></p></div>";
        exit;
    }
    $now = time();
    if ($now > (isset($_SESSION['expire']))) {
        session_destroy();
        echo "<div class='alert alert-danger mt-4' role='alert'>
        <h4>Your session has expire!</h4>
        <p><a href='login.php'>Login Here</a></p></div>";
        exit;
        }
  ?>

    <div class="container" style="margin-top:35px">
        <h4>Incidentes Abiertos</h4>
        <table id="tabledit" class="table table-bordered table-striped">
            <thead>
                <tr>
                  <th scope="col">ID</th>
                  <th scope="col">Fecha</th>
                  <th scope="col">Usuario</th>
                  <th scope="col">Linea</th>
                  <th scope="col">Estacion</th>
                  <th scope="col">Numero Estacion</th>
                  <th scope="col">Numero Celda</th>
                  <th scope="col">Nombre Falla</th>
                  <th scope="col">Solucion</th>
                  <th scope="col">Minutos</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
        <a href="index.php"<button class="btn btn-info btn-block" type="submit">Cerrar</button></a>
    </div>

    <script src="js/jquery.min1.js"></script>
    <script src="js/bootstrap1.js"></script>
    <script src="js/jquery.tabledit1.js"></script>
    <script>
    function viewData(){
        $.ajax({
            url: 'process.php?p=view',
            method: 'GET'
        }).done(function(data){
            $('tbody').html(data)
            tableData()
        })
    }
    function tableData(){
        $('#tabledit').Tabledit({
            url: 'process.php',
            eventType: 'dblclick',
            editButton: true,
            //deleteButton: true,
            hideIdentifier: false,
            buttons: {
                edit: {
                    class: 'btn btn-sm btn-info',
                    html: '<span class="glyphicon glyphicon-pencil"></span> Editar',
                    action: 'edit',

                },

                delete: {
                    class: 'btn btn-sm btn-danger',
                    html: '<span class="glyphicon glyphicon-trash"></span> Trash',
                    action: 'delete',
                class: 'tabledit-delete-button btn btn-sm hidden'
                 },

                save: {
                    class: 'btn btn-sm btn-success',
                    html: 'Guardar'
                },
                // restore: {
                //     class: 'btn btn-sm btn-warning',
                //     html: 'Restore',
                //     action: 'restore'
                // },
                // confirm: {
                //     class: 'btn btn-sm btn-default',
                //     html: 'Confirm'
                // }
            },
            columns: {
                identifier: [0, 'Issue_id'],
                editable : [[8, 'Issue_solution'],[9, 'Repaired_time']]
                //editable: [[1, 'name'],[2, 'gender', '{"1": "Laki-laki", "2": "Perempuan", "3": "Waria"}'],[3, 'email'], [4, 'phone'], [5, 'address']]
            },
            onSuccess: function(data, textStatus, jqXHR) {
                viewData()
            },
            onFail: function(jqXHR, textStatus, errorThrown) {
                console.log('onFail(jqXHR, textStatus, errorThrown)');
                console.log(jqXHR);
                console.log(textStatus);
                console.log(errorThrown);
            },
            onAjax: function(action, serialize) {
                console.log('onAjax(action, serialize)');
                console.log(action);
                console.log(serialize);
            }
        });
    }
    </script>
</body>
</html>
