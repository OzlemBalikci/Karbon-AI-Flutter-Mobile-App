class ApiError {
  const ApiError({
    required this.code,
    required this.type,
    required this.message,
    required this.isShow,
  });

  final int code;
  final String type;
  final String message;
  final bool isShow;
  factory ApiError.fromJson(Map<String, dynamic> json) => ApiError(
        code: (json['code'] as num?)?.toInt() ?? 0,
        type: json['type'] as String? ?? '',
        message: json['message'] as String? ?? '',
        isShow: json['isShow'] as bool? ?? false,
      );

  @override
  String toString() => 'ApiError($code · $type): $message';
}
