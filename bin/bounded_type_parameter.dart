/// Bounded type parameter di Dart
/// Bounded type parameter digunakan untuk membatasi tipe data yang bisa digunakan di generic class atau generic function
/// Bounded type parameter bisa digunakan di generic class maupun di generic function
/// Bounded type parameter bisa digunakan untuk membatasi tipe data yang bisa digunakan di generic class atau generic function

// example
// Bounded type parameter di generic class
class StringData<T extends String> { // class StringData dengan 1 parameter T yang merupakan tipe data yang bisa digunakan di class StringData adalah String
  final T _data; // field _data bertipe data T

  StringData(this._data); // constructor dengan parameter _data bertipe data T

  T getData() { // method getData() yang mengembalikan nilai _data bertipe data T
    return _data; // mengembalikan nilai _data
  }
}

// example
// Bounded type parameter di generic function
T getData<T extends num>(T value) { // function getData() dengan 1 parameter value bertipe data T yang merupakan tipe data yang bisa digunakan di function getData adalah num dan mengembalikan nilai value bertipe data T
  return value; // mengembalikan nilai value
}

// example
// Bounded type parameter di generic class
class Cache<T extends num> { // class Cache dengan 1 parameter T yang merupakan tipe data yang bisa digunakan di class Cache adalah num
  final List<T> _cachedItems = []; // field _cachedItems bertipe List<T>

  void insert(T item) { // method insert() dengan parameter item bertipe data T
    _cachedItems.add(item); // menambahkan item ke dalam _cachedItems
  }

  void remove(T item) { // method remove() dengan parameter item bertipe data T
    _cachedItems.remove(item); // menghapus item dari _cachedItems
  }

  List<T> getAll() { // method getAll() yang mengembalikan nilai _cachedItems bertipe List<T>
    return _cachedItems; // mengembalikan nilai _cachedItems
  }
}


void main(){
  // example
  // Bounded type parameter di generic class
  var stringData = StringData<String>('Hello World'); // instansiasi object stringData dari class StringData dengan parameter String
  print(stringData.getData()); // mencetak stringData.getData()

  // example
  // Bounded type parameter di generic function
  print(getData<int>(10)); // mencetak getData<int>(10)
  print(getData<double>(3.14)); // mencetak getData<double>(3.14)

  // example
  // Bounded type parameter di generic class
  var cache = Cache<int>(); // instansiasi object cache dari class Cache dengan parameter int
  cache.insert(10); // memanggil method insert() dari object cache
  cache.insert(20); // memanggil method insert() dari object cache
  cache.insert(30); // memanggil method insert() dari object cache
  print(cache.getAll()); // mencetak cache.getAll()
}