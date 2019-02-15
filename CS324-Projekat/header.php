<?php
include('include_css.php'); 
?>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.php">IMDbScrapper</a>
		</div>
	<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav">
		<?= isset($_SESSION['username']) ?
			'<li class="active"><a href="index.php">Home</a></li>'.
			"<li><a href='empty.php' onclick='return confirm(\"Are you sure you want to empty the database?\");'>Empty</a></li>".
			'<li><a href="insert.php">Insert</a></li>
			<li><a href="show_scraping.php">Scrape</a></li>' : ''
		?>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<?= !isset($_SESSION['username']) ?
						'<li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
						<li><a href="register.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>' : ''
				?>
			</li>
			<li class="dropdown">
				<?= isset($_SESSION['username']) ?
					'<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="glyphicon glyphicon-user"></span>
						<strong>'.$user.'</strong>
						<span class="glyphicon glyphicon-chevron-down"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="navbar-logout" href="logout.php">Log Out<span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
					</ul>' : ''
				?>
			</li>
		</ul>
	</div>
  </div>
</nav>
