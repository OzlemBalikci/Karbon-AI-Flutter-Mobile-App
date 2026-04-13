class TokenResponseDto {
  final String accessToken;
  final String refreshToken;
  final String tokenType;
  final int expiresIn;

  TokenResponseDto({
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
    required this.expiresIn,
  });

  factory TokenResponseDto.fromJson(Map<String, dynamic> json) {
    final data = json["data"];

    return TokenResponseDto(
      accessToken: data["accessToken"],
      refreshToken: data["refreshToken"],
      tokenType: data["tokenType"],
      expiresIn: data["expiresIn"],
    );
  }
}
