<?php //include('../model/conn.php'); ?>

<?php
class historyfetch{
	public function getResult($number){
		//$t= new conn();
		//$query = $t->selectallhistory();
		//$count= mysqli_num_rows($query);
		$count= 6;
			$n=1;
			$row = array('011','022','033','044','055','066');
			while($n<=$count){
				//$q= $t->selecthistory($n);
				//$row= mysqli_fetch_array($q);
				if($row[$n]==$number)
				{
					return true;
			    }
				$n=$n+1;
			  }
			  return false;
			}
   }
?>