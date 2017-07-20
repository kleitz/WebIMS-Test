<?php
require 'PHPMailer/PHPMailerAutoload.php';

// Instantiate Class
$mail = new PHPMailer();

// Set up SMTP
$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'n7wwk1@gmail.com';                 // SMTP username
$mail->Password = '2Cnbj18c';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587;                                    // TCP port to connect to

// Authentication
//$mail->Username   = 'n7wwk1@gmail.com'; // Login
//$mail->Password   = '2Cnbj18c'; // Password

// Compose
$mail->Subject = 'Testing';     // Subject (which isn't required)
$mail->Body = 'Testing';        // Body of our message

// Send To
$mail->AddAddress( '3863852664@txt.att.net' ); // Where to send it
if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message has been sent';
}
