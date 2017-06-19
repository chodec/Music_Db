<html>
    <head>
        <title>Spotify parody</title>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div  class="container" style="padding:120px">
            <h1>Songs</h1>
            <hr>
            <a href="index.php">
                <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
            </a>
            <?php
            require_once './connectdb.php';
            try {
                if (isset($_GET["id_album"])) {
                    $id_album = $_GET["id_album"];
                    $sql = "SELECT song.* FROM album_to_song LEFT JOIN song ON album_to_song.id_album=song.album_id WHERE album_to_song.id_album=?";

                    $query = $conn->prepare($sql);
                    $query->bindParam(1, $id_album, PDO::PARAM_INT);
                    $result = $query->execute();

                    echo "<h1>" . "Písniček celkem: " . $query->rowCount() . "</h1>" . "<br>";
                    echo '<div style="color:white">';
                    if ($query->rowCount() > 0) {
                        while ($row = $query->fetch()) {
                            echo'<div class="boxik">';
                            echo $row["song_name"];
                            echo "<br>";
                            echo '<a href="albums.php?id_album=' . $row["album_id"] . '">' . $row["album_name"] . '</a>';
                            echo "<br>";
                            echo '<a href="interpret.php">' . $row["band_name"] . '</a>';
                            echo '</div>';
                            echo "<br>";
                            echo "<br>";
                        }
                    }
                    echo '</div>';
                } else {
                    $sql = "SELECT * FROM song";
                    $result = $conn->query($sql);

                    echo "<h1>" . "Písniček celkem: " . $result->rowCount() . "</h1>" . "<br>";
                    if ($result->rowCount() > 0) {

                        while ($row = $result->fetch()) {
                            echo '<div class="boxik">';
                            echo $row["song_name"];
                            echo "<br>";
                            echo '<a href="interpret.php">' . $row["band_name"] . '</a>';
                            echo "<br>";
                            echo '<a href="album.php?id_album=' . $row["id_album"] . '">' . $row["album_name"] . '</a>';
                            echo '</div>';
                            echo "<br>";
                            echo "<br>";
                        }
                    }
                }
            } catch (PDOException $e) {
                echo "Connection failed: " . $e->getMessage();
            }
            require_once 'footer.php';
            ?>
        </div>
