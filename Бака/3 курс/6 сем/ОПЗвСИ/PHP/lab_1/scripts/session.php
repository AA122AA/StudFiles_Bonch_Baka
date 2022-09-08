
<?php
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$connection = mysqli_connect("localhost", "noob", "noob");
// Selecting Database
$db = mysqli_select_db($connection, "userbd");
session_start();// Starting Session
// Storing Session
$user_check=$_SESSION['login_user'];
// SQL Query To Fetch Complete Information Of User
$sql = "SELECT * FROM `login` WHERE `username` LIKE '$user_check'";
$ses_sql=mysqli_query($connection, $sql);
$row = mysqli_fetch_assoc($ses_sql);
$login_session =$row['username'];
if(!isset($login_session)){
mysqli_close($connection); // Closing Connection
header('Location: index.php'); // Redirecting To Home Page
}
?>