<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message
if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else
{
// Define $username and $password
$username=$_POST['username'];
$password=$_POST['password'];
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$connection = mysqli_connect("localhost", "noob", "noob");
// To protect mysqli injection for Security purpose
$username = stripslashes($username);
$password = stripslashes($password);
// ниже 2 строчки - защита от инъекци 
$username = mysqli_real_escape_string($connection, $username);
$password = mysqli_real_escape_string($connection, $password);
// Selecting Database
$db = mysqli_select_db($connection, "userbd");
// SQL query to fetch information of registerd users and finds user match.
$sql = "INSERT INTO `login` (`id`, `username`, `password`) VALUES (NULL, '$username', '$password')";
$query = mysqli_query($connection, $sql);
//$rows = mysqli_num_rows($query);
if ($query == true) {
header("location: index.php"); // Redirecting To Other Page
} else {
$error = "Error";
}
mysqli_close($connection); // Closing Connection
}
}
?>