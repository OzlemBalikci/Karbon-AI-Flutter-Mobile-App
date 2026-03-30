// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent()';
  }
}

/// @nodoc
class $RegisterEventCopyWith<$Res> {
  $RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}

/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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
    TResult Function(RegisterFirstNameChanged value)? firstNameChanged,
    TResult Function(RegisterLastNameChanged value)? lastNameChanged,
    TResult Function(RegisterIdentityNumberChanged value)?
        identityNumberChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterBirthDateChanged value)? birthDateChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterPhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(RegisterKvkkApprovedChanged value)? kvkkApprovedChanged,
    TResult Function(RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RegisterFirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that);
      case RegisterLastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that);
      case RegisterIdentityNumberChanged() when identityNumberChanged != null:
        return identityNumberChanged(_that);
      case RegisterEmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case RegisterBirthDateChanged() when birthDateChanged != null:
        return birthDateChanged(_that);
      case RegisterPasswordChanged() when passwordChanged != null:
        return passwordChanged(_that);
      case RegisterConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that);
      case RegisterPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that);
      case RegisterKvkkApprovedChanged() when kvkkApprovedChanged != null:
        return kvkkApprovedChanged(_that);
      case RegisterButtonPressed() when registerButtonPressed != null:
        return registerButtonPressed(_that);
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
    required TResult Function(RegisterFirstNameChanged value) firstNameChanged,
    required TResult Function(RegisterLastNameChanged value) lastNameChanged,
    required TResult Function(RegisterIdentityNumberChanged value)
        identityNumberChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterBirthDateChanged value) birthDateChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterPhoneNumberChanged value)
        phoneNumberChanged,
    required TResult Function(RegisterKvkkApprovedChanged value)
        kvkkApprovedChanged,
    required TResult Function(RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    final _that = this;
    switch (_that) {
      case RegisterFirstNameChanged():
        return firstNameChanged(_that);
      case RegisterLastNameChanged():
        return lastNameChanged(_that);
      case RegisterIdentityNumberChanged():
        return identityNumberChanged(_that);
      case RegisterEmailChanged():
        return emailChanged(_that);
      case RegisterBirthDateChanged():
        return birthDateChanged(_that);
      case RegisterPasswordChanged():
        return passwordChanged(_that);
      case RegisterConfirmPasswordChanged():
        return confirmPasswordChanged(_that);
      case RegisterPhoneNumberChanged():
        return phoneNumberChanged(_that);
      case RegisterKvkkApprovedChanged():
        return kvkkApprovedChanged(_that);
      case RegisterButtonPressed():
        return registerButtonPressed(_that);
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
    TResult? Function(RegisterFirstNameChanged value)? firstNameChanged,
    TResult? Function(RegisterLastNameChanged value)? lastNameChanged,
    TResult? Function(RegisterIdentityNumberChanged value)?
        identityNumberChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterBirthDateChanged value)? birthDateChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterPhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(RegisterKvkkApprovedChanged value)? kvkkApprovedChanged,
    TResult? Function(RegisterButtonPressed value)? registerButtonPressed,
  }) {
    final _that = this;
    switch (_that) {
      case RegisterFirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that);
      case RegisterLastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that);
      case RegisterIdentityNumberChanged() when identityNumberChanged != null:
        return identityNumberChanged(_that);
      case RegisterEmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case RegisterBirthDateChanged() when birthDateChanged != null:
        return birthDateChanged(_that);
      case RegisterPasswordChanged() when passwordChanged != null:
        return passwordChanged(_that);
      case RegisterConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that);
      case RegisterPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that);
      case RegisterKvkkApprovedChanged() when kvkkApprovedChanged != null:
        return kvkkApprovedChanged(_that);
      case RegisterButtonPressed() when registerButtonPressed != null:
        return registerButtonPressed(_that);
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
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String identityNumber)? identityNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool kvkkApproved)? kvkkApprovedChanged,
    TResult Function()? registerButtonPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RegisterFirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that.firstName);
      case RegisterLastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that.lastName);
      case RegisterIdentityNumberChanged() when identityNumberChanged != null:
        return identityNumberChanged(_that.identityNumber);
      case RegisterEmailChanged() when emailChanged != null:
        return emailChanged(_that.email);
      case RegisterBirthDateChanged() when birthDateChanged != null:
        return birthDateChanged(_that.birthDate);
      case RegisterPasswordChanged() when passwordChanged != null:
        return passwordChanged(_that.password);
      case RegisterConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that.confirmPassword);
      case RegisterPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that.phoneNumber);
      case RegisterKvkkApprovedChanged() when kvkkApprovedChanged != null:
        return kvkkApprovedChanged(_that.kvkkApproved);
      case RegisterButtonPressed() when registerButtonPressed != null:
        return registerButtonPressed();
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String identityNumber) identityNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool kvkkApproved) kvkkApprovedChanged,
    required TResult Function() registerButtonPressed,
  }) {
    final _that = this;
    switch (_that) {
      case RegisterFirstNameChanged():
        return firstNameChanged(_that.firstName);
      case RegisterLastNameChanged():
        return lastNameChanged(_that.lastName);
      case RegisterIdentityNumberChanged():
        return identityNumberChanged(_that.identityNumber);
      case RegisterEmailChanged():
        return emailChanged(_that.email);
      case RegisterBirthDateChanged():
        return birthDateChanged(_that.birthDate);
      case RegisterPasswordChanged():
        return passwordChanged(_that.password);
      case RegisterConfirmPasswordChanged():
        return confirmPasswordChanged(_that.confirmPassword);
      case RegisterPhoneNumberChanged():
        return phoneNumberChanged(_that.phoneNumber);
      case RegisterKvkkApprovedChanged():
        return kvkkApprovedChanged(_that.kvkkApproved);
      case RegisterButtonPressed():
        return registerButtonPressed();
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
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String identityNumber)? identityNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthDate)? birthDateChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(bool kvkkApproved)? kvkkApprovedChanged,
    TResult? Function()? registerButtonPressed,
  }) {
    final _that = this;
    switch (_that) {
      case RegisterFirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that.firstName);
      case RegisterLastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that.lastName);
      case RegisterIdentityNumberChanged() when identityNumberChanged != null:
        return identityNumberChanged(_that.identityNumber);
      case RegisterEmailChanged() when emailChanged != null:
        return emailChanged(_that.email);
      case RegisterBirthDateChanged() when birthDateChanged != null:
        return birthDateChanged(_that.birthDate);
      case RegisterPasswordChanged() when passwordChanged != null:
        return passwordChanged(_that.password);
      case RegisterConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that.confirmPassword);
      case RegisterPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that.phoneNumber);
      case RegisterKvkkApprovedChanged() when kvkkApprovedChanged != null:
        return kvkkApprovedChanged(_that.kvkkApproved);
      case RegisterButtonPressed() when registerButtonPressed != null:
        return registerButtonPressed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class RegisterFirstNameChanged implements RegisterEvent {
  const RegisterFirstNameChanged({required this.firstName});

  final String firstName;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterFirstNameChangedCopyWith<RegisterFirstNameChanged> get copyWith =>
      _$RegisterFirstNameChangedCopyWithImpl<RegisterFirstNameChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterFirstNameChanged &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @override
  String toString() {
    return 'RegisterEvent.firstNameChanged(firstName: $firstName)';
  }
}

