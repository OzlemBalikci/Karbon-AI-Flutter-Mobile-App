// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resetpassword_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordState {
  ResetPasswordPageStatus get status;
  String get resetCode;
  String get newPassword;
  String get confirmNewPassword;
  bool get isRateLimited;
  String get rateLimitMessage;
  String? get resetCodeError;
  String? get newPasswordError;
  String? get error;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      _$ResetPasswordStateCopyWithImpl<ResetPasswordState>(
          this as ResetPasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resetCode, resetCode) ||
                other.resetCode == resetCode) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                other.confirmNewPassword == confirmNewPassword) &&
            (identical(other.isRateLimited, isRateLimited) ||
                other.isRateLimited == isRateLimited) &&
            (identical(other.rateLimitMessage, rateLimitMessage) ||
                other.rateLimitMessage == rateLimitMessage) &&
            (identical(other.resetCodeError, resetCodeError) ||
                other.resetCodeError == resetCodeError) &&
            (identical(other.newPasswordError, newPasswordError) ||
                other.newPasswordError == newPasswordError) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      resetCode,
      newPassword,
      confirmNewPassword,
      isRateLimited,
      rateLimitMessage,
      resetCodeError,
      newPasswordError,
      error);

  @override
  String toString() {
    return 'ResetPasswordState(status: $status, resetCode: $resetCode, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, isRateLimited: $isRateLimited, rateLimitMessage: $rateLimitMessage, resetCodeError: $resetCodeError, newPasswordError: $newPasswordError, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) _then) =
      _$ResetPasswordStateCopyWithImpl;
  @useResult
  $Res call(
      {ResetPasswordPageStatus status,
      String resetCode,
      String newPassword,
      String confirmNewPassword,
      bool isRateLimited,
      String rateLimitMessage,
      String? resetCodeError,
      String? newPasswordError,
      String? error});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final ResetPasswordState _self;
  final $Res Function(ResetPasswordState) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? resetCode = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? isRateLimited = null,
    Object? rateLimitMessage = null,
    Object? resetCodeError = freezed,
    Object? newPasswordError = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPasswordPageStatus,
      resetCode: null == resetCode
          ? _self.resetCode
          : resetCode // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPassword: null == confirmNewPassword
          ? _self.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isRateLimited: null == isRateLimited
          ? _self.isRateLimited
          : isRateLimited // ignore: cast_nullable_to_non_nullable
              as bool,
      rateLimitMessage: null == rateLimitMessage
          ? _self.rateLimitMessage
          : rateLimitMessage // ignore: cast_nullable_to_non_nullable
              as String,
      resetCodeError: freezed == resetCodeError
          ? _self.resetCodeError
          : resetCodeError // ignore: cast_nullable_to_non_nullable
              as String?,
      newPasswordError: freezed == newPasswordError
          ? _self.newPasswordError
          : newPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResetPasswordState].
extension ResetPasswordStatePatterns on ResetPasswordState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResetPasswordState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResetPasswordState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResetPasswordState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ResetPasswordPageStatus status,
            String resetCode,
            String newPassword,
            String confirmNewPassword,
            bool isRateLimited,
            String rateLimitMessage,
            String? resetCodeError,
            String? newPasswordError,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
        return $default(
            _that.status,
            _that.resetCode,
            _that.newPassword,
            _that.confirmNewPassword,
            _that.isRateLimited,
            _that.rateLimitMessage,
            _that.resetCodeError,
            _that.newPasswordError,
            _that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ResetPasswordPageStatus status,
            String resetCode,
            String newPassword,
            String confirmNewPassword,
            bool isRateLimited,
            String rateLimitMessage,
            String? resetCodeError,
            String? newPasswordError,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState():
        return $default(
            _that.status,
            _that.resetCode,
            _that.newPassword,
            _that.confirmNewPassword,
            _that.isRateLimited,
            _that.rateLimitMessage,
            _that.resetCodeError,
            _that.newPasswordError,
            _that.error);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ResetPasswordPageStatus status,
            String resetCode,
            String newPassword,
            String confirmNewPassword,
            bool isRateLimited,
            String rateLimitMessage,
            String? resetCodeError,
            String? newPasswordError,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
        return $default(
            _that.status,
            _that.resetCode,
            _that.newPassword,
            _that.confirmNewPassword,
            _that.isRateLimited,
            _that.rateLimitMessage,
            _that.resetCodeError,
            _that.newPasswordError,
            _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ResetPasswordState extends ResetPasswordState {
  const _ResetPasswordState(
      {this.status = ResetPasswordPageStatus.initial,
      this.resetCode = '',
      this.newPassword = '',
      this.confirmNewPassword = '',
      this.isRateLimited = false,
      this.rateLimitMessage = '',
      this.resetCodeError,
      this.newPasswordError,
      this.error})
      : super._();

  @override
  @JsonKey()
  final ResetPasswordPageStatus status;
  @override
  @JsonKey()
  final String resetCode;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String confirmNewPassword;
  @override
  @JsonKey()
  final bool isRateLimited;
  @override
  @JsonKey()
  final String rateLimitMessage;
  @override
  final String? resetCodeError;
  @override
  final String? newPasswordError;
  @override
  final String? error;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resetCode, resetCode) ||
                other.resetCode == resetCode) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                other.confirmNewPassword == confirmNewPassword) &&
            (identical(other.isRateLimited, isRateLimited) ||
                other.isRateLimited == isRateLimited) &&
            (identical(other.rateLimitMessage, rateLimitMessage) ||
                other.rateLimitMessage == rateLimitMessage) &&
            (identical(other.resetCodeError, resetCodeError) ||
                other.resetCodeError == resetCodeError) &&
            (identical(other.newPasswordError, newPasswordError) ||
                other.newPasswordError == newPasswordError) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      resetCode,
      newPassword,
      confirmNewPassword,
      isRateLimited,
      rateLimitMessage,
      resetCodeError,
      newPasswordError,
      error);

  @override
  String toString() {
    return 'ResetPasswordState(status: $status, resetCode: $resetCode, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, isRateLimited: $isRateLimited, rateLimitMessage: $rateLimitMessage, resetCodeError: $resetCodeError, newPasswordError: $newPasswordError, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(
          _ResetPasswordState value, $Res Function(_ResetPasswordState) _then) =
      __$ResetPasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ResetPasswordPageStatus status,
      String resetCode,
      String newPassword,
      String confirmNewPassword,
      bool isRateLimited,
      String rateLimitMessage,
      String? resetCodeError,
      String? newPasswordError,
      String? error});
}

/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final _ResetPasswordState _self;
  final $Res Function(_ResetPasswordState) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? resetCode = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? isRateLimited = null,
    Object? rateLimitMessage = null,
    Object? resetCodeError = freezed,
    Object? newPasswordError = freezed,
    Object? error = freezed,
  }) {
    return _then(_ResetPasswordState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPasswordPageStatus,
      resetCode: null == resetCode
          ? _self.resetCode
          : resetCode // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPassword: null == confirmNewPassword
          ? _self.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isRateLimited: null == isRateLimited
          ? _self.isRateLimited
          : isRateLimited // ignore: cast_nullable_to_non_nullable
              as bool,
      rateLimitMessage: null == rateLimitMessage
          ? _self.rateLimitMessage
          : rateLimitMessage // ignore: cast_nullable_to_non_nullable
              as String,
      resetCodeError: freezed == resetCodeError
          ? _self.resetCodeError
          : resetCodeError // ignore: cast_nullable_to_non_nullable
              as String?,
      newPasswordError: freezed == newPasswordError
          ? _self.newPasswordError
          : newPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
