<html>
    <head>
        <title>Spotify parody</title>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div  class="container" style="padding:120px">
        <h1>Albums</h1>
        <hr>
        <a href="index.php">
        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
        </a>
        <?php

require_once './connectdb.php';

try {
    if( isset($_GET["id_band"])){
    $id_band = $_GET["id_band"];
    $sql = "SELECT * FROM album WHERE id_band=?";
    $query = $conn->prepare($sql);
    $query->bindParam(1, $id_band, PDO::PARAM_INT);
    $result = $query->execute();
   
   echo "<h1>"."Alb celkem: " . $query->rowCount()."</h1>" . "<br>";
   
    echo '<div style="color:white">';
    
    if($query->rowCount() > 0) {
        while($row = $query->fetch()) {
            echo'<div class="boxik">';
            echo '<a href="songs.php?id_album='.$row["id_album"].'">'.$row["album_name"].'</a>';
            echo "<br>";
            echo '<a href="interpret.php?id_band">'.$row["band_name"].'</a>';
            echo'</div>';
            echo "<br>";
            echo "<br>";
            
        }
    }
    echo '<div style="color:white">';
    }else{
   $sql = "SELECT * FROM album";
   $result = $conn->query($sql);
   echo "<h1>"."Alb celkem: " . $result->rowCount()."</h1>" . "<br>";
   echo '<div style="color:white">';
   if($result->rowCount() > 0) {
        while($row = $result->fetch()) {
            echo'<div class="boxik">';
            echo '<a href="songs.php?id_album='.$row["id_album"].'">'.$row["album_name"].'</a>';
            echo "<br>";
             echo '<a href="interpret.php?id_band">'.$row["band_name"].'</a>';
            echo'</div>';
            echo "<br>";
            echo "<br>";
            
        }
    }
    echo '<div style="color:white">';
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
require_once 'footer.php';
?>
        </div>
        
   