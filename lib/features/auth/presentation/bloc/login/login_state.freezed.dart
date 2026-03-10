// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  LoginPageStatus get pagestatus;
  LoginResultStatus get resultStatus;
  bool get navigateToForgotPassword;
  String? get error;
  AppUser? get user;
  bool get obscurePassword;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.pagestatus, pagestatus) ||
                other.pagestatus == pagestatus) &&
            (identical(other.resultStatus, resultStatus) ||
                other.resultStatus == resultStatus) &&
            (identical(
                    other.navigateToForgotPassword, navigateToForgotPassword) ||
                other.navigateToForgotPassword == navigateToForgotPassword) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pagestatus, resultStatus,
      navigateToForgotPassword, error, user, obscurePassword);

  @override
  String toString() {
    return 'LoginState(pagestatus: $pagestatus, resultStatus: $resultStatus, navigateToForgotPassword: $navigateToForgotPassword, error: $error, user: $user, obscurePassword: $obscurePassword)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {LoginPageStatus pagestatus,
      LoginResultStatus resultStatus,
      bool navigateToForgotPassword,
      String? error,
      AppUser? user,
      bool obscurePassword});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagestatus = null,
    Object? resultStatus = null,
    Object? navigateToForgotPassword = null,
    Object? error = freezed,
    Object? user = freezed,
    Object? obscurePassword = null,
  }) {
    return _then(_self.copyWith(
      pagestatus: null == pagestatus
          ? _self.pagestatus
          : pagestatus // ignore: cast_nullable_to_non_nullable
              as LoginPageStatus,
      resultStatus: null == resultStatus
          ? _self.resultStatus
          : resultStatus // ignore: cast_nullable_to_non_nullable
              as LoginResultStatus,
      navigateToForgotPassword: null == navigateToForgotPassword
          ? _self.navigateToForgotPassword
          : navigateToForgotPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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
    TResult Function(_LoginState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
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
    TResult Function(_LoginState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState():
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
    TResult? Function(_LoginState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
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
            LoginPageStatus pagestatus,
            LoginResultStatus resultStatus,
            bool navigateToForgotPassword,
            String? error,
            AppUser? user,
            bool obscurePassword)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(
            _that.pagestatus,
            _that.resultStatus,
            _that.navigateToForgotPassword,
            _that.error,
            _that.user,
            _that.obscurePassword);
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
            LoginPageStatus pagestatus,
            LoginResultStatus resultStatus,
            bool navigateToForgotPassword,
            String? error,
            AppUser? user,
            bool obscurePassword)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState():
        return $default(
            _that.pagestatus,
            _that.resultStatus,
            _that.navigateToForgotPassword,
            _that.error,
            _that.user,
            _that.obscurePassword);
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
            LoginPageStatus pagestatus,
            LoginResultStatus resultStatus,
            bool navigateToForgotPassword,
            String? error,
            AppUser? user,
            bool obscurePassword)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(
            _that.pagestatus,
            _that.resultStatus,
            _that.navigateToForgotPassword,
            _that.error,
            _that.user,
            _that.obscurePassword);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoginState extends LoginState {
  const _LoginState(
      {this.pagestatus = LoginPageStatus.initial,
      this.resultStatus = LoginResultStatus.idle,
      this.navigateToForgotPassword = false,
      this.error,
      this.user,
      this.obscurePassword = true})
      : super._();

  @override
  @JsonKey()
  final LoginPageStatus pagestatus;
  @override
  @JsonKey()
  final LoginResultStatus resultStatus;
  @override
  @JsonKey()
  final bool navigateToForgotPassword;
  @override
  final String? error;
  @override
  final AppUser? user;
  @override
  @JsonKey()
  final bool obscurePassword;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.pagestatus, pagestatus) ||
                other.pagestatus == pagestatus) &&
            (identical(other.resultStatus, resultStatus) ||
                other.resultStatus == resultStatus) &&
            (identical(
                    other.navigateToForgotPassword, navigateToForgotPassword) ||
                other.navigateToForgotPassword == navigateToForgotPassword) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pagestatus, resultStatus,
      navigateToForgotPassword, error, user, obscurePassword);

  @override
  String toString() {
    return 'LoginState(pagestatus: $pagestatus, resultStatus: $resultStatus, navigateToForgotPassword: $navigateToForgotPassword, error: $error, user: $user, obscurePassword: $obscurePassword)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {LoginPageStatus pagestatus,
      LoginResultStatus resultStatus,
      bool navigateToForgotPassword,
      String? error,
      AppUser? user,
      bool obscurePassword});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pagestatus = null,
    Object? resultStatus = null,
    Object? navigateToForgotPassword = null,
    Object? error = freezed,
    Object? user = freezed,
    Object? obscurePassword = null,
  }) {
    return _then(_LoginState(
      pagestatus: null == pagestatus
          ? _self.pagestatus
          : pagestatus // ignore: cast_nullable_to_non_nullable
              as LoginPageStatus,
      resultStatus: null == resultStatus
          ? _self.resultStatus
          : resultStatus // ignore: cast_nullable_to_non_nullable
              as LoginResultStatus,
      navigateToForgotPassword: null == navigateToForgotPassword
          ? _self.navigateToForgotPassword
          : navigateToForgotPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
