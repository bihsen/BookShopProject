<?php
    if(!isset($_POST['signin'])){
        echo 'Please register to use our services';
    } else {
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $passwordConfirm = $_POST['passwordConfirm'];
        $adress = $_POST['adress'];
        $city = $_POST['city'];
        $country = $_POST['country'];
        
        if($first_name == '')
            echo 'Please enter a valid first name';

    }    

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Signin/Login</title>
</head>
<body>
    <form action="#" method="post">
        <label for="">Your Firstname:</label>
        <input type="text" name="first_name" id="">
        <label for="">Your Lastname:</label>
        <input type="text" name="last_name" id="">
        <label for="">Your email:</label>
        <input type="email" name="email" id="">
        <label for="">Your password:</label>
        <input type="password" name="password" id="">
        <label for="">Confirm password:</label>
        <input type="password" name="passwordConfirm" id="">
        <label for="">Your Adress:</label>
        <input type="text" name="adress" id="">
        <label for="">Your City:</label>
        <input type="text" name="city" id="">
        <label for="">Your Country:</label>
        <input type="text" name="country" id="">
        <input type="submit" value="Send" name="signin">
    </form>    
</body>
</html>