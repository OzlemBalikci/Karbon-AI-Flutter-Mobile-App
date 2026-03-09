// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoading() when loading != null:
        return loading(_that);
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case AuthFailure() when authFailure != null:
        return authFailure(_that);
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
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(AuthFailure value) authFailure,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoading():
        return loading(_that);
      case AuthAuthenticated():
        return authenticated(_that);
      case AuthUnauthenticated():
        return unauthenticated(_that);
      case AuthFailure():
        return authFailure(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(AuthFailure value)? authFailure,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoading() when loading != null:
        return loading(_that);
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case AuthFailure() when authFailure != null:
        return authFailure(_that);
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
    TResult Function()? loading,
    TResult Function(AppUser? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String? reason)? authFailure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoading() when loading != null:
        return loading();
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that.user);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated();
      case AuthFailure() when authFailure != null:
        return authFailure(_that.reason);
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
    required TResult Function() loading,
    required TResult Function(AppUser? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String? reason) authFailure,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoading():
        return loading();
      case AuthAuthenticated():
        return authenticated(_that.user);
      case AuthUnauthenticated():
        return unauthenticated();
      case AuthFailure():
        return authFailure(_that.reason);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String? reason)? authFailure,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoading() when loading != null:
        return loading();
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that.user);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated();
      case AuthFailure() when authFailure != null:
        return authFailure(_that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthLoading extends AuthState {
  const AuthLoading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.loading()';
  }
}

/// @nodoc

class AuthAuthenticated extends AuthState {
  const AuthAuthenticated({this.user}) : super._();

  final AppUser? user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith =>
      _$AuthAuthenticatedCopyWithImpl<AuthAuthenticated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthAuthenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthAuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(
          AuthAuthenticated value, $Res Function(AuthAuthenticated) _then) =
      _$AuthAuthenticatedCopyWithImpl;
  @useResult
  $Res call({AppUser? user});
}

/// @nodoc
class _$AuthAuthenticatedCopyWithImpl<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  _$AuthAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthAuthenticated _self;
  final $Res Function(AuthAuthenticated) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthAuthenticated(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }
}

/// @nodoc

class AuthFailure extends AuthState {
  const AuthFailure({this.reason}) : super._();

  final String? reason;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      _$AuthFailureCopyWithImpl<AuthFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthFailure &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString() {
    return 'AuthState.authFailure(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $AuthFailureCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) _then) =
      _$AuthFailureCopyWithImpl;
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._self, this._then);

  final AuthFailure _self;
  final $Res Function(AuthFailure) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(AuthFailure(
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
