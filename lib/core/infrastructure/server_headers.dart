import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_headers.freezed.dart';
part 'server_headers.g.dart';

@freezed
class ServerHeaders with _$ServerHeaders {
  const ServerHeaders._();
  const factory ServerHeaders({
    String? etag,
    int? last_page,
  }) = _ServerHeaders;

  factory ServerHeaders.parse(Response response) {
    return ServerHeaders(
        etag: response.headers.map['ETag']?[0],
        last_page: response.data?['meta']?['last_page'] as int?);
  }

  factory ServerHeaders.fromJson(Map<String, dynamic> json) =>
      _$ServerHeadersFromJson(json);
}
