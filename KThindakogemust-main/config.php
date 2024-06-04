<?php
$kasutaja = "kmasing";
$dbserver = "localhost";
$andmebaas ="kthindakogemust";
$passwd = "1234";

$uhendus = mysqli_connect ($dbserver, $kasutaja, $passwd, $andmebaas);

if (!$uhendus) {
    die("Viga: " . $uhendus->connect_error);
}
?>