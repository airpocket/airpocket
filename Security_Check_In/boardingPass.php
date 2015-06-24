<?php
/**
 * Created by IntelliJ IDEA.
 * User: PARMINDER
 * Date: 6/24/2015
 * Time: 2:51 AM
 */
 require_once('../db.inc.php');
 require_once ('function.php');
 $user_id=$_REQUEST['q'];

 $query="select * from user where id=".$user_id;
 $query=mysql_query($query);
 $user_data=mysql_fetch_assoc($query);

 //fetch flight data belongs to user
 $query="select * from flight where id=".$user_data['flight_id'];
 $query=mysql_query($query);
 $flight_details=mysql_fetch_assoc($query);

 //fetch uuid or set of uuid belongs to customer id
// $query="select uuid from user where id=".$user_id;
// $query=mysql_query($query);
// $result=mysql_fetch_assoc($query);

 echo "Name     : ".$user_data['name']."</br>";
 echo "Phone no : ".$user_data['phone']."</br>";
$lane="2";
 $barCode=$lane.",@,".$user_id;
 $src="barcode.php?codetype=Code39&size=40&text=".$barCode;
?>
<img alt="TESTING" src=<?php $src;?> />
<?php
 echo "Security Lane no : ".timeGap($user_id)."</br>";



?>