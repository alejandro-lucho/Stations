<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script src="js/chartbundle.js"></script>
  <script src="js/ajaxjquery.js"></script>
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script> -->


  <!-- <script src="https://bootstrapthemes.co"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"crossorigin="anonymous"></script> -->

  <title>Reporte Tiempo Muerto</title>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="css/simple-sidebar.css" rel="stylesheet">

</head>

<body>
  <!-- <script src="js/bootstrap-4-navbar.js"></script> -->
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
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
<div id ="wrapper" class="toggled">
  <div class="d-flex" id="wrapper">
    <div class="bg-dark border-right" id="sidebar-wrapper">
      <div class="sidebar-heading text-white"><a href="index.php" class="text-white">Menu</a></div>
      <div class="list-group list-group-flush">
        <div class="btn-group dropright">
          <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Agregar</button>
            <div class="dropdown-menu">
            <a href="#" id="p" class="list-group-item list-group-item-action text-white bg-dark">Falla</a>
            <a href="#" id="q" class="list-group-item list-group-item-action text-white bg-dark">UCS</a>
            <a href="#" id="r" class="list-group-item list-group-item-action text-white bg-dark">Maquinas Virtual</a>
            <a href="#" id="s" class="list-group-item list-group-item-action text-white bg-dark">Registro Incidentes</a>
            <a href="#" id="aTec" class="list-group-item list-group-item-action text-white bg-dark">Tecnicos</a>
            </div>

        </div>
        <div class="btn-group dropright">
        <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Cerrar</button>
          <div class="dropdown-menu">
          <a href="#" id="ctick" class="list-group-item list-group-item-action text-white bg-dark">Fallas Pendientes</a>
          <a href="#" id="cInicidentes" class="list-group-item list-group-item-action text-white bg-dark">Incidentes Pendientes</a>
          </div>
        </div>
        <div class="btn-group dropright">
        <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Mostrar</button>
          <div class="dropdown-menu">
          <a href="#" id="listaucs" class="list-group-item list-group-item-action text-white bg-dark">Lista UCS</a>
          <a href="#"  class="list-group-item list-group-item-action text-white bg-dark">Maquinas Virtuales</a>
          <a href="#"  id="listafallas" class="list-group-item list-group-item-action text-white bg-dark">Fallas de Estaciones(Abiertos/Cerrados) </a>
          <a href="#"  id="listacisco" class="list-group-item list-group-item-action text-white bg-dark">Casos Cisco(Abiertos/Cerrados)</a>
          </div>
        </div>
        <a href="#" class="list-group-item list-group-item-action text-white bg-dark">Graficas</a>
        <div class="btn-group dropright">
          <!-- <a class="list-group-item list-group-item-action dropdown-toggle text-white bg-dark"  id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Inventarios
          </a> -->
          <a class="list-group-item list-group-item-action dropdown-toggle text-white bg-dark"  id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Inventarios</a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="list-group-item list-group-item-action dropdown-toggle text-white bg-dark" data-toggle="dropdown">Consultas</a>
              <ul class="dropdown-menu">
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="a">Insumos</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="b">Activos</a></li>
              </ul>
            </li>
            <li><a class="list-group-item list-group-item-action dropdown-toggle text-white bg-dark" data-toggle="dropdown">Activos</a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="c" data-toggle="dropdown" >Modelos</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="d"data-toggle="dropdown" >Productos</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="e"data-toggle="dropdown" >Tipos</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="f"data-toggle="dropdown" >Marcas</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="g"data-toggle="dropdown" >Clientes</a></li>
                <!-- <li><a class="dropdown-item text-white bg-dark" href="#" id="g">Clientes</a></li> -->
              </ul>
            </li>
            <li><a class="list-group-item list-group-item-action dropdown-toggle text-white bg-dark" data-toggle="dropdown">Entradas y Salidas</a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <!-- <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="h" data-toggle="dropdown">Insumos</a></li> -->
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="h" data-toggle="dropdown">Alta de Activos</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="i" data-toggle="dropdown">Salidas de Activos</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="j" data-toggle="dropdown">Registro Insumos</a></li>
              </ul>
            </li>
            <li><a class="list-group-item list-group-item-action dropdown-toggle text-white bg-dark" data-toggle="dropdown">Equipo Dañado</a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="k" data-toggle="dropdown">Registro Reparaciones Activos</a></li>
                <li><a class="list-group-item list-group-item-action text-white bg-dark" href="#" id="l" data-toggle="dropdown">Registro Reparaciones Insumos</a></li>
              </ul>
            </li>
          </ul>

        </div>
          <div class="btn-group dropright">
            <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Check List</button>
              <div class="dropdown-menu">
              <a href="#" id="bs" class="list-group-item list-group-item-action text-white bg-dark">BST</a>
              <a href="#" id="bsu" class="list-group-item list-group-item-action text-white bg-dark">BST-Uplink</a>
              <a href="#" id="bd" class="list-group-item list-group-item-action text-white bg-dark">BDL</a>
              <a href="#" id="p2" class="list-group-item list-group-item-action text-white bg-dark">Pre2C</a>
              <a href="#" id="p2u" class="list-group-item list-group-item-action text-white bg-dark">Pre2C-Uplink</a>
              <a href="#" id="2c`" class="list-group-item list-group-item-action text-white bg-dark">2C</a>
              <a href="#" id="as" class="list-group-item list-group-item-action text-white bg-dark">Assy</a>
              <a href="#" id="sn" class="list-group-item list-group-item-action text-white bg-dark">SNT</a>
              <a href="#" id="rf" class="list-group-item list-group-item-action text-white bg-dark">RFID</a>
              <a href="#" id="fs" class="list-group-item list-group-item-action text-white bg-dark">FST</a>
              <a href="#" id="hi" class="list-group-item list-group-item-action text-white bg-dark">Hipot</a>
              <a href="#" id="or" class="list-group-item list-group-item-action text-white bg-dark">ORT</a>
              </div>
          </div>

      <!-- </div> -->
      </div>
    </div>
    <div id="page-content-wrapper">
      <nav class="navbar navbar-dark bg-dark sticky-top">
        <button class="btn btn-info" id="menu-toggle">Accionar Menu</button>
        <a class="text-white "> <?php echo "Bienvenido ".$_SESSION['name']." ". $_SESSION['lastname'];?></a>
        <a href="logout.php" class="btn btn-info" role="button" aria-pressed="true">Cerrar Sesion</a>
      </nav>
      <div class="container-fluid">
        <h1 class="mt-4"> Ingenieria de Prueba (UABU)</h1><br>
        <div class="chart">
          <div id="result">
            <!-- <div class="chart-container" style="position: relative; height:40vh; width:77vw"> -->
            <div>
              <div class="form-row mb-0">
                <div class="col">
                <!-- <div class="chart-container" style=" height:40vh; width:37vw">
                  <canvas id="myChart" ></canvas>
                </div> -->
                  <div id="chart-container" style=" height:40vh; width:37vw">
                    <canvas id="graphCanvas"></canvas>
                  </div>

                  <div class="chart-container" style=" height:40vh; width:37vw">
                    <canvas id="graphCanvas2" ></canvas>
                  </div>
                </div>
                <div class="col">
                  <div class="chart-container" style=" height:40vh; width:37vw">
                    <canvas id="graphCanvas3" ></canvas>
                  </div>
                  <div class="chart-container" style=" height:40vh; width:37vw">
                    <canvas id="graphCanvas4" ></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- ​<img src="images/chart.jpg" class="rounded mx-auto d-block" alt="..."> -->
        </div>
      </div>
    </div>
  </div>
