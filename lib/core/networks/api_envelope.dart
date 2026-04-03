import 'package:karbon/core/errors/exceptions.dart';

/// `{ isSuccess, data, errors }` API zarfı.
void assertApiSuccess(Map<String, dynamic> envelope) {
  if (envelope['isSuccess'] == true) return;
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
