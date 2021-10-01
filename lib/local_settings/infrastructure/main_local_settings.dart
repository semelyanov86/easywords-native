class MainLocalSettings {
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
}
