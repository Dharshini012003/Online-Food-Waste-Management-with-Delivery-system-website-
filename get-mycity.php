<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
echo ($_POST['sateid']);

/*if (strlen($_SESSION['pgasoid']==0)) {
  //echo "Study PHP at " . $_POST['sateid'] . "<br>";
  header('location:logout.php');
  } else{*/
    
 if(isset($_POST['sateid'])){
  $sid=$_POST['sateid'];
  $str =  "select * from tblcity join tblstate on tblstate.id=tblcity.StateID where StateName='$sid'";
  $query=mysqli_query($con,$str);
    while($rw=mysqli_fetch_array($query))
    {
     ?>      
 <option value="<?php echo $rw['City'];?>"><?php echo $rw['City'];?></option>                
<?php }}    
 ?>