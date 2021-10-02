import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampNullableConverter implements JsonConverter<DateTime?, String?> {
  const TimestampNullableConverter();

  @override
  DateTime? fromJson(String? json) =>
      json != null ? DateTime.parse(json) : null;

  @override
  String? toJson(DateTime? object) => object?.toString();
}
