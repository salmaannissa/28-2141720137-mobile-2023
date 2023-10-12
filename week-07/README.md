# **28. Salma Annissa Azizi (2141720137) / TI - 3F**

## **<b>PRAKTIKUM 1 : Membangun Layout di Flutter</b>**

**Langkah 1** : Membuat project baru dengan nama layout_flutter </br>
**Langkah 2** : Mengisi nama dan nim pada text title </br>
**Langkah 3** : Mengidentifikasi layout diagram </br>
**Langkah 4** : Mengimplementasikan title row </br>
- Soal 1 </br>
    **Kode Program** : </br> ![image](docs/p1_soal1.PNG) </br>
    **Penjelasan** : Meletakkan keyword *Expanded* dimaksudkan agar ukuran widget menyesuaikan ruang yang ada pada halaman. Sedangkan keyword *CrossAxisAlignment.start* bermaksud untuk membuat widget berada pada awal baris.
- Soal 2 </br>
    **Kode Program** : </br> ![image](docs/p1_soal2.PNG) </br>
    **Penjelasan** : Dilakukan set padding menjadi 8 sehingga antara baris satu dan dua memiliki jarak sebesar 8 piksel. Begitu pula warna text kedua diganti menjadi abu-abu.
- Soal 3 </br>
    **Kode Program** : </br> ![image](docs/p1_soal3a.PNG) </br>
    ![image](docs/p1_soal3b.PNG) </br>
    **Penjelasan** : Menambahkan icon star dengan warna merah dan sebuah text '41' serta melakukan pemanggilan titleSection pada widget build.
- Hasil Kode Program </br>
![image](docs/p1_hasil.PNG) </br>

## **<b>PRAKTIKUM 2 : Mengimplementasikan Button Row</b>**
**Langkah 1** : Membuat method Column _buildButtonColumn </br>
Program akan membuat sebuah kolom menggunakan sebuah metode bernama _buildButtonColumn yang memiliki tiga parameter bertipe Color, IconData, dam String. Di dalam method akan dilakukan penyesuaian ukuran kolom, alignment, icon, dan text.</br>
**Langkah 2** : Membuat Widget buttonSection </br>
Program akan menampilkan ketiga ikon menggunakan sebuah method _buildButtonColumn. Kolom di sepanjang sumbu utama akan mengatur ruang kosong secara merata menggunaka kode program MainAxisAlignment.spaceEvenly.
**Langkah 3** : Menambah button section ke body </br>
- Penjelasan </br>
Pada praktikum kedua, hasil kode program akan menampilkan sebuah baris yang berisi tiga button bernama call, route, dan share.
- Hasil Kode Program </br>
![image](docs/p2_hasil.PNG) </br>

## **<b>PRAKTIKUM 3 : Mengimplementasi Text Section</b>** 
**Langkah 1** : Membuat Widget textSection </br>
Program akan mencetak sebuah text dengan tambahan padding di sepanjang tepi text sejumlah 32. </br>
**Langkah 2** : Menambahkan Variabel Text Section ke Body </br>
- Hasil Kode Program </br>
![image](docs/p3_hasil.PNG) </br>

## **<b>PRAKTIKUM 4 : Mengimplementasi Text Section</b>** 
**Langkah 1** : Menyiapkan Aset Gambar </br>
Melakukan pencarian gambar pada internet dan membuat folder images di root project layout_flutter. Setelah itu gambar yang sudah diunduh dimasukkan ke dalam folder images dan melakukan setting pada pubspec.yaml agar gambar dapat ditampilkan oleh program. </br>
![images](docs/p4_pubspec.yaml) </br>
**Langkah 2** : Menambahkan Gambar ke Body </br>
![images](docs/p4_langkah2.PNG) </br>
**Langkah 3** : Mengubah menjadi ListView </br>
![images](docs/p4_langkah3.PNG) </br>
- Hasil Kode Program </br>
![image](docs/p4_hasil.PNG) </br>