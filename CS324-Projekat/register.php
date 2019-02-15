<?php
	include("functions.php");
	if($_SERVER["REQUEST_METHOD"] == "POST"){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$email = $_POST['email'];
		$name = $_POST['name'];
		$surname = $_POST['surname'];
		if(!empty($username) && !empty($password) && !empty($email) && !empty($name) && !empty($surname)){
			if(addUser($username,$password,$email,$name, $surname)){
            	header("Location: login.php");
			} else {
				$message = "Greska: Korisnik vec postoji!";
            	echo "<script type='text/javascript'>alert('$message');</script>";
			}
		} else {
			$message = "Greska: Molimo popunite sva polja!";
            echo "<script type='text/javascript'>alert('$message');</script>";
		}
	}
?>
<?php include('header.php'); ?>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-insert">
				<div class="panel-heading">
					<div class="row">
						<a href="#" class="active" id="insert-form-link">Register</a>
					</div>
					<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form action="register.php" method="POST" id="insert-form" style="display: block;">
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" name="username" class="form-control" placeholder="Username">
								</div>			
															
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
									<input type="text" name="password" class="form-control" placeholder="Password">
								</div>
										
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" name="email" class="form-control" placeholder="Email">
								</div>
								
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-text-background"></i></span>
									<input type="text" name="name" class="form-control" placeholder="name">
								</div>
								
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-text-background"></i></span>
									<input type="text" name="surname" class="form-control" placeholder="surname"> 
								</div>
										
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" class="form-control btn btn-insert" value="REGISTER">
										</div>
									</div>
								</div>
							</form>
							<hr></br>
							<div class="col-md-12 col-md-offset-3">
								<div class="row">
									<a href="login.php" class="active" id="insert-form-link">Already have an account? Login here now!</a>
								</div>
							</div>
						</div>
					</div>
				</div>			
			</div>
		</div>
	</div>
</div>