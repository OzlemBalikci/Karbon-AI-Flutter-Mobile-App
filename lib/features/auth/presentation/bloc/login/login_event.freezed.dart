// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent()';
  }
}

/// @nodoc
class $LoginEventCopyWith<$Res> {
  $LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}

/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginPageStarted value)? pageStarted,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(LoginTogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult Function(LoginForgotPasswordPressed value)? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginPageStarted() when pageStarted != null:
        return pageStarted(_that);
      case LoginButtonPressed() when loginButtonPressed != null:
        return loginButtonPressed(_that);
      case LoginTogglePasswordVisibility()
          when togglePasswordVisibility != null:
        return togglePasswordVisibility(_that);
      case LoginForgotPasswordPressed() when forgotPasswordPressed != null:
        return forgotPasswordPressed(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(LoginPageStarted value) pageStarted,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(LoginTogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(LoginForgotPasswordPressed value)
        forgotPasswordPressed,
  }) {
    final _that = this;
    switch (_that) {
      case LoginPageStarted():
        return pageStarted(_that);
      case LoginButtonPressed():
        return loginButtonPressed(_that);
      case LoginTogglePasswordVisibility():
        return togglePasswordVisibility(_that);
      case LoginForgotPasswordPressed():
        return forgotPasswordPressed(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginPageStarted value)? pageStarted,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(LoginTogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(LoginForgotPasswordPressed value)? forgotPasswordPressed,
  }) {
    final _that = this;
    switch (_that) {
      case LoginPageStarted() when pageStarted != null:
        return pageStarted(_that);
      case LoginButtonPressed() when loginButtonPressed != null:
        return loginButtonPressed(_that);
      case LoginTogglePasswordVisibility()
          when togglePasswordVisibility != null:
        return togglePasswordVisibility(_that);
      case LoginForgotPasswordPressed() when forgotPasswordPressed != null:
        return forgotPasswordPressed(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageStarted,
    TResult Function(String emailOrIdentityNumber, String password)?
        loginButtonPressed,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginPageStarted() when pageStarted != null:
        return pageStarted();
      case LoginButtonPressed() when loginButtonPressed != null:
        return loginButtonPressed(_that.emailOrIdentityNumber, _that.password);
      case LoginTogglePasswordVisibility()
          when togglePasswordVisibility != null:
        return togglePasswordVisibility();
      case LoginForgotPasswordPressed() when forgotPasswordPressed != null:
        return forgotPasswordPressed();
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
  TResult when<TResult extends Object?>({
    required TResult Function() pageStarted,
    required TResult Function(String emailOrIdentityNumber, String password)
        loginButtonPressed,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() forgotPasswordPressed,
  }) {
    final _that = this;
    switch (_that) {
      case LoginPageStarted():
        return pageStarted();
      case LoginButtonPressed():
        return loginButtonPressed(_that.emailOrIdentityNumber, _that.password);
      case LoginTogglePasswordVisibility():
        return togglePasswordVisibility();
      case LoginForgotPasswordPressed():
        return forgotPasswordPressed();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageStarted,
    TResult? Function(String emailOrIdentityNumber, String password)?
        loginButtonPressed,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? forgotPasswordPressed,
  }) {
    final _that = this;
    switch (_that) {
      case LoginPageStarted() when pageStarted != null:
        return pageStarted();
      case LoginButtonPressed() when loginButtonPressed != null:
        return loginButtonPressed(_that.emailOrIdentityNumber, _that.password);
      case LoginTogglePasswordVisibility()
          when togglePasswordVisibility != null:
        return togglePasswordVisibility();
      case LoginForgotPasswordPressed() when forgotPasswordPressed != null:
        return forgotPasswordPressed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoginPageStarted implements LoginEvent {
  const LoginPageStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPageStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.pageStarted()';
  }
}

/// @nodoc

class LoginButtonPressed implements LoginEvent {
  const LoginButtonPressed(
      {required this.emailOrIdentityNumber, required this.password});

  final String emailOrIdentityNumber;
  final String password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginButtonPressedCopyWith<LoginButtonPressed> get copyWith =>
      _$LoginButtonPressedCopyWithImpl<LoginButtonPressed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginButtonPressed &&
            (identical(other.emailOrIdentityNumber, emailOrIdentityNumber) ||
                other.emailOrIdentityNumber == emailOrIdentityNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailOrIdentityNumber, password);

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed(emailOrIdentityNumber: $emailOrIdentityNumber, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginButtonPressedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $LoginButtonPressedCopyWith(
          LoginButtonPressed value, $Res Function(LoginButtonPressed) _then) =
      _$LoginButtonPressedCopyWithImpl;
  @useResult
  $Res call({String emailOrIdentityNumber, String password});
}

/// @nodoc
class _$LoginButtonPressedCopyWithImpl<$Res>
    implements $LoginButtonPressedCopyWith<$Res> {
  _$LoginButtonPressedCopyWithImpl(this._self, this._then);

  final LoginButtonPressed _self;
  final $Res Function(LoginButtonPressed) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emailOrIdentityNumber = null,
    Object? password = null,
  }) {
    return _then(LoginButtonPressed(
      emailOrIdentityNumber: null == emailOrIdentityNumber
          ? _self.emailOrIdentityNumber
          : emailOrIdentityNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginTogglePasswordVisibility implements LoginEvent {
  const LoginTogglePasswordVisibility();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginTogglePasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.togglePasswordVisibility()';
  }
}

/// @nodoc

class LoginForgotPasswordPressed implements LoginEvent {
  const LoginForgotPasswordPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginForgotPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.forgotPasswordPressed()';
  }
}

// dart format on
