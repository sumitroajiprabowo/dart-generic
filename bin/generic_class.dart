/// Generic Class di Dart
/// Generic Class adalah class yang memungkinkan kita untuk menentukan tipe data yang akan digunakan ketika class tersebut diinstansiasi
/// Generic Class biasanya digunakan untuk membuat class yang dapat digunakan untuk berbagai macam tipe data
/// Ada 2 cara untuk membuat Generic Class di Dart, yaitu:
/// 1. Generic Class dengan 1 parameter
/// 2. Generic Class dengan banyak parameter
///
/// Nama generic class biasanya menggunakan huruf T,K, N, E, U, V, dan seterusnya
/// Tidak harus menggunakan huruf T, U, V, dan seterusnya, tetapi lebih baik menggunakan huruf tersebut agar mudah dibaca
/// T adalah singkatan dari Type
/// K adalah singkatan dari Key
/// E adalah singkatan dari Element
/// N adalah singkatan dari Number
/// V adalah singkatan dari Value
/// S adalah singkatan dari State
/// R adalah singkatan dari Result

// example generic class with 1 parameter T
class MyData<T> { // class MyData dengan 1 parameter T (T adalah tipe data yang akan digunakan ketika class MyData diinstansiasi)
  final T _data; // field _data dengan tipe data T

  MyData(this._data); // constructor dengan parameter _data bertipe data T

  T getData() { // method getData() yang mengembalikan nilai _data bertipe data T
    return _data; // mengembalikan nilai _data
  }
}

// example
// Generic Class dengan 1 parameter
class Cache<T> { // class Cache dengan 1 parameter T (T adalah tipe data yang akan digunakan ketika class Cache diinstansiasi)
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

/*
class MapCache dengan 2 parameter K dan V (K dan V adalah tipe data yang akan digunakan ketika class MapCache diinstansiasi)
K adalah tipe data untuk key
V adalah tipe data untuk value
 */

// example
// Generic Class dengan banyak parameter
class MapCache<K, V> { // class MapCache dengan 2 parameter K dan V (K dan V adalah tipe data yang akan digunakan ketika class MapCache diinstansiasi)
  final Map<K, V> _cache = {}; // field _cache bertipe Map<K, V>

  void setCache(K key, V value) { // method setCache() dengan parameter key bertipe data K dan value bertipe data V
    _cache[key] = value; // menambahkan key dan value ke dalam _cache
  }

  V? getCache(K key) { // method getCache() dengan parameter key bertipe data K dan mengembalikan nilai _cache[key] bertipe data V
    return _cache[key]; // mengembalikan nilai _cache[key]
  }

  Map<K, V> getAll() { // method getAll() yang mengembalikan nilai _cache bertipe Map<K, V>
    return _cache; // mengembalikan nilai _cache
  }

  void removeAll() { // method removeAll() yang menghapus semua data di dalam _cache
    _cache.clear(); // menghapus semua data di dalam _cache
  }

  void removeCache(K key) { // method removeCache() dengan parameter key bertipe data K
    _cache.remove(key); // menghapus data dengan key tertentu di dalam _cache
  }

  void showCache() { // method showCache() yang menampilkan semua data di dalam _cache
    _cache.forEach((key, value) { // perulangan untuk menampilkan semua data di dalam _cache
      print('$key : $value'); // menampilkan data key dan value
    });
  }

}


void main(){

  // Generic Class menggunakan class MyData yang sudah dibuat sebelumnya
  var myDataInt = MyData<int>(1); // inisialisasi generic class dengan tipe data int
  var myDataString = MyData<String>('Dart'); // inisialisasi generic class dengan tipe data String
  var myDataDouble = MyData<double>(3.14); // inisialisasi generic class dengan tipe data double
  var myDataBool = MyData<bool>(true); // inisialisasi generic class dengan tipe data bool
  var myDataList = MyData<List>([1, 2, 3]); // inisialisasi generic class dengan tipe data List
  var myDataSet = MyData<Set>({1, 2, 3}); // inisialisasi generic class dengan tipe data Set
  var myDataMap = MyData<Map>({1: 'Dart', 2: 'Flutter', 3: 'Java'}); // inisialisasi generic class dengan tipe data Map
  var myDataMyData = MyData<MyData>(myDataInt); // inisialisasi generic class dengan tipe data MyData
  var myDataFunction = MyData<Function>(() => print('Hello World')); // inisialisasi generic class dengan tipe data Function
  var myDataObject = MyData<Object>(1); // inisialisasi generic class dengan tipe data Object
  print(myDataInt.getData()); // memanggil method getData() dari myDataInt
  print(myDataString.getData()); // memanggil method getData() dari myDataString
  print(myDataDouble.getData()); // memanggil method getData() dari myDataDouble
  print(myDataBool.getData()); // memanggil method getData() dari myDataBool
  print(myDataList.getData()); // memanggil method getData() dari myDataList
  print(myDataSet.getData()); // memanggil method getData() dari myDataSet
  print(myDataMap.getData()); // memanggil method getData() dari myDataMap
  print(myDataMyData.getData()); // memanggil method getData() dari myDataMyData
  print(myDataFunction.getData()); // memanggil method getData() dari myDataFunction
  print(myDataObject.getData()); // memanggil method getData() dari myDataObject

  print('=====================');

  // Generic Class dengan 1 parameter
  var cache = Cache<int>(); // inisialisasi generic class dengan tipe data int
  cache.insert(1); // insert data 1
  cache.insert(2); // insert data 2
  cache.insert(3); // insert data 3
  cache.insert(4); // insert data 4
  cache.insert(5); // insert data 5
  cache.remove(1); // remove data 1
  print(cache.getAll()); // [2, 3, 4, 5]

  print('=====================');

  // Generic Class dengan banyak parameter
  var mapCache = MapCache<String, int>(); // inisialisasi generic class dengan tipe data String dan int
  mapCache.setCache('first', 1); // set data key 'first' dan value 1
  mapCache.setCache('second', 2); // set data key 'second' dan value 2
  mapCache.setCache('third', 3); // set data key 'third' dan value 3
  mapCache.setCache('fourth', 4); // set data key 'fourth' dan value 4
  mapCache.setCache('fifth', 5); // set data key 'fifth' dan value 5
  mapCache.removeCache('first'); // remove data dengan key 'first'
  mapCache.showCache(); // menampilkan semua data di dalam _cache (key dan value) dengan method showCache()
  print(mapCache.getAll()); // {second: 2, third: 3, fourth: 4, fifth: 5}
}

