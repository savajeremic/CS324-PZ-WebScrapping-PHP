<?php
require_once('connect.php');

$result = mysqli_query($conn,'TRUNCATE TABLE movies_directors;');
$result = mysqli_query($conn,'TRUNCATE TABLE movies_genres;');
$result = mysqli_query($conn,'TRUNCATE TABLE movies_stars;');

$result = mysqli_query($conn,'SET FOREIGN_KEY_CHECKS = 0; ');
$result = mysqli_query($conn,'TRUNCATE TABLE stars;');
$result = mysqli_query($conn,'TRUNCATE TABLE directors;');
$result = mysqli_query($conn,'TRUNCATE TABLE genres;');
$result = mysqli_query($conn,'TRUNCATE TABLE movies;');
$result = mysqli_query($conn,'SET FOREIGN_KEY_CHECKS = 1; ');
if ( !$result ) print(mysqli_error($conn));

require_once('index.php');
?>