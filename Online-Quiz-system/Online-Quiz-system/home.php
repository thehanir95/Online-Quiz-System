<?php
session_start();
if (!isset($_SESSION['username'])) {
	header('location:login.php');
}
$con=mysqli_connect('localhost','root');
mysqli_select_db($con,'quizdbase');
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	
</head>

<body>
	<h1>Quiz of the General Knowledge</h1>
	<h2 class="text-center"> Welcome <?php  echo $_SESSION['username']; ?> </h2><br>
	<h3> Welcome <?php  echo $_SESSION['username']; ?> , you have to select only one out of 4. Best of luck.</h3>

<div class="forms">
<form action="check.php" method="post">
<?php

for($i=1 ; $i<6 ;$i++){

$q=" select * from questions where qid =$i";
$query=mysqli_query($con,$q);

	while ($rows = mysqli_fetch_array($query) ) 
	{

?>

<div class="card">
	<h4> <?php echo $rows['question']; ?></h4>

<?php

$q=" select * from answers where ans_id =$i";
$query=mysqli_query($con,$q);

	while ($rows = mysqli_fetch_array($query) )
	{
?>
<div class="card-body">
		<input type="radio" name="quizcheck[<?php echo $rows['ans_id']; ?>]" value="<?php echo $rows['aid']; ?>">
		<?php echo $rows['answer'] ;   ?>
</div><br><br>

<?php
}

}
}

?>

<input type="submit" name="submit" value="Submit" class="btn">

</form>
</div>
</div>
<br>

<a href="logout.php" class="btn">Logout</a>

</body>
</html>
