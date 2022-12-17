<?php
session_start();
include "../connect.php";
$controllerTo = filterRequest('controllerTo');
$controllerSubject = filterRequest('controllerSubject');
$controllerMessage=filterRequest('controllerMessage');
$stmt = $con->prepare("
INSERT INTO `lunchemail`(`controllerTo`, `controllerSubject`, `controllerMessage`) 
VALUES (?,?,?)"
);
$stmt->execute(array($controllerTo,$controllerSubject,$controllerMessage));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));
}
else{
    echo json_encode(array("status" =>"fail"));
}