// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customfirstopen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomFirstOpenState {
  CustomFirstOpenStatus get status;
  String? get error;

  /// Create a copy of CustomFirstOpenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomFirstOpenStateCopyWith<CustomFirstOpenState> get copyWith =>
      _$CustomFirstOpenStateCopyWithImpl<CustomFirstOpenState>(
          this as CustomFirstOpenState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomFirstOpenState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error);

  @override
  String toString() {
    return 'CustomFirstOpenState(status: $status, error: $error)';
  }
}

/// @nodoc
abstract mixin class $CustomFirstOpenStateCopyWith<$Res> {
  factory $CustomFirstOpenStateCopyWith(CustomFirstOpenState value,
          $Res Function(CustomFirstOpenState) _then) =
      _$CustomFirstOpenStateCopyWithImpl;
  @useResult
  $Res call({CustomFirstOpenStatus status, String? error});
}

/// @nodoc
class _$CustomFirstOpenStateCopyWithImpl<$Res>
    implements $CustomFirstOpenStateCopyWith<$Res> {
  _$CustomFirstOpenStateCopyWithImpl(this._self, this._then);

  final CustomFirstOpenState _self;
  final $Res Function(CustomFirstOpenState) _then;

  /// Create a copy of CustomFirstOpenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CustomFirstOpenStatus,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomFirstOpenState].
extension CustomFirstOpenStatePatterns on CustomFirstOpenState {
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
    TResult Function(_CustomFirstOpenState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomFirstOpenState() when $default != null:
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
    TResult Function(_CustomFirstOpenState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomFirstOpenState():
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
    TResult? Function(_CustomFirstOpenState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomFirstOpenState() when $default != null:
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
    TResult Function(CustomFirstOpenStatus status, String? error)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomFirstOpenState() when $default != null:
        return $default(_that.status, _that.error);
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
    TResult Function(CustomFirstOpenStatus status, String? error) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomFirstOpenState():
        return $default(_that.status, _that.error);
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
    TResult? Function(CustomFirstOpenStatus status, String? error)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomFirstOpenState() when $default != null:
        return $default(_that.status, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CustomFirstOpenState extends CustomFirstOpenState {
  const _CustomFirstOpenState(
      {this.status = CustomFirstOpenStatus.initial, this.error})
      : super._();

  @override
  @JsonKey()
  final CustomFirstOpenStatus status;
  @override
  final String? error;

  /// Create a copy of CustomFirstOpenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomFirstOpenStateCopyWith<_CustomFirstOpenState> get copyWith =>
      __$CustomFirstOpenStateCopyWithImpl<_CustomFirstOpenState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomFirstOpenState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error);

  @override
  String toString() {
    return 'CustomFirstOpenState(status: $status, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$CustomFirstOpenStateCopyWith<$Res>
    implements $CustomFirstOpenStateCopyWith<$Res> {
  factory _$CustomFirstOpenStateCopyWith(_CustomFirstOpenState value,
          $Res Function(_CustomFirstOpenState) _then) =
      __$CustomFirstOpenStateCopyWithImpl;
  @override
  @useResult
  $Res call({CustomFirstOpenStatus status, String? error});
}

/// @nodoc
class __$CustomFirstOpenStateCopyWithImpl<$Res>
    implements _$CustomFirstOpenStateCopyWith<$Res> {
  __$CustomFirstOpenStateCopyWithImpl(this._self, this._then);

  final _CustomFirstOpenState _self;
  final $Res Function(_CustomFirstOpenState) _then;

  /// Create a copy of CustomFirstOpenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_CustomFirstOpenState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CustomFirstOpenStatus,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
