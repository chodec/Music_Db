<html>
    <head>
        <title>Spotify parody</title>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div  class="container" style="padding:120px">
        <h1>Interpret</h1>
        <hr>
        <a href="index.php">
        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
        </a>
        <?php

require_once './connectdb.php';
try {
   
   $sql = "SELECT * FROM interpret";
   $result = $conn->query($sql);
   echo "<h1>"."Počet skupin: " . $result->rowCount() ."</h1>". "<br>";
   if($result->rowCount() > 0) {
        while($row = $result->fetch()) {
            echo '<div class="boxik">';
            echo '<a href="albums.php?id_band='.$row["id_band"].'">'.$row["name"].'</a>';
            echo "</div>";
            echo "<br>";
            echo "<br>";
        }
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
require_once 'footer.php';
?>
        </div>
       
    