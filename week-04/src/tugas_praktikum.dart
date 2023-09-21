void namedparam({int? a, int? b}) {
  if (a != null && b != null) {
    print('A : $a');
    print('B : $b');
    a += b;
    print('Hasil dari penjumlahan kedua bilangan : $a');
  } else {
    print('One or both parameters are null.');
  }
}

// // main no 3
// void main() {
//     ////named parameter
//     //namedparam(a : 10, b : 25); 

//     //optional parameter
//     //using two parameters
//     optparam('Salma', 20);
//     print("");
//     //using three parameters
//     optparam('Salma', 20, 'IT Major College Student');
// }

void optparam(String name, int age, [String? job]) {
    var a = '$name is $age years old';
    if (job != null){
        a = '$a and $name is a $job';
    }
    print(a);
}

// // main no 4
// void main() {
//     var list = ['Salma Annissa Azizi', 28, 
//     'TI - 3F', 'Mobile Programming - Dart'];
//     list.forEach(printValue);
// }

void printValue(var value){
    print(value);
}

// main no 5
// void main() {
//     const list = ['blouse', 't-shirt', 'shirt'];
//     list.map((item){
//         return item.toUpperCase();
//     }).forEach((item){
//         print('$item: ${item.length}');
//     });
// }

var first = 'Variabel berada pada level global';

// main no 6 lexical scope
// void main(){
//     var second = 'Variabel ada di dalam main';

//     void insidemain(){
//         var third = 'Variabel ada di dalam function insidemain';

//         void nestedFunction(){
//             var fourth = 'Variabel ada di dalam function nestedFunction';

//             print('$first \n$second \n$third \n$fourth');
//         }

//         nestedFunction();
//     }

//     insidemain();
// }

Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

// main no 6 lexical closure
// void main() {
//   // Create a function that adds 2.
//   var add2 = makeAdder(2);

//   // Create a function that adds 4.
//   var add4 = makeAdder(4);

//   assert(add2(3) == 5); //true
//   assert(add4(3) == 7); //true
//   assert(add2(8) == 13); //true
// }

// main no 7
(String, int, bool) multipleVal(){
  return ('Salma Annissa Azizi', 28, true);
}
void main(){
  var result = multipleVal();
  print(result);
}









