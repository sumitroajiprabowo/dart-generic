import 'covariant.dart';

/// Type Checking di Dart
/// Type Checking adalah proses pengecekan tipe data yang digunakan di generic class atau generic function
/// Type Checking di Dart menggunakan kata kunci is
/// Type Checking di Dart hanya bisa digunakan di generic class atau generic function
/// Perhatikan contoh berikut:

// example
void check(dynamic){
  if(dynamic is String){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('String');
  } else if(dynamic is int){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('int');
  } else if(dynamic is double){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('double');
  } else if(dynamic is bool){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('bool');
  } else if(dynamic is List){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('List');
  } else if(dynamic is Map){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('Map');
  } else if(dynamic is Set){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('Set');
  } else if(dynamic is MyData){ // pengecekan tipe data yang digunakan di dynamic menggunakan kata kunci is
    print('MyData');
  } else {
    print('Unknown');
  }
}

void main(){
  // example
  check('Hello World'); // memanggil function check() dengan parameter 'Hello World'
  check(10); // memanggil function check() dengan parameter 10
  check(3.14); // memanggil function check() dengan parameter 3.14
  check(true); // memanggil function check() dengan parameter true
  check([1, 2, 3]); // memanggil function check() dengan parameter [1, 2, 3]
  check({1, 2, 3}); // memanggil function check() dengan parameter {1, 2, 3}
  check({'name': 'Dart'}); // memanggil function check() dengan parameter {'name': 'Dart'}
  check(MyData<String>('Hello World')); // memanggil function check() dengan parameter MyData<String>('Hello World')
}