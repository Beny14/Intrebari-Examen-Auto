<?php include "inc/connect.php"; ?>
<?php
	//Get the total questions
	$query="SELECT * FROM questions";
	//Get Results
	$results = $mysqli->query($query) or die ($mysqli->error.__LINE__);
	$total = $results->num_rows;
 ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <title>Intrebari DRPCIV Examen Auto</title>

        <!-- Link Css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
    <body>
        <div class="container-fluid">

            <!-- header -->
            <header>
                <div class="row">
                    <div class="clearfix">
                        <div class="box">
                            <img src="img/drpciv.png" alt="drpciv" class="drpciv">
                        </div>
                        <div class="box">
                            <p class="wellcome">Bine ați venit la examenul auto!</p>
                        </div>
                    </div>
                </div>
            </header>

            <!-- main -->
            <main>
                <!-- Card -->
                <div class="w3-card-2" style="width:30%;">
                    <header class="w3-container title-card">
                        <p>CATEGORIE EXAMINARE</p>
                    </header>
                
                    <div class="w3-container body-card">
                        <p>B, B1</p>
                    </div>
                </div>

                <!-- Start button -->
                <div class="start_btn_lang">
                    <a href="quiz.php?n=1">
                        <button type="submit" class="start">START <i class="fas fa-arrow-right"></i></button>
                    </a>
                </div>
                <h3 class="target"><i class="fas fa-exclamation-circle"></i> Vor fi afișate <?php echo $total;?> întrebări !</h3>
            </main>
        </div>
    </body>
</html>