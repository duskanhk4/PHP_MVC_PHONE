<?php
session_start();
// include 'Model/connect.php';
// include 'Model/hanghoa.php';
// include 'Model/giohang.php';
// include "model/user.php";
include "./PHPMailer/src/PHPMailer.php";
include "./PHPMailer/src/SMTP.php";

// include 'Model\class.phpmailer.php';    
// include 'Model\class.smtp.php';
set_include_path(get_include_path() . PATH_SEPARATOR . 'Model/'); // dang ky duong nhan voi model
spl_autoload_extensions('.php'); //lay do co ten .php 
spl_autoload_register();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- =============== Favicon =============== -->


    <!-- =============== Boxicons =============== -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!-- =============== Css =============== -->
    <link rel="stylesheet" href="./Content/css/style.css">

    <title>Điện thoại Thông minh</title>
</head>

<body>

    <!-- =============== Header =============== -->
    <?php
    include_once './View/header.php';

    ?>
    <!-- =============== Main =============== -->
    <?php

    $ctrl = 'main';
    if (isset($_GET['action'])) {
        $ctrl = $_GET['action'];
    };
    include('./Controller/' . $ctrl . '.php');

    ?>

    <!-- =============== Footer =============== -->
    <?php
    include_once './View/footer.php';

    ?>

    <!-- =============== JavaScript =============== -->
    <script src="./Content/js/scrollreveal.min.js"></script>
    <script src="./Content/js/main.js"></script>

</body>

</html>