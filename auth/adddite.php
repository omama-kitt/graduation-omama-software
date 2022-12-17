<?php
session_start();
include "../connect.php";
$id= filterRequest('id');
$food= filterRequest('food');
$time = filterRequest('time');
//$Select = "SELECT email FROM login WHERE email = ? LIMIT 1";
$stmt = $con->prepare("
INSERT INTO `adddite`(`id`,`food`, `time`) 
VALUES (?,?,?)"
);
$stmt->execute(array($id,$food,$time));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}