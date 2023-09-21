void main(){
    var gifts = {
        //key : value
        'first' : 'patridge',
        'second' : 'turtledoves',
        'fifth' : 1
    };

    var nobleGases = {
        2 : 'helium',
        10 : 'neon',
        18 : 2,
    };

    print(gifts);
    print(nobleGases);

    var mhs1 = Map<String, String>();
    gifts['first'] = 'patridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';

    var mhs2 = Map<int, String>();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';

    print("");
    print(gifts);
    print(nobleGases);

    print("\nMODIFIKASI PROGRAM LANGKAH 3 : ");
    print("Nama dan NIM pada variabel gifts");
    gifts['Salma Annissa Azizi'] = '2141720137'; // all strings
    print(gifts);

    print("\nNama dan NIM pada variabel nobleGases");
    nobleGases[2141720137] = 'Salma Annissa Azizi'; // int & string
    print(gifts);

    print("\nNama dan NIM pada variabel mhs1");
    mhs1['Salma Annissa Azizi'] = '2141720137'; // all strings
    print(mhs1);

    print("\nNama dan NIM pada variabel mhs2");
    mhs2[2141720137] = 'Salma Annissa Azizi'; // int & strings
    print(mhs2);
}

