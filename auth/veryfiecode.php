<?php

include "../connect.php";
$email = filterRequest("email");
$verfiycode = filterRequest("verfiycode");

$stmt = $con->prepare ("SELECT * FROM user  WHERE email = '$email' OR verfiycode = '$verfiycode'");
$stmt->execute();
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));
}
else{
    echo json_encode(array("status" =>"fail"));
}