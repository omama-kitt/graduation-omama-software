<?php
session_start();
include "../connect.php";

$activityname = filterRequest('activityname');
$placeofactivity = filterRequest('placeofactivity');
$enterdate= filterRequest('enterdate');
$entertime= filterRequest('entertime');
$Select = "SELECT email FROM login WHERE email = ? LIMIT 1";
$stmt = $con->prepare("
INSERT INTO `activity`(`activityname`, `placeofactivity`, `enterdate`, `entertime`) 
VALUES (?,?,?,?)"
);
//$stmt = $conn->prepare($Select);
$stmt->execute(array($activityname,$placeofactivity,$enterdate,$entertime));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}