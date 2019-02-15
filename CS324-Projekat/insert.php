<?php include('header.php');?>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-insert">
				<div class="panel-heading">
					<div class="row">
						<a href="#" class="active" id="insert-form-link">Unesite od koje do koje godine zelite videti filmove</a>
					</div>
					<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form action="insert_imdb_data.php" method="POST" id="insert-form" style="display: block;">
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-film"></i></span>
									<p>Godine od: </p>
									<input type="text" name="year_start" class="form-control" placeholder="Npr. 2000">
								</div>			
															
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-film"></i></span>
									<p>Godine do: </p>
									<input type="text" name="year_end" class="form-control" placeholder="Npr. 2017">
								</div>
																
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" class="form-control btn btn-insert" value="Insert">
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