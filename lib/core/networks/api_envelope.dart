import 'package:karbon/core/errors/exceptions.dart';

/// API zarfı: `isSuccessful` (daily-activities vb.) veya `isSuccess` (diğer uçlar).
bool isApiEnvelopeSuccessful(Map<String, dynamic> envelope) {
  if (envelope['isSuccessful'] == true) return true;
  if (envelope['isSuccess'] == true) return true;
  return false;
}

void assertApiSuccess(Map<String, dynamic> envelope) {
  if (isApiEnvelopeSuccessful(envelope)) return;
  final errors = envelope['errors'];
  final msg = (errors is List && errors.isNotEmpty)
      ? errors.first.toString()
      : 'İstek başarısız oldu.';
  throw BadRequestException(msg, statusCode: 400);
}

/// Başarılı yanıtta `data` alanını [Map] olarak döner; `data` yoksa boş map.
Map<String, dynamic> unwrapDataMap(dynamic response) {
  final envelope = response as Map<String, dynamic>;
  assertApiSuccess(envelope);
  final data = envelope['data'];
  if (data == null) return <String, dynamic>{};
  return Map<String, dynamic>.from(data as Map);
}

/// Başarılı yanıtta `data` alanını [List] olarak döner; liste değilse boş liste.
List<dynamic> unwrapDataList(dynamic response) {
  final envelope = response as Map<String, dynamic>;
  assertApiSuccess(envelope);
  final data = envelope['data'];
  if (data is! List) return <dynamic>[];
  return data;
}
