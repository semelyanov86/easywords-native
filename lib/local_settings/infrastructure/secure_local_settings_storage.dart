import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:words_native/local_settings/domain/local_settings_model.dart';
import 'package:words_native/local_settings/infrastructure/local_settings_storage.dart';

class SecureLocalSettingsStorage implements LocalSettingsStorage {
  final FlutterSecureStorage _storage;

  SecureLocalSettingsStorage(this._storage);

  static const _key = 'local_settings';

  LocalSettingsModel? _cachedSettings;

  @override
  Future<LocalSettingsModel?> read() async {
    if (_cachedSettings != null) {
      return _cachedSettings;
    }
    final json = await _storage.read(key: _key);
    if (json == null) {
      return null;
    }
    final Map<String, dynamic> decodedResult =
        jsonDecode(json) as Map<String, dynamic>;
    try {
      return _cachedSettings = LocalSettingsModel.fromJson(decodedResult);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(LocalSettingsModel settings) {
    _cachedSettings = settings;
    return _storage.write(key: _key, value: jsonEncode(settings.toJson()));
  }

  @override
  Future<void> clear() {
    _cachedSettings = null;
    return _storage.delete(key: _key);
  }
}
