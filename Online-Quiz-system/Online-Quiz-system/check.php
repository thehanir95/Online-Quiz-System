
<!DOCTYPE html>
<html>
<head>
	<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">

.animateuse{
	animation: leelaanimate 0.5s infinite;
}
@keyframes leelaanimate{
	0%{color: red},
	10% {color: yellow},
	20%{color: blue},
	40%{color:green }
	50%{color: pink}
	60%{color: orange}
	80%{color: black}
	100%{color:brown }
}

.btn{
	border:none;
	width: 150px;
	font-size: 16px;
	line-height: 25px;
	padding: 10px 0;
	border-radius: 15px;
	cursor: pointer;
	color: #fff;
	background-color: #40ff00 ;
	}

</style>
</head>
<body>
     <div class="container text-center"></div>
<br><br>
<h1 class="text-center text-success text-uppercase animateuse">Welcome to Quiz World</h1>
<br><br><br><br>
	<table class="table text-center table-borded table-hover">
		<tr>
			<th colspan="2"><h1>Results</h1></th>
		</tr>

		<tr>
			<td>
				Questions Attempted
			</td>

			<td>
				out of 5, you have attempt 5 option.
			</td>
		</tr>

		<tr>
			<td>
				your total score
			</td>
		
			<td>
				your total score is <?php echo $_SESSION['username']; ?>

			</td>
		</tr>

	</table>



<?php
session_start();

$result=0;

if (!isset($_SESSION['username'])) {
	header('location:login.php');
}
$con=mysqli_connect('localhost','root');
mysqli_select_db($con,'quizdbase');

if (isset($_POST['submit'])) {
	if (!empty(($_POST['quizcheck']))){
		$count=count($_POST['quizcheck']);
		echo "Out of 5, you have selected " .$count. "options";

		
		$i=1;

		$selected=$_POST['quizcheck'];
		print_r($selected);

		$q= "select * from questions";
		$query= mysqli_query($con,$q);

		while ( $rows =mysqli_fetch_array($query)) {
			print_r($rows['ans_id']);
			$checked= $rows['ans_id'] == $selected[$i];

			if ($checked) {
				$result++;

			}
 				$i++; 

		}

		echo "<br> your total score is ".$result;

	}
}

$name=$_SESSION['username'];
$finalresult="insert into user(username,totalques,answerscorrect) values('$name','5','$result')";
$queryresult=mysqli_query($con,$finalresult);

?>
<a href="logout.php" class="btn">Logout</a>


</body>
</html>
