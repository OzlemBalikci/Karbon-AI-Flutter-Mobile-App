// /// Tüm auth endpoint'lerinin ortak JSON zarfı.
// ///
// /// ```json
// /// { "isSuccess": true,  "data": <T> }
// /// { "isSuccess": false, "errors": ["Hata mesajı"] }
// /// ```
// ///
// /// Bu sınıf yalnızca veri taşır; exception fırlatmak
// /// [AuthRemoteImpl._unwrap] metodunun sorumluluğundadır.
// class ApiEnvelope<T> {
//   const ApiEnvelope({
//     required this.isSuccess,
//     required this.errors,
//     this.data,
//   });

//   final bool isSuccess;
//   final T? data;
//   final List<String> errors;

//   String? get firstError => errors.isEmpty ? null : errors.first;

//   factory ApiEnvelope.fromJson(
//     Map<String, dynamic> json, {
//     T? Function(dynamic raw)? parseData,
//   }) {
//     final rawErrors = json['errors'];
//     final errors = rawErrors is List
//         ? rawErrors.map((e) => e.toString()).toList()
//         : <String>[];
//     return ApiEnvelope<T>(
//       isSuccess: json['isSuccess'] == true,
//       data: parseData?.call(json['data']),
//       errors: errors,
//     );
//   }
// }
