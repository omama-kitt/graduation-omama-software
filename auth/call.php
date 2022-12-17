<?php

include "../connect.php";
$phoneNumber= filterRequest('phoneNumber');

$stmt = $con->prepare("

INSERT INTO `call`(`phoneNumber`) 
VALUES (?)"
);

$stmt->execute(array($phoneNumber));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}