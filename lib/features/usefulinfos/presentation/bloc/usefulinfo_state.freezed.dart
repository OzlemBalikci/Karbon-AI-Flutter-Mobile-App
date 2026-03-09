// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usefulinfo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsefulinfoState {
  UsefulinfoStatus get status;
  List<UsefulInfo> get infos;
  String? get error;

  /// Create a copy of UsefulinfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsefulinfoStateCopyWith<UsefulinfoState> get copyWith =>
      _$UsefulinfoStateCopyWithImpl<UsefulinfoState>(
          this as UsefulinfoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsefulinfoState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.infos, infos) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(infos), error);

  @override
  String toString() {
    return 'UsefulinfoState(status: $status, infos: $infos, error: $error)';
  }
}

/// @nodoc
abstract mixin class $UsefulinfoStateCopyWith<$Res> {
  factory $UsefulinfoStateCopyWith(
          UsefulinfoState value, $Res Function(UsefulinfoState) _then) =
      _$UsefulinfoStateCopyWithImpl;
  @useResult
  $Res call({UsefulinfoStatus status, List<UsefulInfo> infos, String? error});
}

/// @nodoc
class _$UsefulinfoStateCopyWithImpl<$Res>
    implements $UsefulinfoStateCopyWith<$Res> {
  _$UsefulinfoStateCopyWithImpl(this._self, this._then);

  final UsefulinfoState _self;
  final $Res Function(UsefulinfoState) _then;

  /// Create a copy of UsefulinfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? infos = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsefulinfoStatus,
      infos: null == infos
          ? _self.infos
          : infos // ignore: cast_nullable_to_non_nullable
              as List<UsefulInfo>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UsefulinfoState].
extension UsefulinfoStatePatterns on UsefulinfoState {
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
    TResult Function(_UsefulinfoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UsefulinfoState() when $default != null:
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
    TResult Function(_UsefulinfoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsefulinfoState():
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
    TResult? Function(_UsefulinfoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsefulinfoState() when $default != null:
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
            UsefulinfoStatus status, List<UsefulInfo> infos, String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UsefulinfoState() when $default != null:
        return $default(_that.status, _that.infos, _that.error);
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
            UsefulinfoStatus status, List<UsefulInfo> infos, String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsefulinfoState():
        return $default(_that.status, _that.infos, _that.error);
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
            UsefulinfoStatus status, List<UsefulInfo> infos, String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsefulinfoState() when $default != null:
        return $default(_that.status, _that.infos, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UsefulinfoState extends UsefulinfoState {
  const _UsefulinfoState(
      {this.status = UsefulinfoStatus.initial,
      final List<UsefulInfo> infos = const [],
      this.error})
      : _infos = infos,
        super._();

  @override
  @JsonKey()
  final UsefulinfoStatus status;
  final List<UsefulInfo> _infos;
  @override
  @JsonKey()
  List<UsefulInfo> get infos {
    if (_infos is EqualUnmodifiableListView) return _infos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infos);
  }

  @override
  final String? error;

  /// Create a copy of UsefulinfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsefulinfoStateCopyWith<_UsefulinfoState> get copyWith =>
      __$UsefulinfoStateCopyWithImpl<_UsefulinfoState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsefulinfoState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._infos, _infos) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_infos), error);

  @override
  String toString() {
    return 'UsefulinfoState(status: $status, infos: $infos, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$UsefulinfoStateCopyWith<$Res>
    implements $UsefulinfoStateCopyWith<$Res> {
  factory _$UsefulinfoStateCopyWith(
          _UsefulinfoState value, $Res Function(_UsefulinfoState) _then) =
      __$UsefulinfoStateCopyWithImpl;
  @override
  @useResult
  $Res call({UsefulinfoStatus status, List<UsefulInfo> infos, String? error});
}

/// @nodoc
class __$UsefulinfoStateCopyWithImpl<$Res>
    implements _$UsefulinfoStateCopyWith<$Res> {
  __$UsefulinfoStateCopyWithImpl(this._self, this._then);

  final _UsefulinfoState _self;
  final $Res Function(_UsefulinfoState) _then;

  /// Create a copy of UsefulinfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? infos = null,
    Object? error = freezed,
  }) {
    return _then(_UsefulinfoState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsefulinfoStatus,
      infos: null == infos
          ? _self._infos
          : infos // ignore: cast_nullable_to_non_nullable
              as List<UsefulInfo>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
