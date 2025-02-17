<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalkulator Harga</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .container {
            max-width: 300px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 2px 2px 12px rgba(0,0,0,0.1);
        }
        input, button {
            margin: 10px 0;
            padding: 10px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Kalkulator Harga</h2>
        <input type="number" id="harga" placeholder="Masukkan harga" />
        <button onclick="hitungHarga()">Hitung</button>
        <p>Hasil +2.5: <span id="hasilTambah">-</span></p>
        <p>Hasil -5.5: <span id="hasilKurang">-</span></p>
    </div>
    
    <script>
        function hitungHarga() {
            let harga = parseFloat(document.getElementById("harga").value);
            if (!isNaN(harga)) {
                document.getElementById("hasilTambah").innerText = (harga + 2.5).toFixed(2);
                document.getElementById("hasilKurang").innerText = (harga - 5.5).toFixed(2);
            } else {
                alert("Masukkan harga yang valid!");
            }
        }
    </script>
</body>
</html>
