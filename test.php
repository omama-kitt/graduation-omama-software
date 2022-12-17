<?php 
$to = "tharashehadeh@gmail.com";
$subject = "Reset your password on examplesite.com";
$msg = "jfhjsjh";
$headers = "From: tharashehadeh@gmail.com";
if(mail($to, $subject, $msg, $headers))
echo "sucess";
else
echo "fail";
?>
