
<?php
//session_start();
include "../connect.php";
//$gender= filterRequest('gender');
//$purpose = filterRequest('purpose');
$gender= filterRequest('gender');
$purpose = filterRequest('purpose');
$stmt = $con->prepare("
INSERT INTO `aboutyourselfs`(`gender`,`purpose`) 
VALUES (?,?)"
);
//$stmt = $conn->prepare($Select);
$stmt->execute(array($gender,$purpose));
$count = $stmt->rowCount();
if($count > 0){
    echo json_encode(array("status" =>"success"));

}
else{
    echo json_encode(array("status" =>"fail"));

}
