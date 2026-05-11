import 'package:dio/dio.dart';

extension ResponseDataX on Response {
  List<Map<String, dynamic>> dataList() {
    final d = data;
    if (d == null) return const [];
    if (d is! List) {
      throw DioException(
        requestOptions: requestOptions,
        message: 'dataList: Liste bekleniyor, gelen → ${d.runtimeType}',
      );
    }
    return d.whereType<Map<String, dynamic>>().toList();
  }

  Map<String, dynamic> dataMap() {
    final d = data;
    if (d is! Map<String, dynamic>) {
      throw DioException(
        requestOptions: requestOptions,
        message: 'dataMap: Map bekleniyor, gelen → ${d.runtimeType}',
      );
    }
    return d;
  }
}
