<?php session_start(); ?>
<?php include "inc/connect.php"; ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Rezultat intrebari</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" href="css/final.css" type="text/css" />
  </head>
  <body>
    <div id="container">
      <main>
        <div class="container">
          <h2 class="end">Testul a luat sfarsit.</h2>
          <div class="buttons">
            <a href="quiz.php?n=1" class="start">Incercati din nou</a>
          </div>
          <?php session_destroy(); ?>
        </div>
      </main>
  </body>
</html>