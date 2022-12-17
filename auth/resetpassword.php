<?php
include "../connect.php";
$email = filterRequest("email");
$password = filterRequest("password");
$confirm_password = filterRequest("confirm_password");
$data = array ("password" => $password,"confirm_password"=>$confirm_password);
updateData("user",$data,"email = '$email'");