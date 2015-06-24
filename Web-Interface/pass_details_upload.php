<?php
require_once '../db.inc.php';
$name = $_REQUEST['name'];
$number = $_REQUEST['phone'];
$flight = $_REQUEST['flight_id'];
$uuid= $_REQUEST['uuid'];
$pnr= $_REQUEST['pnr'];

$query= "select MAX(id) from user";    
$newid=mysql_query($query);
$result=mysql_fetch_assoc($newid);
$id2=$result['MAX(id)']+1;


$link="http://localhost:82/airpocket/Security_Check_In/boardingPass.php?q=".$id2;

$sql= "INSERT INTO user SET
          id    = '". mysql_real_escape_string($id2) ."',
          name = '". mysql_real_escape_string($name) ."',
          phone = '". mysql_real_escape_string($number) ."',
          flight_id = '". mysql_real_escape_string($flight) ."',
          pnr = '". mysql_real_escape_string($pnr) ."'";


$sql2 ="INSERT INTO uuid SET
          uuid = '". mysql_real_escape_string($uuid) ."',
          user_id = '". mysql_real_escape_string($id2) ."'";
    
$retval = mysql_query($sql,$conn)or die(mysql_error());
$retval2 = mysql_query( $sql2,$conn)or die(mysql_error());
//echo "Passenger Entered successfully\n";
mysql_close($conn);

header("Location: $link");
?>

