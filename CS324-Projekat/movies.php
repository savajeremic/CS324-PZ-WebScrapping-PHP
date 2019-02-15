<?php
include('header.php');
require_once('connect.php');
?>
<div class="container-fluid center">
  <div class="row content">
  	<div class="col-sm-8">
  		<?php
  			$result = $conn->query("SELECT * FROM movies ORDER BY rand() LIMIT 20") or die($conn->error);
  			while ($movie = $result->fetch_assoc()):
  		?>
  		<div class='movie-container'>
  			<div class='header'>
  				<h1><?= $movie['title'] ?></h1>
  				<span class='year'>( <?= $movie['year'] ?> )</span>
  			</div>
  			<div class='content'>
  				<div class='left-column'>
  					<a target="_blank" href=<?= $movie['movie_url'] ?>><img width='<?php 67*1.5 ?>' height='<?= 98*1.5 ?>' src='<?= $movie['image_url'] ?>'></a>
  					<div id='ratings'>
  						<div class='imdb'><?= $movie['imdb_rating'] ? '<span class="glyphicon glyphicon-star-empty" aria-hidden="true" style="color: yellow;"></span> '.$movie['imdb_rating'] : '' ?></div>
  						<div class='metascore'><?= $movie['metascore'] ? '<span class="glyphicon glyphicon-star-empty" aria-hidden="true" style="color: green;"></span> '.$movie['metascore'] : '' ?></div>
  					</div>
  				</div>
  				<div class='right-column'>
  					<span class='content first'>
  						<?= $movie['certificate']; ?>
  					</span>

  					<?php echo $movie['certificate'] ? ' |' : ''; ?>

  					<span class='content first'>
  						<?= $movie['runtime'] .' min'; ?>
  					</span>

  					<?php
  						$result2 = $conn->query("SELECT genres_id FROM movies_genres WHERE movies_id={$movie['id']}") or
  						die($conn->error);

  						$genres = $result2->fetch_all();
  						$genres = array_column($genres, 0);

  						for ($i = 0; $i < count($genres);$i++)
  						{
  							$genre = $conn->query("SELECT name from genres where id = '{$genres[$i]}'")->fetch_assoc();
  							echo $i == 0 ? ' | ' : '';
  							echo "<span class='content first'>".$genre['name']."</span>";
  							echo $genres[$i] != end($genres) ? ', ' : '';
  						}
  					?>
  					<hr>
  					<div class='content description' style="display:block; width:60%; word-break:break-all;">
  						<?= $movie['description'] ?>
  					</div>
  					<hr>
  					<?php
  						$result3 = $conn->query("SELECT directors_id FROM movies_directors WHERE movies_id={$movie['id']}") or
  						die($conn->error);

  						$directors = $result3->fetch_all();
  						$directors = array_column($directors, 0);

  						$result4 = $conn->query("SELECT stars_id FROM movies_stars WHERE movies_id={$movie['id']}") or
  						die($conn->error);

  						$stars = $result4->fetch_all();
  						$stars = array_column($stars, 0);
  					?>

  					<div>
  						<?php
  							for ($i = 0; $i < count($directors);$i++)
  							{
  								$director = $conn->query("SELECT name from directors where id = '{$directors[$i]}'")->fetch_assoc();

  								$s = count($directors) > 1 ? 's' : '';

  								echo $i == 0 ? "<span class='content yellow'>Director$s: </span>" : '';
  								echo "<span class='content text'>".$director['name']."</span>";

  								if ($directors[$i] != end($directors)){
  									echo ', ';
  								}
  								else {
  									if (count($stars) > 0){
  										echo ' | ';
  									}
  								}
  							}
  						?>

  						<?php
  							for ($i = 0; $i < count($stars);$i++)
  							{
  								$star = $conn->query("SELECT name from stars where id = '{$stars[$i]}'")->fetch_assoc();
  								$s = count($stars) > 1 ? 's' : '';
  								echo $i == 0 ? "<span class='content yellow'>Star$s: </span>" : '';
  								echo "<span class='content text'>".$star['name']."</span>";
  								echo $stars[$i] != end($stars) ? ', ' : '';
  							}
  						?>
  					</div>

  					<div class='bottom'>
  						<?php
  							if ($movie['votes']) {
  								echo "<span class='content yellow'>Votes: </span>".number_format($movie['votes']);
  								echo $movie['gross'] ? ' | ' : '';
  							}
  						?>

  						<span class='content green'>
  							<?= $movie['gross'] ? "<span class='content yellow'>Gross: </span>$".number_format($movie['gross']) : '' ?>
  						</span>
  					</div>
  				</div>
  			</div>
  		</div>
  		<?php endwhile; ?>
  	</div>
  </div>
</div>
