<?php

    require_once '../db.inc.php';

    $id = $_REQUEST['flight_id'];
    $name = $_REQUEST['name'];
    $source = $_REQUEST['source'];
    $destination = $_REQUEST['destination'];
    $date = $_REQUEST['date'];
    $hour = $_REQUEST['time1'];
    $min  = $_REQUEST['time2'];
    if($hour<10){
        $hour="0".$hour;
    }
    if($min<10){
        $min="0".$min;
    }
    $time=$hour.$min;

    $sql= "INSERT INTO flight SET
              id    = '". mysql_real_escape_string($id) ."',
              name = '". mysql_real_escape_string($name) ."',
              source = '". mysql_real_escape_string($source) ."',
              destination   = '". mysql_real_escape_string($destination) ."',
              time = '". mysql_real_escape_string($time) ."',
              date   = '". mysql_real_escape_string($date) ."'";

    
    $retval = mysql_query($sql,$conn)or die(mysql_error());

     echo "Flight Entered successfully\n";
     mysql_close($conn);
