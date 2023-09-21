void main() {
    // var halogens = {'fluorine', 'chlorine', 
    // 'bromine', 'iodine', 'astatine'};
    // print(halogens);

    var names1 = <String>{};
    Set<String> names2 = {};

    names1.add('Salma Annissa Azizi');
    names1.add('2141720137');

    var data = {'Salma Annissa Azizi', '2141720137'};
    names2.addAll(data);

    print('Menggunakan add : ');
    print(names1);
    print('\nMenggunakan addAll: ');
    print(names2);
}