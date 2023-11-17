# **P12 Pemrograman Asynchronous**
## **28. Salma Annissa Azizi**

1. Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda. </br>
    **Jawab :** </br> ![img](docs/P01-01-identitas%20nama.PNG)
2. Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini. Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2". </br>
    **Jawab :**
    - Buku yang digunakan :
        ![img](docs/P01-04-buku.PNG)
    - JSON :
        ![img](docs/P01-04-buku%20json.PNG)
3. Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError! Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3". </br>
    **Jawab**:
    - Substring adalah sebuah method yang digunakan untuk mengambil sebuah data string dengan length tertentu. Pada method substring dimasukkan parameter 0 dan 450 yang artinya kode program akan mengeluarkan output karakter data string dari indeks 0 hingga 449 yang berjumlah 450 karakter.
    - catchError adalah metode penangkapan error yang akan menangani masalah selama pengambilan data. catchError akan mengembalikan data tertentu apabila kode program menangkap masalah. Dengan menggunakan catchError maka kesalahan akan lebih teratasi.
    - Hasil Praktikum : </br> ![img](docs/P01-04-buku.gif) </br>

4. Jelaskan maksud kode langkah 1 dan 2 tersebut! Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4". </br>
    **Jawab**: 
    - Penjelasan Langkah 1 : Membuat tiga buah method yang akan mencetak angka 1, 2, 3 dengan waktu delay 3 detik pada setiap method.
    - Penjelasan Langkah 2 : Mendeklarasikan sebuah variabel total bertipe int yang diinisialisasi enol. Ketiga method yang dibuat pada langkah 1 dipanggil pada method count() dan memberikan nilai pada variabel total. Lalu nilai total tersebut akan dicetak menjadi String dan akan tampil setelah program dijalankan selama 9 detik.
    - Hasil Praktikum : </br> ![img](docs/P02-04-Hasil.gif) </br>

5. Jelaskan maksud kode langkah 2 tersebut! Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5". </br>
    **Jawab** : </br>
    - Deklarasi pada kode program baris pertama berarti bahwa variabel completer yang bertipe late Completer akan diinisialisasi nanti sebelum digunakan. Hal ini memungkinkan pengguna menunggu hasil dari suatu operasi asinkronus. 
    - Function calculate merupakan Future asinkron yang akan menunda eksekusi selama 5 detik menggunakan future.delayed
    - Setelah penundaan selesai makan akan muncul angka 42 pada tampilan karena function getNumber() memanggil calculate.
    - Hasil : </br> ![img](docs/P03-05-Hasil.gif) </br>

6. Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut! Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6". </br>
    **Jawab** : </br>
    - Perbedaan pada kedua kode program terletak pada try and catch nya. Pada kode program kedua ini ditambahkan aksi untuk menangani error dan mengembalikan sebuah hasil 'An error occurred' apabila program mengalami error.
    - Hasil dari kode program masih sama dengan sebelumnya karena dalam kode program tidak ditemukan error : </br> ![img](docs/P03-06-Hasil.gif) </br>

7. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7". </br>
    **Jawab** : </br>
    - Hasil : </br> ![img](docs/P04-07-Hasil.gif) </br>

8. Jelaskan maksud perbedaan kode langkah 1 dan 4! </br>
    **Jawab** : </br> 
    - Pada langkah satu sampai empat dilakukan pemanggilan future yang bekerja secara paralel. Artinya bahwa dalam satu waktu sebuah program akan mengeksekusi beberapa future sekaligus yang dapat mengurangi waktu yang diperlukan untuk eksekusi supaya lebih efisien. Sebuah class FutureGroup mampu menampung banyak future dan mengeksekusinya disaat yang bersamaan. Selain itu Future.wait juga dapat dimanfaatkan untuk melakukan eksekusi future dalam satu waktu yang sama. </br>
    - Perbedaan yang signifikan terjadi pada saat menampilkan hasil. Pemanggilan ketiga function yang digunakan pada praktikum kedua mulanya membutuhkan waktu 9s untuk tampil. Namun, saat ketiga function dimasukkan ke dalam FutureGroup waktu yang diperlukan untuk menampilkan hasil hanya 3s. </br>

9. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9". </br>
    **Jawab** : </br>
    - Hasil Run Code : </br> ![img](docs/P05-09-Hasil.gif) </br>
    - Debug Console : </br> ![img](docs/P05-09-Hasil-DebugConsole.PNG) </br>

10. Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4! </br>
    **Jawab** : </br>
    - Hasil yang ditampilkan sama dengan soal nomor 9.
    - Yang membedakan kedua kode program tersebut adalah penanganan error di langkah pertama dilakukan pada sintaks ElevatedButton. Sedangkan penanganan error pada langkah keempat dilakukan pada function handleError itu sendiri dan ElevatedButton hanya bertugas mengeksekusi program saat tombolnya diklik.

