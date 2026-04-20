// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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
    TResult Function(AuthAppStarted value)? appStarted,
    TResult Function(AuthSessionCheckRequested value)? sessionCheckRequested,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthSignOutRequested value)? signOutRequested,
    TResult Function(AuthDeleteAccountRequested value)? deleteAccountRequested,
    TResult Function(AuthTokenExpired value)? tokenExpired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthAppStarted() when appStarted != null:
        return appStarted(_that);
      case AuthSessionCheckRequested() when sessionCheckRequested != null:
        return sessionCheckRequested(_that);
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case AuthRegistered() when registered != null:
        return registered(_that);
      case AuthSignOutRequested() when signOutRequested != null:
        return signOutRequested(_that);
      case AuthDeleteAccountRequested() when deleteAccountRequested != null:
        return deleteAccountRequested(_that);
      case AuthTokenExpired() when tokenExpired != null:
        return tokenExpired(_that);
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
    required TResult Function(AuthAppStarted value) appStarted,
    required TResult Function(AuthSessionCheckRequested value)
        sessionCheckRequested,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthSignOutRequested value) signOutRequested,
    required TResult Function(AuthDeleteAccountRequested value)
        deleteAccountRequested,
    required TResult Function(AuthTokenExpired value) tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case AuthAppStarted():
        return appStarted(_that);
      case AuthSessionCheckRequested():
        return sessionCheckRequested(_that);
      case AuthLoggedIn():
        return loggedIn(_that);
      case AuthRegistered():
        return registered(_that);
      case AuthSignOutRequested():
        return signOutRequested(_that);
      case AuthDeleteAccountRequested():
        return deleteAccountRequested(_that);
      case AuthTokenExpired():
        return tokenExpired(_that);
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
    TResult? Function(AuthAppStarted value)? appStarted,
    TResult? Function(AuthSessionCheckRequested value)? sessionCheckRequested,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthSignOutRequested value)? signOutRequested,
    TResult? Function(AuthDeleteAccountRequested value)? deleteAccountRequested,
    TResult? Function(AuthTokenExpired value)? tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case AuthAppStarted() when appStarted != null:
        return appStarted(_that);
      case AuthSessionCheckRequested() when sessionCheckRequested != null:
        return sessionCheckRequested(_that);
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case AuthRegistered() when registered != null:
        return registered(_that);
      case AuthSignOutRequested() when signOutRequested != null:
        return signOutRequested(_that);
      case AuthDeleteAccountRequested() when deleteAccountRequested != null:
        return deleteAccountRequested(_that);
      case AuthTokenExpired() when tokenExpired != null:
        return tokenExpired(_that);
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
    TResult Function()? appStarted,
    TResult Function()? sessionCheckRequested,
    TResult Function(AppUser user)? loggedIn,
    TResult Function(AppUser user)? registered,
    TResult Function()? signOutRequested,
    TResult Function()? deleteAccountRequested,
    TResult Function()? tokenExpired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthAppStarted() when appStarted != null:
        return appStarted();
      case AuthSessionCheckRequested() when sessionCheckRequested != null:
        return sessionCheckRequested();
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that.user);
      case AuthRegistered() when registered != null:
        return registered(_that.user);
      case AuthSignOutRequested() when signOutRequested != null:
        return signOutRequested();
      case AuthDeleteAccountRequested() when deleteAccountRequested != null:
        return deleteAccountRequested();
      case AuthTokenExpired() when tokenExpired != null:
        return tokenExpired();
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
    required TResult Function() appStarted,
    required TResult Function() sessionCheckRequested,
    required TResult Function(AppUser user) loggedIn,
    required TResult Function(AppUser user) registered,
    required TResult Function() signOutRequested,
    required TResult Function() deleteAccountRequested,
    required TResult Function() tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case AuthAppStarted():
        return appStarted();
      case AuthSessionCheckRequested():
        return sessionCheckRequested();
      case AuthLoggedIn():
        return loggedIn(_that.user);
      case AuthRegistered():
        return registered(_that.user);
      case AuthSignOutRequested():
        return signOutRequested();
      case AuthDeleteAccountRequested():
        return deleteAccountRequested();
      case AuthTokenExpired():
        return tokenExpired();
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
    TResult? Function()? appStarted,
    TResult? Function()? sessionCheckRequested,
    TResult? Function(AppUser user)? loggedIn,
    TResult? Function(AppUser user)? registered,
    TResult? Function()? signOutRequested,
    TResult? Function()? deleteAccountRequested,
    TResult? Function()? tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case AuthAppStarted() when appStarted != null:
        return appStarted();
      case AuthSessionCheckRequested() when sessionCheckRequested != null:
        return sessionCheckRequested();
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that.user);
      case AuthRegistered() when registered != null:
        return registered(_that.user);
      case AuthSignOutRequested() when signOutRequested != null:
        return signOutRequested();
      case AuthDeleteAccountRequested() when deleteAccountRequested != null:
        return deleteAccountRequested();
      case AuthTokenExpired() when tokenExpired != null:
        return tokenExpired();
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthAppStarted implements AuthEvent {
  const AuthAppStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthAppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.appStarted()';
  }
}

/// @nodoc

class AuthSessionCheckRequested implements AuthEvent {
  const AuthSessionCheckRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSessionCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.sessionCheckRequested()';
  }
}

/// @nodoc

class AuthLoggedIn implements AuthEvent {
  const AuthLoggedIn({required this.user});

  final AppUser user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      _$AuthLoggedInCopyWithImpl<AuthLoggedIn>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoggedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthEvent.loggedIn(user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthLoggedInCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthLoggedInCopyWith(
          AuthLoggedIn value, $Res Function(AuthLoggedIn) _then) =
      _$AuthLoggedInCopyWithImpl;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class _$AuthLoggedInCopyWithImpl<$Res> implements $AuthLoggedInCopyWith<$Res> {
  _$AuthLoggedInCopyWithImpl(this._self, this._then);

  final AuthLoggedIn _self;
  final $Res Function(AuthLoggedIn) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(AuthLoggedIn(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class AuthRegistered implements AuthEvent {
  const AuthRegistered({required this.user});

  final AppUser user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthRegisteredCopyWith<AuthRegistered> get copyWith =>
      _$AuthRegisteredCopyWithImpl<AuthRegistered>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthRegistered &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthEvent.registered(user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthRegisteredCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthRegisteredCopyWith(
          AuthRegistered value, $Res Function(AuthRegistered) _then) =
      _$AuthRegisteredCopyWithImpl;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class _$AuthRegisteredCopyWithImpl<$Res>
    implements $AuthRegisteredCopyWith<$Res> {
  _$AuthRegisteredCopyWithImpl(this._self, this._then);

  final AuthRegistered _self;
  final $Res Function(AuthRegistered) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(AuthRegistered(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class AuthSignOutRequested implements AuthEvent {
  const AuthSignOutRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthSignOutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.signOutRequested()';
  }
}

/// @nodoc

class AuthDeleteAccountRequested implements AuthEvent {
  const AuthDeleteAccountRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthDeleteAccountRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.deleteAccountRequested()';
  }
}

/// @nodoc

class AuthTokenExpired implements AuthEvent {
  const AuthTokenExpired();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthTokenExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.tokenExpired()';
  }
}

// dart format on
