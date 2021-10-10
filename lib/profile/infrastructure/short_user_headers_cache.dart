import 'package:sembast/sembast.dart';
import 'package:words_native/core/infrastructure/sembast_database.dart';
import 'package:words_native/core/infrastructure/server_headers.dart';

class ShortUserHeadersCache {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('short_user_headers');

  ShortUserHeadersCache(this._sembastDatabase);

  Future<void> saveHeaders(Uri uri, ServerHeaders headers) async {
    await _store.record(uri.toString()).put(
          _sembastDatabase.instance,
          headers.toJson(),
        );
  }

  Future<ServerHeaders?> getHeaders(Uri uri) async {
    final json =
        await _store.record(uri.toString()).get(_sembastDatabase.instance);
    return json == null ? null : ServerHeaders.fromJson(json);
  }

  Future<void> deleteHeaders(Uri url) async {
    await _store.record(url.toString()).delete(_sembastDatabase.instance);
  }
}
