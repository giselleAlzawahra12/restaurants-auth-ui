import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  FlutterSecureStorage storage = const FlutterSecureStorage();

  Future writeSecureData(String key, String value) async {
    return await storage.write(key: key, value: value);
  }

  Future readSecureData(String key) async {
    return await storage.read(key: key); //?? ''
  }

  Future deleteSecureData(String key) async {
    return await storage.delete(key: key); //?? ''
  }
}
