(int, int) tukar((int, int) record) {
        var (a, b) = record;
        return (b, a);
}

void main() {
    var record = ('first', a: 2, b: true, 'last');
    print(record);

    //langkah 3
    var before = (1, 3);
    var after = tukar(before);

    print('Sebelum pertukaran : ');
    print(before);
    print('Setelah pertukaran : ');
    print(after);

    // langkah 4
    (String, int) mahasiswa;
    mahasiswa = ('Salma Annissa Azizi', 2141720137); // modif nama nim
    print(mahasiswa);

    //langkah 5
    print("");
    
    var mahasiswa2 = ('Salma Annissa Azizi', a: 2, b: true, '2141720137');

    print(mahasiswa2.$1);
    print(mahasiswa2.a);
    print(mahasiswa2.b);
    print(mahasiswa2.$2);


}

