<?php session_start(); ?>
<?php include "inc/connect.php"; ?>
<?php
  
	//Set question number
	$number = (int) $_GET['n'];

	//Get total number of questions
	$query = "SELECT * FROM questions";
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;

	// Get Question
	$query = "SELECT * FROM `questions` WHERE question_number = $number";

	//Get result
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$question = $result->fetch_assoc();

	// Get Choices
	$query = "SELECT * FROM `choices` WHERE question_number = $number";

	//Get results
  $choices = $mysqli->query($query) or die($mysqli->error.__LINE__);

 ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <title>Intrebari DRPCIV Examen Auto</title>

        <!-- Link Css -->
        <link rel="stylesheet" href="css/style_quiz.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
    <body>
        <div class="container-fullwidth">

            <!-- header -->
            <header>
                <div class="row">
                    <div class="col-md-1">
                        <img src="img/drpciv.png" alt="drpciv" class="drpciv">
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-1 text-center pt-2">
                        <span class="header_nr"><?php echo $total;?></span>
                        <p>Initiale</p>
                    </div>
                    <div class="col-md-2 text-center pt-2">
                        <span class="header_nr"><?php echo $number;?></span>
                        <p>Parcurse</p>
                    </div>
                    <div class="col-md-2 text-center pt-2">
                        <h1 class="header_nr" id="timer"></h1>
                    </div>
                    <div class="col-md-2 text-center pt-2">
                        <span class="header_nr"><?php echo $_SESSION['correct']; ?></span>
                        <p>Corecte</p>
                    </div>
                    <div class="col-md-1 text-center pt-2">
                        <span class="header_nr_wrong"><?php echo $_SESSION['wrong']; ?></span>
                        <p>Gresite</p>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </header>

            <!-- main -->
            <main>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md">
                      <h2 class="question_n"><?php echo $question['question']?></h2>
          <form method="POST" action="process.php">
                        <div class="question">

                          <?php while($row = $choices->fetch_assoc()): ?>
                            <div class="card mb-4 mt-5" style="max-width: 640px;">
                              <div class="row no-gutters">
                                <div class="col-md-2 bg_letters">
                                  <h1 class="p-3">
                                    <input name="choice" type="radio" value="<?php echo $row['id']; ?>"/>
                                  </h1>
                                </div>
                                <div class="col-md-10">
                                  <div class="card-body">
                                    <p class="card-text">
                                      <?php echo $row['choice']; ?>
                                    </p>
                                  </div>
                                </div>
                              </div> <!--end row-->
                            </div> <!--end card-->
                           
                          <?php endwhile; ?>
                        </div> <!--end question-->
                      
                    </div> <!--end col-md-->
                  <div class="col-md-1"></div>
                </div> <!--end row-->
            </main>

            <!-- footer -->
            <footer>
                <div class="row">
                    <div class="col-md">
                        
                        <nav class="navbar fixed-bottom navbar-light bg-light nav-button">
                            <div class="col-md-2"></div>
                              <button type="button" class="btn btn-outline-secondary btn-lg mr-5" disabled><i class="fas fa-undo"></i> Raspunde mai tarziu</button>
                              <button type='button' onClick='uncheckAll(this.form)' class="btn btn-outline-danger btn-lg mr-5"><i class="fas fa-times"></i> MODIFICA RASPUNSUL</button>
                              <button type="submit" value="submit" class="btn btn-success btn-lg">TRIMITE RASPUNSUL</button>
                              <input type="hidden" name="number" value="<?php echo $number; ?>" />  
          </form>
                            <div class="col-md-2"></div>
                        </nav>

                    </div>
                </div>
            </footer>
        </div> <!--end container-fullwidth-->

        <script src="js/timerr.js"></script>
        <script src="js/unckeck.js"></script>

    </body>
</html>