// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgotpassword_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgotPasswordEvent()';
  }
}

/// @nodoc
class $ForgotPasswordEventCopyWith<$Res> {
  $ForgotPasswordEventCopyWith(
      ForgotPasswordEvent _, $Res Function(ForgotPasswordEvent) __);
}

/// Adds pattern-matching-related methods to [ForgotPasswordEvent].
extension ForgotPasswordEventPatterns on ForgotPasswordEvent {
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
    TResult Function(ForgotPasswordPhoneNumberChanged value)?
        phoneNumberChanged,
    TResult Function(ForgotPasswordSendCodePressed value)? sendCodePressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ForgotPasswordPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that);
      case ForgotPasswordSendCodePressed() when sendCodePressed != null:
        return sendCodePressed(_that);
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
    required TResult Function(ForgotPasswordPhoneNumberChanged value)
        phoneNumberChanged,
    required TResult Function(ForgotPasswordSendCodePressed value)
        sendCodePressed,
  }) {
    final _that = this;
    switch (_that) {
      case ForgotPasswordPhoneNumberChanged():
        return phoneNumberChanged(_that);
      case ForgotPasswordSendCodePressed():
        return sendCodePressed(_that);
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
    TResult? Function(ForgotPasswordPhoneNumberChanged value)?
        phoneNumberChanged,
    TResult? Function(ForgotPasswordSendCodePressed value)? sendCodePressed,
  }) {
    final _that = this;
    switch (_that) {
      case ForgotPasswordPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that);
      case ForgotPasswordSendCodePressed() when sendCodePressed != null:
        return sendCodePressed(_that);
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
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? sendCodePressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ForgotPasswordPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that.phoneNumber);
      case ForgotPasswordSendCodePressed() when sendCodePressed != null:
        return sendCodePressed();
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
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() sendCodePressed,
  }) {
    final _that = this;
    switch (_that) {
      case ForgotPasswordPhoneNumberChanged():
        return phoneNumberChanged(_that.phoneNumber);
      case ForgotPasswordSendCodePressed():
        return sendCodePressed();
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
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? sendCodePressed,
  }) {
    final _that = this;
    switch (_that) {
      case ForgotPasswordPhoneNumberChanged() when phoneNumberChanged != null:
        return phoneNumberChanged(_that.phoneNumber);
      case ForgotPasswordSendCodePressed() when sendCodePressed != null:
        return sendCodePressed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class ForgotPasswordPhoneNumberChanged implements ForgotPasswordEvent {
  const ForgotPasswordPhoneNumberChanged({required this.phoneNumber});

  final String phoneNumber;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotPasswordPhoneNumberChangedCopyWith<ForgotPasswordPhoneNumberChanged>
      get copyWith => _$ForgotPasswordPhoneNumberChangedCopyWithImpl<
          ForgotPasswordPhoneNumberChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordPhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'ForgotPasswordEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $ForgotPasswordPhoneNumberChangedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordPhoneNumberChangedCopyWith(
          ForgotPasswordPhoneNumberChanged value,
          $Res Function(ForgotPasswordPhoneNumberChanged) _then) =
      _$ForgotPasswordPhoneNumberChangedCopyWithImpl;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$ForgotPasswordPhoneNumberChangedCopyWithImpl<$Res>
    implements $ForgotPasswordPhoneNumberChangedCopyWith<$Res> {
  _$ForgotPasswordPhoneNumberChangedCopyWithImpl(this._self, this._then);

  final ForgotPasswordPhoneNumberChanged _self;
  final $Res Function(ForgotPasswordPhoneNumberChanged) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(ForgotPasswordPhoneNumberChanged(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ForgotPasswordSendCodePressed implements ForgotPasswordEvent {
  const ForgotPasswordSendCodePressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordSendCodePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgotPasswordEvent.sendCodePressed()';
  }
}

// dart format on
