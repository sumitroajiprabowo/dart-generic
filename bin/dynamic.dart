/// Dynamic Generic Type di Dart
/// Dynamic Generic Type digunakan ketika kita ingin membuat generic class atau generic function yang bisa menerima semua tipe data
/// Dynamic Generic Type di Dart menggunakan tanda tanya (?)
/// Dynamic Generic Type di Dart hanya bisa digunakan di generic class atau generic function
/// Perbedaan Dynamic Generic Type dengan dynamic biasa adalah dynamic generic type bisa digunakan untuk menentukan tipe data yang digunakan di generic class atau generic function
/// Dynamic Generic Type bisa digunakan untuk menentukan tipe data yang digunakan di generic class atau generic function
/// Perhatikan contoh berikut:

// example
// Dynamic Generic Type di generic class
class MyData<T> { // class MyData dengan 1 parameter T (T adalah tipe data yang akan digunakan ketika class MyData diinstansiasi)
  final T _data; // field _data dengan tipe data T

  MyData(this._data); // constructor dengan parameter _data bertipe data T

  T getData() { // method getData() yang mengembalikan nilai _data bertipe data T
    return _data; // mengembalikan nilai _data
  }
}

// example
// Dynamic Generic Type di generic function
void getData(MyData data){ // function getData() dengan 1 parameter data bertipe dynamic generic type
  print(data.getData()); // mencetak data.getData()
}


void main(){
  // example
  // Dynamic Generic Type di generic class
  var myData = MyData<String>('Hello World'); // instansiasi object myData dari class MyData dengan parameter String
  print(myData.getData()); // mencetak myData.getData()

  // example
  // Dynamic Generic Type di generic function
  getData(MyData<int>(10)); // memanggil function getData() dengan parameter MyData<int>(10)
  getData(MyData<double>(3.14)); // memanggil function getData() dengan parameter MyData<double>(3.14)
}