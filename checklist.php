<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Insumos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src = "/bootstrap/Jquery/jquery.min.js"></script>
    <script src = "/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/custom1.css">
    <link href = "/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
    <h3 align="center">Check List "BST"</h3>
    <!-- <div class="container"> -->
      <div class="table-striped table-sm">
        <div id="live_data"></div>
      </div>
    <!-- </div> -->
<script>
 $(document).ready(function(){
      function fetch_data()
      {
           $.ajax({
                url:"checklist-bst.php",
                method:"POST",
                success:function(data){
                     $('#live_data').html(data);
                }
           });
      }
      fetch_data();
      $(document).ready(function(){
           $("#btn_add").on("click",function(){
           $("#result").load("insertar_activos.php");
           });
      });
      $(document).on('click', '.btn_regresar', function(){
           var id=$(this).data("id9");
           //if(confirm("Asegurate de escribir la cant?"))
           //{
                $.ajax({
                     url:"regresar_activosA.php",
                     method:"POST",
                     data:{id:id},
                     dataType:"text",
                     success:function(data){
                          alert(data);
                          fetch_data();
                     }
               });
           //}
      });
 });
 </script>
