<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['sateid'])){
    $sid=$_POST['sateid']; 
    
    $qryStr = "select * from  tblfood left join tblfoodrequests  on tblfood.ID=tblfoodrequests.foodId 
    where tblfoodrequests.status <>'Food Take Away/ Request Completed' and cityname ='$sid'" ;    
    
      	
    $ret=mysqli_query($con,$qryStr );
    $cnt=1;
    while ($row=mysqli_fetch_array($ret)) {

    ?>
    <tr>  
    <td><?php echo $cnt;?></td>
    <td><?php  echo $row['ContactPerson']; ?></td>
    <td><?php  echo $row['CPMobNumber'];?></td>
    <td><?php  echo $row['FoodItems'];?></td>
    <td><?php  echo $row['Quantity'];?></td>
    <td><?php  echo $row['PickupAddress'];?></td>
    <td><?php  echo $row['StateName'];?></td>
    <td><?php  echo $row['CityName'];?></td>
    <td><?php  echo $row['CreationDate'];?></td>
    <td><a href="view-food-details.php?foodid=<?php echo $row['ID'];?>">View Details </a></BOLD>
    </tr>
    <?php 
    $cnt=$cnt+1;
    }
}?>