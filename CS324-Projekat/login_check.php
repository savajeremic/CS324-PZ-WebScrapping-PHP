<?php
	include("functions.php");
	session_start();
	if(isset($_SESSION['username'])){
		$user = getUser($_SESSION['username']);
	} else{
		header("Location: login.php");
	}
?>