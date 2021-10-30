<!DOCTYPE html>
<?php
if($_POST) {
    $hn = "132.181.143.31";
    $db = "INFO263_ahm92_tserver";
    $un = "ahm92";
    $pw = "Pzgf011_";
    $user=$_POST['username'];
    $pass=$_POST['password'];
    $conn=new mysqli($hn,$un,$pw,$db);
    if ($conn->connect_error)
        die("fatal error: " . $conn->connect_error);
    $query1="select * from user where username='$user' and password='$pass'";
    $result=$conn->query($query1);
    if(($result->num_rows)==1) {
        session_start();
        $_SESSION['INFO263_ahm92_tserver']='true';
        header('location:interface.php');
    }
    else {
        $message = "Username and/or Password incorrect.\\nTry again.";
        echo "<script type='text/javascript'>alert('$message');</script>";
    }
}
?>
<html>
<head>
    <meta charset="utf-8">
    <title>Authentication Page</title>
    <link rel="stylesheet" type="text/css"  href="auth.css">

</head>
<body>

    <div class="login-box">
        <form method="post">
            <h1>Login</h1>
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" placeholder="Username" id="username" name="username">
            </div>
            <div class="textbox" >
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input type="password" placeholder="Password" id="password" name="password">
            </div>
            <input class="btn" id="btn" type="submit" name="" value="Sign in">

        </form>
    </div>
</body>
</html>
