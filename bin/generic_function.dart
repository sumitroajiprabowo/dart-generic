/// Generic Function di Dart
/// Generic Function adalah sebuah function yang bisa menerima tipe data apapun.
/// Generic Function bisa digunakan di function biasa maupun di method.
/// Ini sangat cocok digunakan ketika kita ingin membuat function yang bisa menerima tipe data apapun tanpa harus membuat function yang sama dengan tipe data yang berbeda.
/// Ada 2 cara untuk membuat Generic Function di Dart, yaitu:
/// 1. Generic Function dengan 1 parameter
/// 2. Generic Function dengan banyak parameter
///
/// Nama generic function biasanya menggunakan huruf T,K, N, E, U, V, dan seterusnya
/// T adalah singkatan dari Type
/// K adalah singkatan dari Key
/// E adalah singkatan dari Element
/// N adalah singkatan dari Number
/// V adalah singkatan dari Value
/// S adalah singkatan dari State
/// R adalah singkatan dari Result
///

// example generic function with 1 parameter T
T getData<T>(T value) { // function getData() dengan 1 parameter value bertipe data T dan mengembalikan nilai value bertipe data T
  return value; // mengembalikan nilai value
}

// example
// Generic Function dengan banyak parameter
void printData2<T, K>(T value, K value2) { // function printData2() dengan 2 parameter value bertipe data T dan value2 bertipe data K
  print('Data: $value and $value2'); // mencetak value dan value2
}

class ArrayHelper{
  static T getFirst<T>(List<T> items){ // method getFirst() dengan 1 parameter items bertipe List<T> dan mengembalikan nilai items[0] bertipe data T
    return items[0]; // mengembalikan nilai items[0]
  }

  static T getLast<T>(List<T> items){ // method getLast() dengan 1 parameter items bertipe List<T> dan mengembalikan nilai items[items.length - 1] bertipe data T
    return items[items.length - 1]; // mengembalikan nilai items[items.length - 1]
  }

  static List<T> getAll<T>(List<T> items){ // method getAll() dengan 1 parameter items bertipe List<T> dan mengembalikan nilai items bertipe List<T>
    return items; // mengembalikan nilai items
  }

  static T getN<T>(List<T> items, int n){ // method getN() dengan 2 parameter items bertipe List<T> dan n bertipe int dan mengembalikan nilai items[n] bertipe data T
    return items[n]; // mengembalikan nilai items[n]
  }

  static List<T> insert<T>(List<T> items, T value){ // method insert() dengan 2 parameter items bertipe List<T> dan value bertipe data T dan mengembalikan nilai items bertipe List<T>
    items.add(value); // menambahkan value ke dalam items
    return items; // mengembalikan nilai items
  }

  static List<T> remove<T>(List<T> items, T value){ // method remove() dengan 2 parameter items bertipe List<T> dan value bertipe data T dan mengembalikan nilai items bertipe List<T>
    items.remove(value); // menghapus value dari items
    return items; // mengembalikan nilai items
  }

  static List<T> removeAll<T>(List<T> items, List<T> values){ // method removeAll() dengan 2 parameter items bertipe List<T> dan values bertipe List<T> dan mengembalikan nilai items bertipe List<T>
    items.removeWhere((element) => values.contains(element)); // menghapus semua value dari items
    return items; // mengembalikan nilai items
  }

  static int count<T>(List<T> items, T value){ // method count() dengan 2 parameter items bertipe List<T> dan value bertipe data T dan mengembalikan nilai count bertipe int
    int count = 0; // inisialisasi variabel count dengan nilai 0
    for (var element in items) { // perulangan untuk setiap element di dalam items
      if(element == value){ // jika element sama dengan value
        count++; // increment count
      }
    }
    return count; // mengembalikan nilai count
  }

  static int countList<T>(List<T> items){ // method countList() dengan 1 parameter items bertipe List<T> dan mengembalikan nilai items.length bertipe int
    return items.length; // mengembalikan nilai items.length
  }


}

void main(){
  // Generic Function dengan 1 parameter
  print(getData<int>(10)); // mencetak nilai 10
  print(getData<String>('Hello World')); // mencetak nilai Hello World
  print(getData<bool>(true)); // mencetak nilai true

  // new line
  print("\n");

  // Generic Function dengan banyak parameter
  printData2<int, String>(10, 'Hello World'); // mencetak nilai 10 dan Hello World
  printData2<String, bool>('Hello World', true); // mencetak nilai Hello World dan true
  printData2<bool, int>(true, 10); // mencetak nilai true dan 10

  // new line
  print("\n");

  // Generic Function di method
  List<int> numbers = [1, 2, 3, 4, 5]; // inisialisasi variabel numbers bertipe List<int>
  print(ArrayHelper.getFirst<int>(numbers)); // mencetak nilai 1
  print(ArrayHelper.getLast<int>(numbers)); // mencetak nilai 5
  print(ArrayHelper.getN<int>(numbers, 2)); // mencetak nilai 3
  print(ArrayHelper.insert<int>(numbers, 6)); // mencetak nilai [1, 2, 3, 4, 5, 6]
  print(ArrayHelper.remove<int>(numbers, 6)); // mencetak nilai [1, 2, 3, 4, 5]
  print(ArrayHelper.removeAll<int>(numbers, [1, 2, 3])); // mencetak nilai [4, 5]
  print(ArrayHelper.count<int>(numbers, 4)); // mencetak nilai 1
  print(ArrayHelper.countList<int>(numbers)); // mencetak nilai 2
  print(ArrayHelper.getAll<int>(numbers)); // mencetak nilai [4, 5]
}
