import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_creation_response.freezed.dart';

@freezed
class RemoteCreationResponse<T> with _$RemoteCreationResponse<T> {
  const RemoteCreationResponse._();
  const factory RemoteCreationResponse.noConnection() = _NoConnection<T>;
  const factory RemoteCreationResponse.validationError(
      {required String message}) = _ValidationError<T>;
  const factory RemoteCreationResponse.created(T data) = _Created<T>;
}
