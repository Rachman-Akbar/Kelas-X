<?php
// 1. Contoh Variabel dan Tipe Data
$nama = "Budi Santoso";
$umur = 20;
$ipk = 3.75;
$isLulus = true;
$hobi = array("Membaca", "Menulis", "Coding");

// Menampilkan informasi
echo "<h2>Informasi Mahasiswa:</h2>";
echo "Nama: " . $nama . "<br>";
echo "Umur: " . $umur . " tahun<br>";
echo "IPK: " . $ipk . "<br>";
echo "Status Kelulusan: " . ($isLulus ? "Lulus" : "Belum Lulus") . "<br>";

// 2. Contoh Struktur Kontrol
echo "<h2>Nilai dan Grade:</h2>";
$nilai = 85;

if ($nilai >= 90) {
    echo "Grade A";
} elseif ($nilai >= 80) {
    echo "Grade B";
} elseif ($nilai >= 70) {
    echo "Grade C";
} else {
    echo "Grade D";
}

// 3. Contoh Loop
echo "<h2>Daftar Hobi:</h2>";
echo "<ul>";
foreach ($hobi as $item) {
    echo "<li>$item</li>";
}
echo "</ul>";

// 4. Contoh Fungsi
function hitungLuasLingkaran($jariJari) {
    return 3.14 * $jariJari * $jariJari;
}

$jariJari = 7;
echo "<h2>Perhitungan Luas Lingkaran:</h2>";
echo "Jari-jari: " . $jariJari . " cm<br>";
echo "Luas: " . hitungLuasLingkaran($jariJari) . " cm²<br>";

// 5. Contoh Array Asosiatif
$mahasiswa = array(
    "nim" => "12345",
    "nama" => "Budi Santoso",
    "jurusan" => "Teknik Informatika"
);

echo "<h2>Data Mahasiswa:</h2>";
foreach ($mahasiswa as $key => $value) {
    echo ucfirst($key) . ": " . $value . "<br>";
}

// 6. Contoh Form Sederhana
echo "<h2>Form Input:</h2>";
?>
<form method="post" action="">
    <label>Nama:</label><br>
    <input type="text" name="nama"><br>
    <label>Pesan:</label><br>
    <textarea name="pesan"></textarea><br>
    <input type="submit" value="Kirim">
</form>

<?php
// Menangani form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['nama']) && isset($_POST['pesan'])) {
        echo "<h3>Data yang dikirim:</h3>";
        echo "Nama: " . htmlspecialchars($_POST['nama']) . "<br>";
        echo "Pesan: " . htmlspecialchars($_POST['pesan']);
    }
}
?>