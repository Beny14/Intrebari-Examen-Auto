<?php session_start(); ?>
<?php include 'inc/connect.php'; ?>
<?php 

      //Check to see if score is set_error_handler
	if (!isset($_SESSION['correct'])){
	   	$_SESSION['correct'] = 0;
	}

	if (!isset($_SESSION['wrong'])){
		$_SESSION['wrong'] = 0;
	 }

//Check if form was submitted
if($_POST){
	$number = $_POST['number'];
	$selected_choice = $_POST['choice'];
	$next = $number+1;
	$total = 26;

	//Get total number of questions
	$query="SELECT * FROM `questions`";
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;

	//Get correct choice
	$q = "SELECT * FROM `choices` WHERE question_number = $number AND is_correct=1";
	$result_q = $mysqli->query($q) or die($mysqli->error.__LINE__);
	$row_q = $result_q->fetch_assoc();
	$correct_choice = $row_q['id'];

	//compare answer with result
	if($correct_choice == $selected_choice){
		$_SESSION['correct']++;
	}else{
		$_SESSION['wrong']++;
	}

	if($number == $total){
		header("Location: final.php");
		exit();
	}else{
	        header("Location: quiz.php?n=" . $next . "&correct=" . $_SESSION['correct'] . "&wrong=" . $_SESSION['wrong']);
	}
}
?>