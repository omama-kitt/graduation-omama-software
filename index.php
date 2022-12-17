<?php

include "connect.php";
$stmt = $con->prepare("SELECT * FROM user");
//$stmt = $con->prepare("SELECT * FROM fitness_level");
$stmt->execute();
$user = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo"<pre>";
print_r($user);
//print_r($fitness_level);
echo"</pre>";

?>