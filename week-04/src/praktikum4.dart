void main() {
    var list = [1,2,3];
    var list2 = [0, ...list];
    print(list);
    print(list2);
    print(list2.length);
    
    //tambahan kode program langkah 3
    var list1 = [1, 2, null];
    print(list1);
    var nim = [2141720137]; // penambahan variabel nim
    var list3 = [0, ...list1, ...nim]; // menambahkan variabel nim ke list3
    print(list3.length);
    print("Penambahan NIM pada list : ");
    print(list3);

    print("");

    // langkah 4
    bool promoActive = false;
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);

    print("");
    
    // langkah 5
    String login = 'Staff';
    var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
    print(nav2); print("");

    // langkah 6
    var listOfInts = [1, 2, 5];
    var listOfStrings = ['#0', for (var i in listOfInts) '$i'];
    assert(listOfStrings[1] == '#1');
    print(listOfStrings);
}

