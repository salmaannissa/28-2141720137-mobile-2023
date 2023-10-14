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

## <b>Tugas Praktikum : <a href='https://docs.flutter.dev/codelabs/layout-basics'> Codelabs Flutter Layout </a></b>
### **Row and Column Classes**
1. Membuat folder baru di dalam folder lib dengan nama widget.
2. Membuat file dart baru di dalam folder widget dengan nama ***row_column.dart***
3. Menambahkan <a href = ''> kode program </a> pada file ***row_column.dart***
4. Melakukan import serta memanggil function RowColumnWidget di dalam function MyApp yang terletak pada main seperti berikut : </br>
![image](docs/tp1_main_row.PNG)
5. Hasil Run : </br>
    - Class : Row </br>
        ![image](docs/tp1_hasil_row.PNG)
    - Class : Column </br>
        ![image](docs/tp1_hasil_column.PNG)

### **Axis Size and Alignment**
1. Membuat file dart baru di dalam folder widget dengan nama ***main_axis.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***main_axis.dart***
3. Melakukan import serta memanggil function MainAxis di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br>
    Baik menggunakan mainAxisSize.max atau mainAxisSize.min tampilan UI tidak terdapat perubahan. </br>
    ![image](docs/tp2_hasil_min.PNG)
5. Melakukan modifikasi pada file dart widget dengan menambahkan mainAxisAlignment: MainAxisAlignment.start sehingga akan tampil seperti berikut : </br>
    ![image](docs/tp2_hasil_min.PNG)
6. Melakukan modifikasi pada file dart widget dengan menambahkan mainAxisAlignment: MainAxisAlignment.end sehingga akan tampil seperti berikut : </br>
    ![image](docs/axisalignt_end.PNG)
7. Melakukan modifikasi pada file dart widget dengan menambahkan *mainAxisAlignment: MainAxisAlignment.spaceAround* dan *crossAxisAlignment: CrossAxisAlignment.center*, sehingga akan tampil seperti berikut :
    ![image](docs/axisalignt_cross.PNG)
8. Melakukan modifikasi pada file dart widget dengan merubah *crossAxisAlignment: CrossAxisAlignment.start*, sehingga akan tampil seperti berikut :
    ![image](docs/axisalignt_cross_start.PNG)

### **Flexible Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***flexibel.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***flexibel.dart***
3. Melakukan import serta memanggil function FlexibleWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/flexible_loose.PNG)
5. Melakukan modifikasi sehingga akan menampilkan UI seperti berikut : </br> ![image](docs/flexible_tight.PNG)

### **Expanded Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***expanded.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***expanded.dart***
3. Melakukan import serta memanggil function ExpandedWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/expanded_modif.PNG)

### **SizedBox Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***sized_box.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***sized_box.dart***
3. Melakukan import serta memanggil function SizedBoxWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/sizedbox_modif.PNG)

### **SizedBox Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***sized_box.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***sized_box.dart***
3. Melakukan import serta memanggil function SizedBoxWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/sizedbox_modif.PNG)

### **Spacer Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***spacer.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***spacer.dart***
3. Melakukan import serta memanggil function SpacerWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/spacer_modif.PNG)

### **Text Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***text.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***text.dart***
3. Melakukan import serta memanggil function TextWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/text_modif.PNG)

### **Icon Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***icon.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***icon.dart***
3. Melakukan import serta memanggil function IconWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/icon_modif.PNG)

### **Image Widget**
1. Membuat file dart baru di dalam folder widget dengan nama ***image.dart***
2. Menambahkan <a href = ''> kode program </a> pada file ***image.dart***
3. Melakukan import serta memanggil function ImageWidget di dalam function MyApp yang terletak pada main.
4. Hasil Run : </br> ![image](docs/img_modif.PNG)

### **Put it All Together**
- <a href = ''> Kode Program </a>
- Hasil Run : ![image](docs/put_all_together.PNG)
