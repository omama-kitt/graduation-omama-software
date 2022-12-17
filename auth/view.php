<?php 
 
 include "../connect.php" ; 
 
  $id     = filterRequest("id"); 

  $stmt = $con->prepare("SELECT * FROM addexercise WHERE  `id` = ?"); 

  $stmt->execute(array($id)) ;

  $data = $stmt->fetchAll(PDO::FETCH_ASSOC) ; 

  $count = $stmt->rowCount() ; 

  if ($count > 0) {
    echo json_encode(array("status" => "success" , "data" => $data)) ; 
  }else {
    echo json_encode(array("status" => "fail")) ; 
  }
