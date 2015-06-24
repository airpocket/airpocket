<?php
/**
 * Created by IntelliJ IDEA.
 * User: PARMINDER
 * Date: 6/24/2015
 * Time: 2:08 AM
 */
 require_once '../db.inc.php';
 $response="<select name='flight_id'>";
 $query="select id,name from flight where name like '%".$_REQUEST['q']."%'";
 $query=mysql_query($query)or die(mysql_error());
 while($result=mysql_fetch_assoc($query)){
     $response.="<option value='".$result['id']."'>".$result['name']."</action>";
 }
  $response.="</select>";
   echo $response;

?>