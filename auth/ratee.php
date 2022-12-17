<?php
include "../connect.php";

$rate= filterRequest('rate');

$stmt = $con->prepare("
INSERT INTO `ratee`
(`rate`) VALUES (?)");

$stmt->execute(array($rate));

$count = $stmt->rowCount();

if($count > 0){
    echo json_encode(array("status" =>"success"));
}
else{
    echo json_encode(array("status" =>"fail"));
}