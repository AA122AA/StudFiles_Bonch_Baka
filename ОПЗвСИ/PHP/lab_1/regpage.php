<?php
include('register.php'); // Includes Login Script

if(isset($_SESSION['login_user'])){
header("location: profile.php");
}
?>
<!DOCTYPE html>

<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>Register Form in PHP with Session</title>
    <link href="login.css" media="all" rel="stylesheet" type="text/css" />
</head>
<body>
  <section class="container">
    <div class="login" id='login' style='display:block'>
      <h1>Хочу в подземелье</h1>
      <form action="" method="post">
        <p><input id="name" name="username" placeholder="кличка" type="text"></p>
        <p><input id="password" name="password" placeholder="секретная фраза" type="password"></p>
		<p> Использовать только латинские символы </p>
        <p class="submit"><input name="submit" type="submit" value=" Присоединиться к рейду "></p>
		<span><?php echo $error; ?></span>
      </form>
    </div>
</body>
</html>