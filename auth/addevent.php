<?php
//session_start();
include "../connect.php";
$titlecontroller = filterRequest('titlecontroller');
$datecontroller = filterRequest('datecontroller');
$starttimecontroller= filterRequest('starttimecontroller');
$endtimecontroller=filterRequest('endtimecontroller');
$stmt = $con->prepare("
INSERT INTO `addevent`(`titlecontroller`, `datecontroller`, `starttimecontroller`,`endtimecontroller`) 
VALUES (?,?,?,?)"
);
//$stmt = $conn->prepare($Select);
$stmt->execute(array($titlecontroller,$datecontroller,$starttimecontroller,$endtimecontroller));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}