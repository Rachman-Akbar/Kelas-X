<?php 
    $sekolah = [
        "TK AL FATTAH",
        "SDN JATI", 
        "SMPN 4 SDA",
        "SMKN 2 BUDURAN SDA"
    ];
    $sekolahs = [
        "TK"  => "TK AL FATTAH",
        "SD"  => "SDN JATI", 
        "SMP" => "SMPN 4 SDA", 
        "SMK" => "SMKN 2 BUDURAN",
        "PT"  => "Universitas"
    ];
    $skills = [
        "C++"        => "ExpErt",
        "HTML"       => "Newbie",
        "CSS"        => "Newbie",
        "PHP"        => "Intermediate",
        "JavaScript" => "Intermediate"
    ];
    $identitas =[
        "Nama" => "M. Rachman Akbar F",
        "Alamat" => "Bumi Suko Indah A2/19",
        "Email" => "akbarfahlevy39@gmail.com",
        "Facebook" => "Akbar",
        "TikTok" => "Victory"
    ];
    $hobi = [
        "Coding",
        "Musik",
        "Mancing",
        "Sepeda",
        "Membaca"
    ];

    // echo $sekolah[0];
    // echo "<br>";
    // echo $sekolahs["TK"];
    // echo "<br>";
    // echo $sekolah [1];
    // echo "<br>";
    // echo $sekolahs ["SD"];
    // echo "<br>";

    // echo "<br>";

    // for ($i = 0; $i < 4; $i++){
    //     echo $sekolah [$i];
    //     echo "<br>";
    // }

    // echo "<br>";

    // foreach ($sekolah as $joni){
    //     echo $joni;
    //     echo "<br>";
    // }

    // echo "<br>";

    // foreach ($sekolahs as $key => $value){
    //     echo $key;
    //     echo " => ";
    //     echo $value;
    //     echo "<br>";
    // }

    // echo "<br>";

    // foreach ($skills as $key => $value){
    //     echo $key;
    //     echo " => ";
    //     echo $value;
    //     echo "<br>";
    // }

    if (isset($_GET ["menu"])) {
        $menu = $_GET ["menu"];
        echo $menu;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <hr>
    <ul>
        <li><a href="?menu=home">HOME</a></li>
        <li><a href="?menu=CV">CV</a></li>
        <li><a href="?menu=project">PROJECT</a></li>
        <li><a href="?menu=contact">CONTACT</a></li>
    </ul>

    <h2>IDENTITAS</h2>
    <table border ="1px">
        <thead>
            <tr>
                <th>Identitas</th>
                <th>Deskripsi</th>
            </tr>
        </thead>
        <tbody>
            <?php 
             foreach ($identitas as $key => $value){
             ?>
                <tr>
                    <td><?= $key ?></td>
                    <td><?= $value ?></td>
                </tr>
             <?php 
             }
            ?>          
        </tbody>
    </table>

    <h2>RIWAYAT SEKOLAH</h2>
    <table border= "1px">
        <thead>
            <tr>
                <th>Jenjang</th>
                <th>Nama Sekolah</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($sekolahs as $key => $value){
                    echo "<tr>";
                    echo "<td>";
                    echo "$key";
                    echo "</td>";
                    echo "<td>";
                    echo "$value";
                    echo "</td>";
                    echo "</tr>";
                }
            ?>
        </tbody>
    </table>
    <hr>

    <h2>SKILLS</h2>
    <table border = "1px">
        <thead>
            <tr>
                <th>Skill</th>
                <th>Level</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($skills as $key => $value){
            ?>    
            <tr>
                <td><?= $key ?></td>
                <td><?= $value ?></td>
            </tr>
            <?php    
            }
            ?>
        </tbody>
    </table>

    <hr>
    
    <h2>HOBI</h2>
    <ol>
        <?php 
            foreach ($hobi as $key){
        ?>
        <li><?= $key ?></li>
        <?php 
            }
        ?>
    </ol>

</body>
</html>