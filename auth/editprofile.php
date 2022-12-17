<?php
session_start();
include "../connect.php";
//$id = filterRequest('id');
$username = filterRequest('username');
$city= filterRequest('city');
$email=filterRequest('email');
//$res = $conn->query("UPDATE `users` SET `password`='$password' WHERE `email`='$email'");
$stmt = $con->prepare(" UPDATE  `user` SET `username`= ?,`city`=?  WHERE email= ? ");
$stmt->execute(array($username,$city, $email));
//$data = $stmt->fetch(PDO::FETCH_ASSOC);
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}