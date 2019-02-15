<?php
	session_start();
	include("functions.php");
	if($_SERVER["REQUEST_METHOD"] == "POST"){
		$username = $_POST['username'];
		$password = $_POST['password'];
		if(!empty($username) && !empty($password)){
			if(checkUser($username, $password)){
				$_SESSION['username'] = $username;
			} else {
				$message = "Greska: Pogresan username ili password!";
				echo "<script type='text/javascript'>alert('$message');</script>";
			}
		} else {
			$message = "Greska: Niste uneli sve podatke!";
			echo "<script type='text/javascript'>alert('$message');</script>";
		}
	}
	if(isset($_SESSION['username'])){
		header("Location: index.php");
	}
?>
<?php include('header.php') ?>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-insert">
				<div class="panel-heading">
					<div class="row">
						<a href="#" class="active" id="insert-form-link">Login</a>
					</div>
					<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form action="login.php" method="POST" id="insert-form" style="display: block;">
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" name="username" class="form-control" placeholder="Username">
								</div>			
															
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
									<input type="password" name="password" class="form-control" placeholder="Password">
								</div>
																
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" class="form-control btn btn-insert" value="LOGIN">
										</div>
									</div>
									<hr></br>
									<div class="col-md-12 col-md-offset-3">
										<div class="row">
											<a href="register.php" class="active" id="insert-form-link">Don't have an account? Register here now!</a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>			
			</div>
		</div>
	</div>
</div>