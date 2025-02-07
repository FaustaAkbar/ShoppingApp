import 'package:get_storage/get_storage.dart';

class FLocalStrorage {
  static final FLocalStrorage _instance = FLocalStrorage._internal();

  factory FLocalStrorage() {
    return _instance;
  }

  FLocalStrorage._internal();

  final _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic metod to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
