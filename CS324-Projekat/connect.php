<?php
	define('server', 'localhost');
	define('username', 'root');
	define('password', '');
	define('db', 'movies');
	$conn = new mysqli(server,username,password,db);
	if ($conn->connect_error) {
   		die("Greska: " . $conn->connect_error);
	} 
?> 