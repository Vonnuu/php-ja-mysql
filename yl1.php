<?php include('config.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <?php 
    $paring = 'SELECT COUNT(*) as K FROM album';
    $valjund = mysqli_query($conn, $paring);
    $kokku = mysqli_fetch_assoc($valjund);
    
    ?>
    <h1>koik albumid(<?php echo $kokku['K'] ?>)</h1>
<div class="container">
<div class="row row-cols-1 row-cols-md-6 g-4">
<?php

$paring = 'SELECT * FROM album where aasta >=2010 limit 10';
//var_dump($paring);
//mysql käsu saatmine andmebaasile
$valjund = mysqli_query($conn, $paring);		
//väljastamine
while($rida = mysqli_fetch_assoc($valjund)){
echo '  <div class="col">
<div class="card">
  <img src="https://picsum.photos/200" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">'.$rida["album"].'</h5>
    <p class="card-text">'.$rida["artist"].'</p>
    <p class="card-text">'.$rida["hind"].'€</p>
  </div>
</div>
</div>
';
}
?>

</div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>