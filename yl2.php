<?php
include 'config.php';

$sql1 = "SELECT * FROM album LIMIT 10";
$result1 = $conn->query($sql1);
echo "<h2>Kogu albumite sisu ridade kaupa (10 rida)</h2>";
if ($result1->num_rows > 0) {
    while($row = $result1->fetch_assoc()) {
        echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
    }
} else {
    echo "Tulemusi ei leitud.";
}

$sql2 = "SELECT artist, album FROM album ORDER BY artist ASC LIMIT 10";
$result2 = $conn->query($sql2);
echo "<h2>Artisti järgi kasvavalt (10 rida)</h2>";
if ($result2->num_rows > 0) {
    while($row = $result2->fetch_assoc()) {
        echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
    }
} else {
    echo "Tulemusi ei leitud.";
}

$sql3 = "SELECT artist, album FROM album WHERE aasta >= 2010";
$result3 = $conn->query($sql3);
echo "<h2>Aasta 2010 ja uuemad</h2>";
if ($result3->num_rows > 0) {
    while($row = $result3->fetch_assoc()) {
        echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
    }
} else {
    echo "Tulemusi ei leitud.";
}

$sql4 = "SELECT COUNT(DISTINCT album) AS albumite_arv, AVG(hind) AS keskmine_hind, SUM(hind) AS koguväärtus FROM album";
$result4 = $conn->query($sql4);
echo "<h2>Erinevate albumite arv, keskmine hind ja koguväärtus</h2>";
if ($result4->num_rows > 0) {
    $row = $result4->fetch_assoc();
    echo "Erinevate albumite arv: " . $row["albumite_arv"] . "<br>";
    echo "Keskmine hind: " . $row["keskmine_hind"] . "<br>";
    echo "Koguväärtus: " . $row["koguväärtus"] . "<br>";
} else {
    echo "Tulemusi ei leitud.";
}

$sql5 = "SELECT album FROM album ORDER BY aasta ASC LIMIT 1";
$result5 = $conn->query($sql5);
echo "<h2>Kõige vanema albumi nimed</h2>";
if ($result5->num_rows > 0) {
    $row = $result5->fetch_assoc();
    echo "Vanim album: " . $row["album"] . "<br>";
} else {
    echo "Tulemusi ei leitud.";
}

$sql6 = "SELECT * FROM album WHERE hind > (SELECT AVG(hind) FROM album)";
$result6 = $conn->query($sql6);
echo "<h2>Hind on kogu keskmisest suurem</h2>";
if ($result6->num_rows > 0) {
    while($row = $result6->fetch_assoc()) {
        echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
    }
} else {
    echo "Tulemusi ei leitud.";
}

echo "<h2>Otsingukast</h2>";
echo "<form action='' method='GET'>";
echo "<select name='otsing'>";
echo "<option value='artist'>Artist</option>";
echo "<option value='album'>Album</option>";
echo "</select>";
echo "<input type='text' name='otsingusona'>";
echo "<input type='submit' value='Otsi'>";
echo "</form>";

if(isset($_GET['otsing']) && isset($_GET['otsingusona'])) {
    $otsing = $_GET['otsing'];
    $otsingusona = $_GET['otsingusona'];
    $sql7 = "SELECT * FROM album WHERE $otsing LIKE '%$otsingusona%'";
    $result7 = $conn->query($sql7);
    echo "<h3>Otsingu tulemused</h3>";
    if ($result7->num_rows > 0) {
        while($row = $result7->fetch_assoc()) {
            echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
        }
    } else {
        echo "Tulemusi ei leitud.";
    }
}

$conn->close();
?>
