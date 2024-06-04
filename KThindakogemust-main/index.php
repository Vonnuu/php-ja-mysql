<?php
include ("config.php");
session_start();
?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KThindakogemust</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"
    >
</head>
<body>
    <div class="container">
        <h1>-Söögikohtade nimekiri-</h1>
        <hr>

        <form method="get">
            <label for="otsi">Otsi söögikohta:</label>
            <input type="text" name="otsi" id="otsi">
            <input type="submit" class="btn btn-primary my-2" value="Otsi">
        </form>
        
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Nimi <a href="?sort=nimi&order=asc">▲</a> / <a href="?sort=nimi&order=desc">▼</a></th>
                    <th scope="col">Asukoht <a href="?sort=asukoht&order=asc">▲</a> / <a href="?sort=asukoht&order=desc">▼</a></th>
                    <th scope="col">Keskmine hinne <a href="?sort=keskmine_hinne&order=asc">▲</a> / <a href="?sort=keskmine_hinne&order=desc">▼</a></th>
                    <th scope="col">Hinnanute arv <a href="?sort=hinnanute_arv&order=asc">▲</a> / <a href="?sort=hinnanute_arv&order=desc">▼</a></th>
                </tr>
            </thead>
            <tbody>
                <?php
                $lehekyljeSuurus = 10;
                if (isset($_GET['lehekylg'])) {
                    $lehekylg = $_GET['lehekylg'];
                }else {
                    $lehekylg = 1;
                }
                $start = ($lehekylg-1) * $lehekyljeSuurus;
                $sort = isset($_GET['sort']) ? $_GET['sort'] : 'nimi';
                $order = isset($_GET['order']) ? $_GET['order'] : 'asc';

                $otsi = isset($_GET['otsi']) ? $_GET['otsi'] : '';
                $sql_otsi = $otsi ? "WHERE nimi LIKE '%$otsi%'" : '';

                $sql_kohad = "SELECT * FROM kohad $sql_otsi ORDER BY $sort $order LIMIT $start, $lehekyljeSuurus";
                $result = $uhendus->query($sql_kohad);

                if ($result->num_rows > 0){
                    while ($row = $result->fetch_assoc()){
                        $koht = $row['nimi'];
                        $id = $row['id'];
                        $hinnanuteArvQuery = "SELECT COUNT(*) as hinnanute_arv FROM hinnangud WHERE id_koht = '$id'";
                        $hinnanuteResult = $uhendus->query($hinnanuteArvQuery);
                        $hinnanuteArv = $hinnanuteResult->fetch_assoc()['hinnanute_arv'];

                        $keskmineHinneQuery = "SELECT AVG(hinnang) as keskmine_hinne FROM hinnangud WHERE id_koht = '$id'";
                        $keskmineHinneResult = $uhendus->query($keskmineHinneQuery);
                        $keskmineHinne = $keskmineHinneResult->fetch_assoc()['keskmine_hinne'];
                        $YkeskmineHinne = round($keskmineHinne,1);

                        $lisamiseParing = "UPDATE kohad SET keskmine_hinne = '$YkeskmineHinne', hinnanute_arv = '$hinnanuteArv' WHERE id = '$id'";
                        $lisamiseTulemus = $uhendus->query($lisamiseParing);
                        ?>
                        <tr>
                            <td><a href="lisahinnang.php?koht=<?php echo urlencode($id); ?>"><?php echo $row["nimi"]; ?></a></td>
                            <td><?php echo $row["asukoht"]; ?></td>
                            <td><?php echo round($keskmineHinne, 1);?></td>
                            <td><?php echo $hinnanuteArv; ?></td>
                        </tr>
                        <?php
                    }
                }
                ?>
            </tbody>
        </table>




        <?php
        $eelminelehekylg = $lehekylg - 1;
        $jargminelehekylg = $lehekylg + 1;
        if ($eelminelehekylg > 0) {
            echo "<a href='?lehekylg=$eelminelehekylg'>&lt; Eelmised</a>";
        }
        if ($result->num_rows == $lehekyljeSuurus) {
            echo "<a href='?lehekylg=$jargminelehekylg'> Järgmised &gt;</a>";
        }

        ?>
        <br>
        <br>

        <?php
        $uhendus->close();
        ?>   
    </div>

        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html> 