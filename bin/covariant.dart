/// Covariant di Dart
/// Covariant digunakan ketika kita ingin membuat generic class atau generic function yang bisa menerima semua tipe data
/// Covariant di Dart menggunakan kata kunci covariant
/// Covariant di Dart hanya bisa digunakan di generic class atau generic function
/// Tidak semua tipe data bisa digunakan di covariant, hanya tipe data yang bisa digunakan di contravariant yang bisa digunakan di covariant
/// Hati hati ketika menggunakan covariant, karena bisa menyebabkan error
/// Perhatikan contoh berikut:

// example
// Covariant di generic class
class MyData<T> { // class MyData dengan 1 parameter T (T adalah tipe data yang akan digunakan ketika class MyData diinstansiasi)
  final T data; // field _data dengan tipe data T

  MyData(this.data); // constructor dengan parameter _data bertipe data T

  T getData() { // method getData() yang mengembalikan nilai _data bertipe data T
    return data; // mengembalikan nilai _data
  }
}


void main() {
  // example covariant di generic class
  var myData = MyData<String>('Hello World'); // instansiasi object myData dari class MyData dengan parameter String
  print(myData.getData()); // mencetak myData.getData()

  // example covariant with error type is not subtype of type
  // var myData2 = MyData<int>(10); // instansiasi object myData dari class MyData dengan parameter int
  // print(myData2.getData()); // mencetak myData.getData()
}