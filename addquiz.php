<?php include "inc/connect.php"; ?>

<?php 
if (isset($_POST['submit'])){
   //Get Post variables
   $question_number = $_POST['question_number'];      
   $question_text = $_POST['question_text'];
   $correct_choice = $_POST['correct_choice'];
   $choices = array();
   $choices[1] = $_POST['choice1'];
   $choices[2] = $_POST['choice2'];
   $choices[3] = $_POST['choice3'];

   //Question query
   $query = "INSERT INTO questions (question_number, question) VALUES('$question_number','$question_text')";
   $insert_row = $mysqli->query($query) or die ($mysqli->error.__LINE__);

   //VALIDATE INSERT
   if($insert_row){
      foreach($choices as $choice => $value){
        if($value != ''){
	       if($correct_choice == $choice){
	         $is_correct = 1;
	       }else{
	         $is_correct = 0;
	       }
			$query="INSERT INTO choices (question_number,is_correct,choice) VALUES('$question_number','$is_correct','$value')";
			$insert_row = $mysqli->query($query) or die ($mysqli->error.__LINE__);
			if($insert_row){
				continue;
			}else{
			die("Error: (".$mysqli->errno.") ".$mysqli->eerror);
	    	}
        }
    }
   $msg="Question has been added";
}
}
//get total questions
$query = "SELECT * FROM questions";
$questions = $mysqli->query($query) or die ($mysqli->error.__LINE__);
$total = $questions->num_rows;
$next = $total+1;
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>PHP Quizzer!</title>
    <link href="css/style_quiz.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div id="container">
      <header>
        <div class="container">
          <h1>Examenul auto!</h1>
		</div>
      </header>
      <main>
		<div class="container-box">
			<h2>Add a question !</h2>
			<?php 
				if(isset($msg)) {
					echo "<p>".$msg."</p>";
				}
			?>
			<form method="POST" action="addquiz.php">
				<p>
					<label>Question Number</label>
					<input type="number" value="<?php echo $next; ?>" name="question_number" />
				</p>
				<p>
					<label>Question</label>
					<input type="text" name="question_text" />
				</p>
				<p>
					<label>Choice #1: </label>
					<input type="text" name="choice1" />
				</p>
				<p>
					<label>Choice #2: </label>
					<input type="text" name="choice2" />
				</p>
				<p>
					<label>Choice #3: </label>
					<input type="text" name="choice3" />
				</p>
				<p>
					<label>Correct choice number </label>
					<input type="number" name="correct_choice" />
				</p>
				<p>
					<input type="submit" name="submit" value="Submit" />
				</p>
			</form>
		</div>
      </main>
  </body>
</html>