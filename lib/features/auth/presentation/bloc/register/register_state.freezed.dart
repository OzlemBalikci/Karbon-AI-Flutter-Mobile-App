// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterState {
  RegisterPageStatus get status;
  String get email;
  String get identityNumber;
  String get firstName;
  String get lastName;
  String get birthDate;
  String get password;
  String get confirmPassword;
  String get phoneNumber;
  bool get kvkkApproved;
  String? get emailError;
  String? get identityNumberError;
  String? get passwordError;
  String? get confirmPasswordError;
  String? get phoneNumberError;
  String? get error;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      _$RegisterStateCopyWithImpl<RegisterState>(
          this as RegisterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.kvkkApproved, kvkkApproved) ||
                other.kvkkApproved == kvkkApproved) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.identityNumberError, identityNumberError) ||
                other.identityNumberError == identityNumberError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.confirmPasswordError, confirmPasswordError) ||
                other.confirmPasswordError == confirmPasswordError) &&
            (identical(other.phoneNumberError, phoneNumberError) ||
                other.phoneNumberError == phoneNumberError) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      email,
      identityNumber,
      firstName,
      lastName,
      birthDate,
      password,
      confirmPassword,
      phoneNumber,
      kvkkApproved,
      emailError,
      identityNumberError,
      passwordError,
      confirmPasswordError,
      phoneNumberError,
      error);

  @override
  String toString() {
    return 'RegisterState(status: $status, email: $email, identityNumber: $identityNumber, firstName: $firstName, lastName: $lastName, birthDate: $birthDate, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, kvkkApproved: $kvkkApproved, emailError: $emailError, identityNumberError: $identityNumberError, passwordError: $passwordError, confirmPasswordError: $confirmPasswordError, phoneNumberError: $phoneNumberError, error: $error)';
  }
}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) _then) =
      _$RegisterStateCopyWithImpl;
  @useResult
  $Res call(
      {RegisterPageStatus status,
      String email,
      String identityNumber,
      String firstName,
      String lastName,
      String birthDate,
      String password,
      String confirmPassword,
      String phoneNumber,
      bool kvkkApproved,
      String? emailError,
      String? identityNumberError,
      String? passwordError,
      String? confirmPasswordError,
      String? phoneNumberError,
      String? error});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? identityNumber = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthDate = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? phoneNumber = null,
    Object? kvkkApproved = null,
    Object? emailError = freezed,
    Object? identityNumberError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? phoneNumberError = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterPageStatus,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      identityNumber: null == identityNumber
          ? _self.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      kvkkApproved: null == kvkkApproved
          ? _self.kvkkApproved
          : kvkkApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: freezed == emailError
          ? _self.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNumberError: freezed == identityNumberError
          ? _self.identityNumberError
          : identityNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _self.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _self.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberError: freezed == phoneNumberError
          ? _self.phoneNumberError
          : phoneNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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
    TResult Function(_RegisterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
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
    TResult Function(_RegisterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState():
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
    TResult? Function(_RegisterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
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
            RegisterPageStatus status,
            String email,
            String identityNumber,
            String firstName,
            String lastName,
            String birthDate,
            String password,
            String confirmPassword,
            String phoneNumber,
            bool kvkkApproved,
            String? emailError,
            String? identityNumberError,
            String? passwordError,
            String? confirmPasswordError,
            String? phoneNumberError,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
        return $default(
            _that.status,
            _that.email,
            _that.identityNumber,
            _that.firstName,
            _that.lastName,
            _that.birthDate,
            _that.password,
            _that.confirmPassword,
            _that.phoneNumber,
            _that.kvkkApproved,
            _that.emailError,
            _that.identityNumberError,
            _that.passwordError,
            _that.confirmPasswordError,
            _that.phoneNumberError,
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
            RegisterPageStatus status,
            String email,
            String identityNumber,
            String firstName,
            String lastName,
            String birthDate,
            String password,
            String confirmPassword,
            String phoneNumber,
            bool kvkkApproved,
            String? emailError,
            String? identityNumberError,
            String? passwordError,
            String? confirmPasswordError,
            String? phoneNumberError,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState():
        return $default(
            _that.status,
            _that.email,
            _that.identityNumber,
            _that.firstName,
            _that.lastName,
            _that.birthDate,
            _that.password,
            _that.confirmPassword,
            _that.phoneNumber,
            _that.kvkkApproved,
            _that.emailError,
            _that.identityNumberError,
            _that.passwordError,
            _that.confirmPasswordError,
            _that.phoneNumberError,
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
            RegisterPageStatus status,
            String email,
            String identityNumber,
            String firstName,
            String lastName,
            String birthDate,
            String password,
            String confirmPassword,
            String phoneNumber,
            bool kvkkApproved,
            String? emailError,
            String? identityNumberError,
            String? passwordError,
            String? confirmPasswordError,
            String? phoneNumberError,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterState() when $default != null:
        return $default(
            _that.status,
            _that.email,
            _that.identityNumber,
            _that.firstName,
            _that.lastName,
            _that.birthDate,
            _that.password,
            _that.confirmPassword,
            _that.phoneNumber,
            _that.kvkkApproved,
            _that.emailError,
            _that.identityNumberError,
            _that.passwordError,
            _that.confirmPasswordError,
            _that.phoneNumberError,
            _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterState extends RegisterState {
  const _RegisterState(
      {this.status = RegisterPageStatus.initial,
      this.email = '',
      this.identityNumber = '',
      this.firstName = '',
      this.lastName = '',
      this.birthDate = '',
      this.password = '',
      this.confirmPassword = '',
      this.phoneNumber = '',
      this.kvkkApproved = false,
      this.emailError,
      this.identityNumberError,
      this.passwordError,
      this.confirmPasswordError,
      this.phoneNumberError,
      this.error})
      : super._();

  @override
  @JsonKey()
  final RegisterPageStatus status;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String identityNumber;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String birthDate;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool kvkkApproved;
  @override
  final String? emailError;
  @override
  final String? identityNumberError;
  @override
  final String? passwordError;
  @override
  final String? confirmPasswordError;
  @override
  final String? phoneNumberError;
  @override
  final String? error;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.kvkkApproved, kvkkApproved) ||
                other.kvkkApproved == kvkkApproved) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.identityNumberError, identityNumberError) ||
                other.identityNumberError == identityNumberError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.confirmPasswordError, confirmPasswordError) ||
                other.confirmPasswordError == confirmPasswordError) &&
            (identical(other.phoneNumberError, phoneNumberError) ||
                other.phoneNumberError == phoneNumberError) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      email,
      identityNumber,
      firstName,
      lastName,
      birthDate,
      password,
      confirmPassword,
      phoneNumber,
      kvkkApproved,
      emailError,
      identityNumberError,
      passwordError,
      confirmPasswordError,
      phoneNumberError,
      error);

  @override
  String toString() {
    return 'RegisterState(status: $status, email: $email, identityNumber: $identityNumber, firstName: $firstName, lastName: $lastName, birthDate: $birthDate, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, kvkkApproved: $kvkkApproved, emailError: $emailError, identityNumberError: $identityNumberError, passwordError: $passwordError, confirmPasswordError: $confirmPasswordError, phoneNumberError: $phoneNumberError, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) _then) =
      __$RegisterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RegisterPageStatus status,
      String email,
      String identityNumber,
      String firstName,
      String lastName,
      String birthDate,
      String password,
      String confirmPassword,
      String phoneNumber,
      bool kvkkApproved,
      String? emailError,
      String? identityNumberError,
      String? passwordError,
      String? confirmPasswordError,
      String? phoneNumberError,
      String? error});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? identityNumber = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthDate = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? phoneNumber = null,
    Object? kvkkApproved = null,
    Object? emailError = freezed,
    Object? identityNumberError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? phoneNumberError = freezed,
    Object? error = freezed,
  }) {
    return _then(_RegisterState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterPageStatus,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      identityNumber: null == identityNumber
          ? _self.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      kvkkApproved: null == kvkkApproved
          ? _self.kvkkApproved
          : kvkkApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: freezed == emailError
          ? _self.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNumberError: freezed == identityNumberError
          ? _self.identityNumberError
          : identityNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _self.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _self.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberError: freezed == phoneNumberError
          ? _self.phoneNumberError
          : phoneNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
