<?php
include "../connect.php";
$email=filterRequest('email');
$verfiycode  = rand(1000,9999);
$stmt = $con->prepare("SELECT * FROM  user  WHERE email =  ? ");
$stmt->execute(array($email));
$count = $stmt->rowCount();
//result($count);
if($count > 0){
  $data = array(
    "email" => $email,
);
   //$res =$con->query("UPDATE `user` SET `password` = '$password',`confirm_password` = '$confirm_password' WHERE `email` = '$email'");
   updatedata("user",$data,"email = '$email'",false);
   sendEmail($email,"verfiycode","verfiycode is : $verfiycode");
   echo json_encode(array("status" => "success"));
} else {
    echo json_encode(array("status" => "failure"));
  

}