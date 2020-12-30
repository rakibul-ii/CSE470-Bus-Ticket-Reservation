<?php //include('../model/conn.php'); ?>

<?php
class bus{
    public $date;
    public $location;
    public $coach;

    public function setTest($d,$l,$c){
      $this->date = $d;
      $this->location = $l;
      $this->coach = $c;
    }

	public function getResult(){
		//$t= new conn();
		//$connect = $t->connection();
		//$query = $t->selectallbus();
		//$count= mysqli_num_rows($query);
		$count= 5;
		$n=1;
		$row= array(3,4,5);
			while($n<=$count){
				//$q= $t->selectbus($n);
				//$row= mysqli_fetch_array($q);
				//if($row[2]===$this->location and $row[3]===$this->coach and $row[4]===$this->date)			
				if($row[0]===$this->date and $row[1]===$this->location and $row[2]===$this->coach){
				return true;
			}
				$n=$n+1;
			}
			return false;

		}
	}
	?>