<?php
include('login.php'); // Includes Login Script

if(isset($_SESSION['login_user'])){
header("location: profile.php");
}
?>
<!DOCTYPE html>

<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>Login Form in PHP with Session</title>
    <link href="login.css" media="all" rel="stylesheet" type="text/css" />
</head>
<body>
  <section class="container">
    <div class="login" id='login' style='display:block'>
      <h1 text-align: right >Вход в подземелье</h1>
      <form action="" method="post">
        <p><input id="name" name="username" placeholder="кличка" type="text"></p>
        <p><input id="password" name="password" placeholder="секретная фраза" type="password"></p>
        <p class="submit"><input name="submit" type="submit" value=" В путешествие!!! "></p>
		<p><a href="regpage.php">Я новенький</a></p>
		<span><?php echo $error; ?></span>
      </form>
    </div>
</body>
</html>