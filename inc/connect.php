<?php

  //Create connection credentials
    $db_host = 'localhost';
    $db_user = 'root';
    $db_pass = '';
    $db_name = 'quizzer';

  //Create mysqli object
    $mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
    mysqli_set_charset($mysqli,"utf8");
  //Error handler
    if($mysqli->connect_error){
      printf("Connect failed: %s\n", $mysqli->connect_error);
      exit;
    }

?>