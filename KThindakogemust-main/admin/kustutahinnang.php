<?php

session_start();
include ("C:/xampp/htdocs/KThindakogemust/config.php");

if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    header("Location: login");
    exit;
}

if(isset($_GET['kommentaar'])) {
    $valitudKommentaar = $_GET['kommentaar'];
    $valitudId = $_SESSION['id'];

    $sqlKustutaHinnang = "DELETE FROM hinnangud WHERE kommentaar = '$valitudKommentaar'";
    if ($uhendus->query($sqlKustutaHinnang) === TRUE) {
        header("Location: /KThindakogemust/admin/lisahinnang.php?koht=$valitudId");
        exit;
    }
}

$uhendus->close();
?>
