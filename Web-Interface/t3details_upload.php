<?php

    require_once '../db.inc.php';

    $emergency = $_REQUEST['emergency'];
    $normal = $_REQUEST['normal'];
    $total = $_REQUEST['lanes'];
    $message_emergency = "emergencyCase";
    $message_emergency2 = "normalCase";
if($emergency>0)
{
 for ($x = 1; $x <= $emergency; $x++) 
 {
    
  $sql= "INSERT INTO security_details SET
          id    = '". mysql_real_escape_string("") ."',
          number = '". mysql_real_escape_string("") ."',
          cat   = '". mysql_real_escape_string($message_emergency) ."'";


 $retval = mysql_query($sql,$conn)or die(mysql_error());
 }

}
  if($normal>0) 
 {  for($y = 1; $y<=$normal; $y++)
 {   $sql2= "INSERT INTO security_details SET
          id    = '". mysql_real_escape_string("") ."',
          number = '". mysql_real_escape_string("") ."',
          cat   = '". mysql_real_escape_string($message_emergency2) ."'";

  
 $retval = mysql_query($sql2,$conn)or die(mysql_error());


 }
 }
 echo "Data Enetered successfully ,Thanks!! ";
 mysql_close($conn);
?>