</div>
<script>
  $("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
  });
</script>
</body>
</html>
<script>

var ctx = document.getElementById("graphCanvas");
var graphCanvas = new Chart(ctx, {
type: 'line',
data: {
labels: ["Nyquist", "Porter", "Adelphi", "Newton", "G48", "Gladiador"],
datasets: [{
  label: '# Fallas Abiertas ',
  data: [5, 2, 3, 1, 2, 1],
  backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(255, 159, 64, 0.2)'
  ],
  borderColor: [
      'rgba(255,99,132,1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)',
      'rgba(255, 159, 64, 1)'
  ],
  borderWidth: .5
}]
},
options: {
scales: {
  yAxes: [{
      ticks: {
          beginAtZero:true
      }
  }]
}
}
});

var ctx = document.getElementById("graphCanvas2");
var graphCanvas = new Chart(ctx, {
type: 'doughnut',
data: {
labels: ["Nyquist", "Porter", "Adelphi", "Newton", "G48", "Gladiador"],
datasets: [{
  label: '# Fallas Abiertas ',
  data: [5, 2, 3, 1, 2, 1],
  backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(255, 159, 64, 0.2)'
  ],
  borderColor: [
      'rgba(255,99,132,1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)',
      'rgba(255, 159, 64, 1)'
  ],
  borderWidth: .5
}]
},
options: {
scales: {
  yAxes: [{
      ticks: {
          beginAtZero:true
      }
  }]
}
}
});

