//Backendden gelen standart api responseunu (zarf/envelope) Flutter tarafında tek bir Model altında toplar.
// errors listesinde nullCheck yapıp, ApiError'ları listeye çevirir.
import 'package:karbon/core/errors/api_error.dart';

class ApiEnvelope {
  const ApiEnvelope({
    required this.isSuccessful,
    required this.statusCode,
    this.data,
    this.errors = const [],
  });

  final bool isSuccessful;
  final int statusCode;
  final dynamic data;
  final List<ApiError> errors;

  factory ApiEnvelope.fromJson(Map<String, dynamic> json) => ApiEnvelope(
        isSuccessful: json['isSuccessful'] as bool? ?? false,
        statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
        data: json['data'],
        errors: (json['errors'] as List?)
                ?.whereType<Map<String, dynamic>>()
                .map(ApiError.fromJson)
                .toList() ??
            [],
      );
}
