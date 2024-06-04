<?php
include ("C:/xampp/htdocs/KThindakogemust/config.php");
session_start();

if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    header("Location: login");
    exit;
}

session_start();
include ("C:/xampp/htdocs/KThindakogemust/config.php");

if(isset($_GET['koht'])) {
    $valitudKohtId = $_GET['koht'];
    $sqlValitud_koht = "SELECT nimi FROM kohad WHERE id = '$valitudKohtId'";
    $valitud_koht = $uhendus->query($sqlValitud_koht);
    $row = mysqli_fetch_assoc($valitud_koht);

    $sqlKustutaAsutus = "DELETE FROM kohad WHERE id = '$valitudKohtId'";
    if ($uhendus->query($sqlKustutaAsutus) === TRUE) {
        header("Location: /KThindakogemust/admin/");
        exit;
    } else {
        echo "Viga hinnangu kustutamisel: " . $uhendus->error;
    }
} else {
    header("Location: /KThindakogemust/admin/");
}

$uhendus->close();
?>
