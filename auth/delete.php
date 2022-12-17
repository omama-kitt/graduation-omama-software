<?php

include "../connect.php";

$id= filterRequest('id');

$stmt = $con->prepare(" DELETE FROM `addexercise` WHERE `id`  = '$id' ");
$stmt1 = $con->prepare(" DELETE FROM `adddite` WHERE `id`  = '$id' ");
$stmt->execute(array($id));
$stmt1->execute(array($id));
$count = $stmt->rowCount();
$count = $stmt1->rowCount();
if ($count > 0) {
    echo json_encode(array("status" => "success"));
} else {
    echo json_encode(array("status" => "fail"));
}