var ctx = document.getElementById("graphCanvas3");
var graphCanvas = new Chart(ctx, {
type: 'bar',
data: {
labels: ["Nyquist", "Porter", "Adelphi", "Newton", "G48", "Gladiador"],
datasets: [{
  label: '# Fallas Abiertas ',
  data: [5, 2, 3, 1, 2, 1],
  backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(255, 159, 64, 0.2)'
  ],
  borderColor: [
      'rgba(255,99,132,1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)',
      'rgba(255, 159, 64, 1)'
  ],
  borderWidth: .5
}]
},
options: {
scales: {
  yAxes: [{
      ticks: {
          beginAtZero:true
      }
  }]
}
}
});


var ctx = document.getElementById("graphCanvas4");
var graphCanvas = new Chart(ctx, {
type: 'pie',
data: {
labels: ["Abiertas", "cerradas"],
datasets: [{
  // label: 'Porcenatje de fallas abiertas y fallas cerradas ',
  data: [5, 2,],
  backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(255, 159, 64, 0.2)'
  ],
  borderColor: [
      'rgba(255,99,132,1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)',
      'rgba(255, 159, 64, 1)'
  ],
  borderWidth: .5
}]
},
options: {
scales: {
  yAxes: [{
      ticks: {
          beginAtZero:true
      }
  }]
}
}
});
</script>


  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
    $(document).ready(function(){
      $("#p").on("click",function(){
          $("#result").load("agregarfallas.php");
          });

          $("#q").on("click",function(){
           $("#result").load("agregarucs.php");
           });

           $("#r").on("click",function(){
            $("#result").load("agregarvm.php");
            });
            $("#s").on("click",function(){
             $("#result").load("agregarincidentes.php");
             });

            $("#ctick").on("click",function(){
              // $("#result").load("fallaquery.html");
               $("#result").load("query.php");
             });
             $("#cInicidentes").on("click",function(){
              $("#result").load("queryCisco.php");
              });
              $("#listacisco").on("click",function(){
               $("#result").load("querylistacisco.php");
               });
               $("#listafallas").on("click",function(){
                $("#result").load("querylistafallas.php");
                });
                $("#aTec").on("click",function(){
                 $("#result").load("agregarTecnicos.php");
                 });
             $("#listaucs").on("click",function(){
              $("#result").load("queryUCS.php");
              });

      $("#a").on("click",function(){
      $("#result").load("consulta_insumos.php");
      });

      $("#b").on("click",function(){
      $("#result").load("consulta_activos.php");
      });

      $("#c").on("click",function(){
      $("#result").load("agregarmodelos.php");
      });

      $("#d").on("click",function(){
      $("#result").load("agregarproductos.php");
      });

      $("#e").on("click",function(){
      $("#result").load("agregartipo.php");
      });

      $("#f").on("click",function(){
      $("#result").load("agregarmarcas.php");
      });

      $("#g").on("click",function(){
      $("#result").load("agregarclientes.php");
      });

      $("#h").on("click",function(){
      $("#result").load("activos_altas.php");
      });

      $("#i").on("click",function(){
      $("#result").load("activos_salidas.php");
      });

      $("#j").on("click",function(){
      $("#result").load("Insumos_masivo.php");
      });

      $("#k").on("click",function(){
      $("#result").load("reparaciones_activos.php");
      });

      $("#l").on("click",function(){
      $("#result").load("reparaciones_insumos.php");
      });
      $("#bs").on("click",function(){
      $("#result").load("checklist.php");
      });
    });
  </script>
  <script src="js/bootstrap-4-navbar.js"></script>
