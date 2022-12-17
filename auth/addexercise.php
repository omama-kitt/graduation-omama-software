<?php
session_start();
include "../connect.php";
$id= filterRequest('id');
$nameexercise= filterRequest('nameexercise');
$durationexercise = filterRequest('durationexercise');
//$Select = "SELECT email FROM login WHERE email = ? LIMIT 1";
$stmt = $con->prepare("
INSERT INTO `addexercise`(`id`,`nameexercise`, `durationexercise`) 
VALUES (?,?,?)"
);
$stmt->execute(array($id,$nameexercise,$durationexercise));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));
}
else{
    echo json_encode(array("status" =>"fail"));
}

