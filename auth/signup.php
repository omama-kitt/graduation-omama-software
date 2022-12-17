<?php
session_start();
include "../connect.php";

$username = filterRequest('username');
$city = filterRequest('city');
$email=filterRequest('email');
$password= filterRequest('password');
$confirm_password= filterRequest('confirm_password');
$Select = "SELECT email FROM login WHERE email = ? LIMIT 1";
$stmt = $con->prepare("
INSERT INTO `user`(`username`, `city`, `email`, `password`, `confirm_password`) 
VALUES (?,?,?,?,?)"
);
//$stmt = $conn->prepare($Select);
$stmt->execute(array($username,$city,$email,$password,$confirm_password));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}