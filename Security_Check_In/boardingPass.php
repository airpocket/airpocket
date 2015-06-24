<script>
    function printDiv(divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var originalContents = document.body.innerHTML;

        document.body.innerHTML = printContents;

        window.print();

        document.body.innerHTML = originalContents;
    }
</script>
<?php
/**
 * Created by IntelliJ IDEA.
 * User: PARMINDER
 * Date: 6/24/2015
 * Time: 2:51 AM
 */
error_reporting(0);
 require_once('../db.inc.php');
 require_once ('function.php');
 $user_id=$_REQUEST['q'];

 $query="select * from user where id=".$user_id;
 $query=mysql_query($query);
 $user_data=mysql_fetch_assoc($query);

 //fetch flight data belongs to user
 $query="select * from flight where id=".$user_data['flight_id'];
 $query=mysql_query($query)or die(mysql_error());
 $flight_details=mysql_fetch_assoc($query);

 //fetch uuid or set of uuid belongs to customer id
// $query="select uuid from user where id=".$user_id;
// $query=mysql_query($query);
// $result=mysql_fetch_assoc($query);
 echo "<div id='printableArea'>";
 echo "Name     : ".$user_data['name']."</br>";
 echo "Phone no : ".$user_data['phone']."</br>";
 $lane=timeGap($user_id);
 echo "Lane no : ".$lane;
 $barCode=$lane.",@,".$user_id;
 $src="barcode.php?codetype=Code128&size=40&text='".$barCode."'";

 echo "</br></br></br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
 echo "
<img alt='TESTING' src=\"".$src."\" /></div>";
?>

</br></br></br></br><input type="button" onclick="printDiv('printableArea')" value="print boarding pass!" />

