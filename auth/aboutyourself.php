<?php
include "../connect.php";
$username = filterRequest('username');
$stmt = $con->prepare("
INSERT INTO `aboutyourself`(`username`) 
VALUES (?)"
);
$stmt->execute(array($username));
$count = $stmt->rowCount();
if($count == 0){
    echo json_encode(array("status" =>"girl"));
}
else if($count == 1){
    echo json_encode(array("status" =>"boy"));
}