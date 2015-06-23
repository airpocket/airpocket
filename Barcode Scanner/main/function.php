<?php
/**
 * Created by IntelliJ IDEA.
 * User: PARMINDER
 * Date: 6/23/2015
 * Time: 11:42 PM
 */
 require_once('../../db.inc.php');
 $response=$_REQUEST['link'];
 $array=explode(",@,",$response);
//$array[0] means lane id
//$array[] means user id
//$array[] means staus
 if($array[2]=='y'){
     //y means person is trying to get in correct lane

     //fetching the number according to the id of security lane
     $query="select number from security_details where id=".$array[0];
     $result=mysql_query($query)or die(mysql_error());
     $id=mysql_fetch_assoc($result);

     //assign the lane no to user id in user table
     $query="update user set lane_no = ".$array[0]." where id=".$array[1];
     $result=mysql_query($query)or die(mysql_error());

     $id=$id['number']+1; //one more is standing there

    //assign the number with 1 increment in present value
     $query="update security_details set number = ".$id." where id=".$array[0];
     $result=mysql_query($query)or die(mysql_error());
     echo "Welcome Ji";
 }

 elseif($array[2]='n'){
     echo "You are trying to enter in wrong lane . Your lane number is ".$array[0];
 }


?>