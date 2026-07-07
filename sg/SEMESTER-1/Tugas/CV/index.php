<?php
   $title = "Curriculum Vitae";
   $name = "MOCHAMMAD RACHMAN AKBAR FAHLEVY";
   $info = ["KONTAK","SKILLS","HOBBY","ABOUT ME","PENDIDIKAN","PENGALAMAN KERJA"];
   $kontak = ["081553769480","akbarfahlevy39@gmail.com","Perumahan Bumi Suko Indah","disnadan71_"];
   $about = "Saya adalah anak remaja yang sedang besekolah di SMKN 2 Buduran Sidoarjo yang memasuki jurusan 
            Rekayasa Perangkat Lunak. Saya memiliki minat belajar yang tinggi untuk mengembangkan bakat dan
            minat saya dalam bidang IT.";
   $skill = ["HTML EXPERT","CSS EXPERT","PHP EXPERT","JavaScript EXPERT"];
   $pend = ["TK AL-FATTAH","SDN JATI","SMPN 4 SIDOARJO","SMKN 2 BUDURAN SIDOARJO"];
   $hobby = ["Bermain Game","Berolahraga","Membaca buku","Memasak"]; 
   $pengalaman = ["Membuat Website","Membuat Layout tampilan Website","Menjadi ketua dalam suatu organisasi","Mendesign menu dan tombol navigasi Website"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
   <style>
      .container{
         margin: auto;
         width: 1100px;
         height: 1200px;
         border: 1px solid;
      }
      .div{
         display: flex;
         height: 300px;
         width: 1100px;
      }
      .left{
         padding: 10px;
         display: block;
         align-content: center;
         width: 400px;
         background-color: khaki;
      }
      .right{
         padding: 10px;
         display: block;
         align-content: center;
         width: 700px;
      }
      .name{
         color: white;
         width: 700px;
         height: 200px;
        background-color: chocolate ;
        text-align: center;
        margin: auto;
        font-size: 50px; 
        font-weight: bold;
        border: 5px solid black;
      }
      h1{
         text-align: center;
         font-size: 100px;
         margin-bottom: 20px;
      }
      h2{
         color: white;
         margin: auto;
         text-align: center;
         font-size: 30px;
         width: 300px;
         border-radius: 20px;
         background-color: chocolate;
      }
      p, li{
         font-size: 30px;
      }
      .img{
         margin: auto;
         background-color: white;
         width: 200px;
         height: 200px;
         border-radius: 100px;
      }
   </style>
</head>
<body>
   <h1 class="title"><?= $title ?></h1>
   <div class="container">

   <div class="div 1">
      <div class="left">
         <div class="img"><img src="" alt=""></div>
      </div>
      <div class="right name"><?= $name ?></div>
   </div>

   <div class="div 2">
      <div class="left">
            <div class="info">
                 <h2><?= $info[0] ?></h2>
            </div>
            <div class="desk list">
               <ul> 
                  <li><?= $kontak[0] ?></li>
                  <li><?= $kontak[1] ?></li>
                  <li><?= $kontak[2] ?></li>
                  <li><?= $kontak[3] ?></li>
                </ul>
            </div>
      </div>
      <div class="right">
         <div class="info">
             <h2><?= $info[3] ?></h2>
         </div>
         <div class="desk list">
           <p><?= $about ?></p>
         </div>
      </div>
   </div>

   <div class="div 3">
      <div class="left">
         <div class="info">
             <h2><?= $info[1] ?></h2>
         </div>
         <div class="desk list">
            <ul> 
               <li><?= $skill[0] ?></li>
               <li><?= $skill[1] ?></li>
               <li><?= $skill[2] ?></li>
               <li><?= $skill[3] ?></li>
            </ul>
         </div>
      </div>
      <div class="right">
         <div class="info">
             <h2><?= $info[4]?></h2>
         </div>
         <div class="desk list">
            <ul> 
               <li><?= $pend[0]?></li>
               <li><?= $pend[1]?></li>
               <li><?= $pend[2]?></li>
               <li><?= $pend[3]?></li>
            </ul>
         </div>
      </div>
   </div>

   <div class="div 4">
      <div class="left">
         <div class="info">
             <h2><?= $info[2]?></h2>
         </div>
         <div class="desk list">
            <ul>
               <li><?= $hobby[0] ?></li>
               <li><?= $hobby[1] ?></li>
               <li><?= $hobby[2] ?></li>
               <li><?= $hobby[3] ?></li>
            </ul>
         </div>
      </div>
      <div class="right">
         <div class="info">
            <h2><?= $info[5]?></</h2>
         </div>
         <div class="desk list"> 
            <ul>
               <li><?= $pengalaman[0] ?></li>
               <li><?= $pengalaman[1] ?></li>
               <li><?= $pengalaman[2] ?></li>
               <li><?= $pengalaman[3] ?></li>
            </ul>
         </div>
      </div>
   </div>
</div>
</body>
</html>