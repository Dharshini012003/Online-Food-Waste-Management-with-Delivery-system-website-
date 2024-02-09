<?php
include('includes/dbconnection.php');
session_start();
error_reporting(0);

if(isset($_POST['submit']))
  {
    $Volname=$_POST['fname'];
	$VolAddress=$_POST['VolAddress'];
	$VolState=$_POST['VolState'];
	$VolCity=$_POST['VolCity'];
    $Volmobile=$_POST['phone'];
 
     
    $query=mysqli_query($con, "insert into Volunteer(VName,VAddress,VState,VCity,Vmobile,VactiveStatus) 
	                      value('$Volname','$VolAddress','$VolState','$VolCity','$Volmobile','ACTIVE')");
    if ($query) {
   echo "<script>alert('You are REGISTERED successfully!.');</script>";
   echo "<script>window.location.href ='contact.php'</script>";
   }
  else
    {
       echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }
  }
  ?>
<!DOCTYPE html>
<html>
<head>
<title>Food Waste Management System| Contact Us</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,700italic,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<!--webfont-->
<!--js-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
		</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
function getCity(val) { 
  $.ajax({
type:"POST",
url:"get-mycity.php",
data:'sateid='+val,
success:function(data){
$("#VolCity").html(data);
}});
}
 </script>
 
<!---- start-smoth-scrolling---->
</head>
<body>
<?php include_once("includes/header.php");?>
<!-- banner -->
<div class="banner page-head">	
</div>
<!-- //banner -->
<!-- about-page -->
<div class="contact">
	<div class="container">
		<div class="contact-header">
			<h3>VOLUNTEER REGISTRATION FORM</h3>
		</div>
		
		<div class="contact-gds">
			<div class="col-md-6 contact-top">
				
				<form action="#" method="post">
					<div class="con-text">
						<span> Volunteer Name </span>		
						<input type="text" class="form-control" placeholder="Organisation Name" required="" name="fname">						
					</div>
					<div class="con-text">
						<span> Volunteer Address </span>	
						<input type="text" class="form-control" placeholder="Entr Volunteer Address" required="" name="VolAddress">						
					</div>					
					<div class="con-text">
						<span>State </span>		
						<!--<input type="text" class="form-control" placeholder="Manager / Caretaker Name" required="" name="NgoState">	-->
						<select class="form-control m-bot15" name="VolState" id="VolState" onChange="getCity(this.value);">
                                <option value="none" Selected disable hidden>Choose State </option>
                                <?php $query=mysqli_query($con,"select * from tblstate");
             				 while($row=mysqli_fetch_array($query)) { ?>    
             					 <option value="<?php echo $row['StateName'];?>"><?php echo $row['StateName'];?></option>
                  				<?php } ?> 
                        </select>					
					</div>
					<div class="con-text">
						<span>City </span>		
				        <select class="form-control m-bot15" name="VolCity" id="VolCity" required="true">						     
                        </select>  						                 		
					</div>
					<div class="con-text">
						<span>Phone </span>		
						<input type="text" class="form-control" placeholder="Phone" required="" name="phone" pattern="[0-9]+" maxlength="10">						
					</div>													
					<button type="submit" class="btn btn-success" type="submit" name="submit">Register Me</button>
			</div></form>
			<div class="col-md-6 contact-top">
				<?php

$ret=mysqli_query($con,"select * from tblpages where PageType='contactus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
				<h3 class="info"> <?php  echo $row['PageTitle'];?></h3>
					
                     <p><?php  echo $row['PageDescription'];?></p>	
                    
					
			</div><?php } ?>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //about-page -->
<?php include_once("includes/footer.php");?>
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

</body>
</html>