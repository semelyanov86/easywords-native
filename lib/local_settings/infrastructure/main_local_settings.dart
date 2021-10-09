import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:words_native/local_settings/infrastructure/secure_local_settings_storage.dart';

class MainLocalSettings {
  static const defaultHost = 'easywordsapp.ru';
  static String parseUrl(String uri) {
    final url = Uri.parse(uri);
    String address = '';
    if (url.hasScheme) {
      address += url.scheme;
    } else {
      address += 'https';
    }
    address += '://';
    address += url.host;
    if (url.hasPort) {
      address += ':${url.port}';
    }
    return address;
  }

  static Future<Uri?> getServerUrl() async {
    final repository = SecureLocalSettingsStorage(const FlutterSecureStorage());
    final String url = await repository
        .read()
        .then((settings) => settings?.server ?? 'https://easywordsapp.ru');
    return Uri.parse(url);
  }
}
