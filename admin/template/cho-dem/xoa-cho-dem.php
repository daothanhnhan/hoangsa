<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM cho_dem WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=cho-dem');
?>