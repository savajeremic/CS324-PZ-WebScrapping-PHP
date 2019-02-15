<?php
require_once('connect.php');
include('scrape_imdb.php');
$data = scrape_imdb(2000, 2017, 1, 1);
print_r($data);
?>