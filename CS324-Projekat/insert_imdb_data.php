<?php
error_reporting(E_ERROR | E_PARSE);

require_once('connect.php');
include('scrape_imdb.php');
$year_start = $_POST['year_start'];
$year_end = $_POST['year_end'];
$data = scrape_imdb($year_start, $year_end, 1, 1);

for ($i = 0; $i < count($data); $i++ ) {
    
    $description = $conn->escape_string($data[$i]['description']);
    $title = $conn->escape_string($data[$i]['title']);
    
    $votes = intval($data[$i]['votes']);
    $gross = intval(str_replace(',','',$data[$i]['gross']));

    //unos u movies
    $sql = "INSERT IGNORE INTO movies (title,movie_url,year,image_url,certificate,runtime,
            imdb_rating,metascore,description,votes,gross)
            VALUES ('$title','{$data[$i]['movie_url']}','{$data[$i]['year']}','{$data[$i]['image']}',
            '{$data[$i]['certificate']}','{$data[$i]['runtime']}','{$data[$i]['imdb_rating']}',
            '{$data[$i]['metascore']}','$description','$votes','$gross')";
            
    $conn->query($sql) or die($conn->error);
        
    $movies_id = $conn->insert_id; //uzima poslednji key od movies_id, vraca 0 ako nije uspeo insert
    
    if ( !$movies_id ) { //duplikati filmovi
        continue; 
    }
        
    $directors = explode(",",$data[$i]['directors']);
    $stars = explode(",",$data[$i]['stars']);
    $genres = explode(",",$data[$i]['genres']);
    
    //unos directors
    for ($i = 0; $i < count($directors); $i++)
    {
        $director = $conn->escape_string(trim($directors[$i]));
        
        $sql = "INSERT IGNORE INTO directors (name) VALUES ('$director')";

        $conn->query($sql) or die($conn->error);
        $directors_id = $conn->insert_id;
        
        //ako je novi director unet, else ako director postoji id ce biti 0
        if ( $directors_id ){
            //unos movies_directors
            $sql = "INSERT INTO movies_directors (movies_id, directors_id) "
                    . "VALUES ('$movies_id','$directors_id')";
            $conn->query($sql);
        }
        else {
            //select director_id po imenu
            $sql = "SELECT id FROM directors WHERE name='$director'";
            $result = $conn->query($sql) or die($conn->error);
            $row = $result->fetch_assoc();
            $directors_id = $row['id'];
            
            $sql = "INSERT INTO movies_directors (movies_id, directors_id) "
                . "VALUES ('$movies_id','$directors_id')";
            
            //ako ovo izbaci gresku, nastavlja rad, zato sto par moze vec postojati
            $conn->query($sql);  
        }
    }
    

    //unos stars
    for ($i = 0; $i < count($stars); $i++)
    {
        $star = $conn->escape_string(trim($stars[$i]));
        $sql = "INSERT IGNORE INTO stars (name) VALUES ('$star')";
        $conn->query($sql) or die($conn->error);
        $stars_id = $conn->insert_id;
        
        if ( $stars_id ){
            //unos movies_stars
            $sql = "INSERT INTO movies_stars (movies_id, stars_id) "
                    . "VALUES ('$movies_id','$stars_id')";
            $conn->query($sql);
        }
        else {
            $sql = "SELECT id FROM stars WHERE name='$star'";
            $result = $conn->query($sql) or die($conn->error);
            $row = $result->fetch_assoc();
            $stars_id = $row['id'];
            
            $sql = "INSERT INTO movies_stars (movies_id, stars_id) "
                . "VALUES ('$movies_id','$stars_id')";
            
            //ako ovo izbaci gresku, nastavlja rad, zato sto par moze vec postojati
            $conn->query($sql);
        }
    }
    
    //unos genres
    for ($i = 0; $i < count($genres); $i++)
    {
        $genre = $conn->escape_string(trim($genres[$i]));
        $sql = "INSERT IGNORE INTO genres (name) VALUES ('$genre')";
        $conn->query($sql) or die($conn->error);
        $genres_id = $conn->insert_id;
        
        if ( $genres_id ){
            //unos movies_genres
            $sql = "INSERT INTO movies_genres (movies_id, genres_id) "
                    . "VALUES ('$movies_id','$genres_id')"; 
            $conn->query($sql);
        }
        else {
            $sql = "SELECT id FROM genres WHERE name='$genre'";
            $result = $conn->query($sql) or die($conn->error);
            $row = $result->fetch_assoc();
            $genres_id = $row['id'];
            
            $sql = "INSERT INTO movies_genres (movies_id, genres_id) "
                . "VALUES ('$movies_id','$genres_id')";
            
            //ako ovo izbaci gresku, nastavlja rad, zato sto par moze vec postojati
            $conn->query($sql);    
        }
    }
}
?>
<?php require_once('index.php'); ?>