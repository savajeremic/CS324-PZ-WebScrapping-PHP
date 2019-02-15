<?php
	require_once("connect.php");
	function addUser($username, $password, $email, $name, $surname){
		global $conn;
		if(!check_if_exists($email)){
			$insert = "INSERT INTO user (username,password,email,name,surname) VALUES (?,?,?,?,?)";
			$query = $conn->prepare($insert);
			$password = md5($password);
			$query->bind_param('sssss', $username, $password, $email, $name, $surname);
			$query->execute();
			$query->close();
			return true;
		} else {
			return false;
		}
	}

	function check_if_exists($email){
		global $conn;
		$sql = "SELECT * FROM user WHERE email=?";
		$query = $conn->prepare($sql);
		$query->bind_param('s', $email);
		$query->execute();
		$query->store_result();
		if ($query->num_rows > 0) {
			return true;
		} else {
			return false;
		}
		$query->close();
	}

	function checkUser($username, $password){
		global $conn;
		$password = md5($password);
		$sql = "SELECT * FROM user WHERE username=? AND password=?";
		$query = $conn->prepare($sql);
		$query->bind_param('ss',$username,$password);
		$query->execute();
		$query->store_result();
		if ($query->num_rows > 0) {
			return true;
		} else {
			return false;
		}
		$query->close();
	}

	function getUser($username){
		global $conn;
		$sql = "SELECT name, surname FROM user WHERE username=?";
		$query = $conn->prepare($sql);
		$query->bind_param('s',$username);
		$query->execute();
		$query->store_result();
		$query->bind_result($name, $surname);
		$returnvalue = "";
		while ($query->fetch()) {
			$returnvalue = $name." ".$surname;
		}
		$query->free_result();
		$query->close();
		return $returnvalue;
	}
?>
