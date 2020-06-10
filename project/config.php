<?php

{
	$con=mysqli_connect("localhost","root","","dbdbmov");
	if(mysqli_connect_errno())
	{
		echo "failed to connect to mysqli:".mysqli_connect_error();
	}
	return $con;
}
$con=mysqli_connect("localhost","root","","dbdbmov");
?>
    