/// @nodoc
abstract mixin class $RegisterFirstNameChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterFirstNameChangedCopyWith(RegisterFirstNameChanged value,
          $Res Function(RegisterFirstNameChanged) _then) =
      _$RegisterFirstNameChangedCopyWithImpl;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class _$RegisterFirstNameChangedCopyWithImpl<$Res>
    implements $RegisterFirstNameChangedCopyWith<$Res> {
  _$RegisterFirstNameChangedCopyWithImpl(this._self, this._then);

  final RegisterFirstNameChanged _self;
  final $Res Function(RegisterFirstNameChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
  }) {
    return _then(RegisterFirstNameChanged(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterLastNameChanged implements RegisterEvent {
  const RegisterLastNameChanged({required this.lastName});

  final String lastName;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterLastNameChangedCopyWith<RegisterLastNameChanged> get copyWith =>
      _$RegisterLastNameChangedCopyWithImpl<RegisterLastNameChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterLastNameChanged &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @override
  String toString() {
    return 'RegisterEvent.lastNameChanged(lastName: $lastName)';
  }
}

/// @nodoc
abstract mixin class $RegisterLastNameChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterLastNameChangedCopyWith(RegisterLastNameChanged value,
          $Res Function(RegisterLastNameChanged) _then) =
      _$RegisterLastNameChangedCopyWithImpl;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class _$RegisterLastNameChangedCopyWithImpl<$Res>
    implements $RegisterLastNameChangedCopyWith<$Res> {
  _$RegisterLastNameChangedCopyWithImpl(this._self, this._then);

  final RegisterLastNameChanged _self;
  final $Res Function(RegisterLastNameChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lastName = null,
  }) {
    return _then(RegisterLastNameChanged(
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterIdentityNumberChanged implements RegisterEvent {
  const RegisterIdentityNumberChanged({required this.identityNumber});

  final String identityNumber;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterIdentityNumberChangedCopyWith<RegisterIdentityNumberChanged>
      get copyWith => _$RegisterIdentityNumberChangedCopyWithImpl<
          RegisterIdentityNumberChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterIdentityNumberChanged &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identityNumber);

  @override
  String toString() {
    return 'RegisterEvent.identityNumberChanged(identityNumber: $identityNumber)';
  }
}

/// @nodoc
abstract mixin class $RegisterIdentityNumberChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterIdentityNumberChangedCopyWith(
          RegisterIdentityNumberChanged value,
          $Res Function(RegisterIdentityNumberChanged) _then) =
      _$RegisterIdentityNumberChangedCopyWithImpl;
  @useResult
  $Res call({String identityNumber});
}

/// @nodoc
class _$RegisterIdentityNumberChangedCopyWithImpl<$Res>
    implements $RegisterIdentityNumberChangedCopyWith<$Res> {
  _$RegisterIdentityNumberChangedCopyWithImpl(this._self, this._then);

  final RegisterIdentityNumberChanged _self;
  final $Res Function(RegisterIdentityNumberChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? identityNumber = null,
  }) {
    return _then(RegisterIdentityNumberChanged(
      identityNumber: null == identityNumber
          ? _self.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterEmailChanged implements RegisterEvent {
  const RegisterEmailChanged({required this.email});

  final String email;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterEmailChangedCopyWith<RegisterEmailChanged> get copyWith =>
      _$RegisterEmailChangedCopyWithImpl<RegisterEmailChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $RegisterEmailChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterEmailChangedCopyWith(RegisterEmailChanged value,
          $Res Function(RegisterEmailChanged) _then) =
      _$RegisterEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$RegisterEmailChangedCopyWithImpl<$Res>
    implements $RegisterEmailChangedCopyWith<$Res> {
  _$RegisterEmailChangedCopyWithImpl(this._self, this._then);

  final RegisterEmailChanged _self;
  final $Res Function(RegisterEmailChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(RegisterEmailChanged(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterBirthDateChanged implements RegisterEvent {
  const RegisterBirthDateChanged({required this.birthDate});

  final DateTime birthDate;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterBirthDateChangedCopyWith<RegisterBirthDateChanged> get copyWith =>
      _$RegisterBirthDateChangedCopyWithImpl<RegisterBirthDateChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterBirthDateChanged &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthDate);

  @override
  String toString() {
    return 'RegisterEvent.birthDateChanged(birthDate: $birthDate)';
  }
}

/// @nodoc
abstract mixin class $RegisterBirthDateChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterBirthDateChangedCopyWith(RegisterBirthDateChanged value,
          $Res Function(RegisterBirthDateChanged) _then) =
      _$RegisterBirthDateChangedCopyWithImpl;
  @useResult
  $Res call({DateTime birthDate});
}

/// @nodoc
class _$RegisterBirthDateChangedCopyWithImpl<$Res>
    implements $RegisterBirthDateChangedCopyWith<$Res> {
  _$RegisterBirthDateChangedCopyWithImpl(this._self, this._then);

  final RegisterBirthDateChanged _self;
  final $Res Function(RegisterBirthDateChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? birthDate = null,
  }) {
    return _then(RegisterBirthDateChanged(
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class RegisterPasswordChanged implements RegisterEvent {
  const RegisterPasswordChanged({required this.password});

  final String password;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterPasswordChangedCopyWith<RegisterPasswordChanged> get copyWith =>
      _$RegisterPasswordChangedCopyWithImpl<RegisterPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $RegisterPasswordChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterPasswordChangedCopyWith(RegisterPasswordChanged value,
          $Res Function(RegisterPasswordChanged) _then) =
      _$RegisterPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$RegisterPasswordChangedCopyWithImpl<$Res>
    implements $RegisterPasswordChangedCopyWith<$Res> {
  _$RegisterPasswordChangedCopyWithImpl(this._self, this._then);

  final RegisterPasswordChanged _self;
  final $Res Function(RegisterPasswordChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(RegisterPasswordChanged(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterConfirmPasswordChanged implements RegisterEvent {
  const RegisterConfirmPasswordChanged({required this.confirmPassword});

  final String confirmPassword;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterConfirmPasswordChangedCopyWith<RegisterConfirmPasswordChanged>
      get copyWith => _$RegisterConfirmPasswordChangedCopyWithImpl<
          RegisterConfirmPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterConfirmPasswordChanged &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @override
  String toString() {
    return 'RegisterEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }
}

/// @nodoc
abstract mixin class $RegisterConfirmPasswordChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterConfirmPasswordChangedCopyWith(
          RegisterConfirmPasswordChanged value,
          $Res Function(RegisterConfirmPasswordChanged) _then) =
      _$RegisterConfirmPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class _$RegisterConfirmPasswordChangedCopyWithImpl<$Res>
    implements $RegisterConfirmPasswordChangedCopyWith<$Res> {
  _$RegisterConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final RegisterConfirmPasswordChanged _self;
  final $Res Function(RegisterConfirmPasswordChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(RegisterConfirmPasswordChanged(
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterPhoneNumberChanged implements RegisterEvent {
  const RegisterPhoneNumberChanged({required this.phoneNumber});

  final String phoneNumber;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterPhoneNumberChangedCopyWith<RegisterPhoneNumberChanged>
      get copyWith =>
          _$RegisterPhoneNumberChangedCopyWithImpl<RegisterPhoneNumberChanged>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'RegisterEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $RegisterPhoneNumberChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterPhoneNumberChangedCopyWith(RegisterPhoneNumberChanged value,
          $Res Function(RegisterPhoneNumberChanged) _then) =
      _$RegisterPhoneNumberChangedCopyWithImpl;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$RegisterPhoneNumberChangedCopyWithImpl<$Res>
    implements $RegisterPhoneNumberChangedCopyWith<$Res> {
  _$RegisterPhoneNumberChangedCopyWithImpl(this._self, this._then);

  final RegisterPhoneNumberChanged _self;
  final $Res Function(RegisterPhoneNumberChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(RegisterPhoneNumberChanged(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterKvkkApprovedChanged implements RegisterEvent {
  const RegisterKvkkApprovedChanged({required this.kvkkApproved});

  final bool kvkkApproved;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterKvkkApprovedChangedCopyWith<RegisterKvkkApprovedChanged>
      get copyWith => _$RegisterKvkkApprovedChangedCopyWithImpl<
          RegisterKvkkApprovedChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterKvkkApprovedChanged &&
            (identical(other.kvkkApproved, kvkkApproved) ||
                other.kvkkApproved == kvkkApproved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kvkkApproved);

  @override
  String toString() {
    return 'RegisterEvent.kvkkApprovedChanged(kvkkApproved: $kvkkApproved)';
  }
}

/// @nodoc
abstract mixin class $RegisterKvkkApprovedChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $RegisterKvkkApprovedChangedCopyWith(
          RegisterKvkkApprovedChanged value,
          $Res Function(RegisterKvkkApprovedChanged) _then) =
      _$RegisterKvkkApprovedChangedCopyWithImpl;
  @useResult
  $Res call({bool kvkkApproved});
}

/// @nodoc
class _$RegisterKvkkApprovedChangedCopyWithImpl<$Res>
    implements $RegisterKvkkApprovedChangedCopyWith<$Res> {
  _$RegisterKvkkApprovedChangedCopyWithImpl(this._self, this._then);

  final RegisterKvkkApprovedChanged _self;
  final $Res Function(RegisterKvkkApprovedChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? kvkkApproved = null,
  }) {
    return _then(RegisterKvkkApprovedChanged(
      kvkkApproved: null == kvkkApproved
          ? _self.kvkkApproved
          : kvkkApproved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class RegisterButtonPressed implements RegisterEvent {
  const RegisterButtonPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.registerButtonPressed()';
  }
}

// dart format on
