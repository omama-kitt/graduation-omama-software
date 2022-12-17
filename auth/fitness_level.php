<?php

include "../connect.php";

$Age = filterRequest('Age');
$weight = filterRequest('weight');
$height=filterRequest('height');


$stmt1 = $con->prepare("
INSERT INTO `fitness_level`(`Age`, `weight`, `height`) 
VALUES (?,?,?)"
);
$stmt1->execute(array($Age,$weight,$height));
//$stmt->execute(array($Age,$weight,$height));
$count = $stmt1->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}