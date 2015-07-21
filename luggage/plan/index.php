<?php
//uncomment sms code before running
require_once ('../db.inc.php');
require('function.php');
$uuid=$_REQUEST['uuid']; 
$details=userDetails($uuid);
$userData=explode("_%_",$details);
//$userData[0] name
//$userData[1] number
$number='91'.$userData[1];
$message="Hello ".$userData[0]."your bag has been loaded to the airplane";
$data = array(
    'user' => "patakadeals",
    'password' => "patakadeals",
    'msisdn' => $number,
    'sid' => "WEBSMS",
    'msg' => $message,
    'fl' => "0",
);


// list($header, $content) = sms(
// "http://www.smslane.com//vendorsms/pushsms.aspx", // the url to post to
// "http://www.facebook.com", // its your url
// $data
// );
?>