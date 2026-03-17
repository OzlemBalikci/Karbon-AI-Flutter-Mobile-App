// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderofmonth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaderofmonthState implements DiagnosticableTreeMixin {
  LeaderofmonthStatus get status;
  List<LeaderboardLeaderEntity> get leaders;
  CurrentUserRankEntity? get currentUserRank;
  String? get error;

  /// Create a copy of LeaderofmonthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeaderofmonthStateCopyWith<LeaderofmonthState> get copyWith =>
      _$LeaderofmonthStateCopyWithImpl<LeaderofmonthState>(
          this as LeaderofmonthState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeaderofmonthState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('leaders', leaders))
      ..add(DiagnosticsProperty('currentUserRank', currentUserRank))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeaderofmonthState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.leaders, leaders) &&
            (identical(other.currentUserRank, currentUserRank) ||
                other.currentUserRank == currentUserRank) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(leaders), currentUserRank, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaderofmonthState(status: $status, leaders: $leaders, currentUserRank: $currentUserRank, error: $error)';
  }
}

/// @nodoc
abstract mixin class $LeaderofmonthStateCopyWith<$Res> {
  factory $LeaderofmonthStateCopyWith(
          LeaderofmonthState value, $Res Function(LeaderofmonthState) _then) =
      _$LeaderofmonthStateCopyWithImpl;
  @useResult
  $Res call(
      {LeaderofmonthStatus status,
      List<LeaderboardLeaderEntity> leaders,
      CurrentUserRankEntity? currentUserRank,
      String? error});
}

/// @nodoc
class _$LeaderofmonthStateCopyWithImpl<$Res>
    implements $LeaderofmonthStateCopyWith<$Res> {
  _$LeaderofmonthStateCopyWithImpl(this._self, this._then);

  final LeaderofmonthState _self;
  final $Res Function(LeaderofmonthState) _then;

  /// Create a copy of LeaderofmonthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? leaders = null,
    Object? currentUserRank = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as LeaderofmonthStatus,
      leaders: null == leaders
          ? _self.leaders
          : leaders // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardLeaderEntity>,
      currentUserRank: freezed == currentUserRank
          ? _self.currentUserRank
          : currentUserRank // ignore: cast_nullable_to_non_nullable
              as CurrentUserRankEntity?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LeaderofmonthState].
extension LeaderofmonthStatePatterns on LeaderofmonthState {
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
    TResult Function(_LeaderofmonthState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LeaderofmonthState() when $default != null:
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
    TResult Function(_LeaderofmonthState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaderofmonthState():
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
    TResult? Function(_LeaderofmonthState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaderofmonthState() when $default != null:
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
            LeaderofmonthStatus status,
            List<LeaderboardLeaderEntity> leaders,
            CurrentUserRankEntity? currentUserRank,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LeaderofmonthState() when $default != null:
        return $default(
            _that.status, _that.leaders, _that.currentUserRank, _that.error);
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
            LeaderofmonthStatus status,
            List<LeaderboardLeaderEntity> leaders,
            CurrentUserRankEntity? currentUserRank,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaderofmonthState():
        return $default(
            _that.status, _that.leaders, _that.currentUserRank, _that.error);
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
            LeaderofmonthStatus status,
            List<LeaderboardLeaderEntity> leaders,
            CurrentUserRankEntity? currentUserRank,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaderofmonthState() when $default != null:
        return $default(
            _that.status, _that.leaders, _that.currentUserRank, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LeaderofmonthState extends LeaderofmonthState
    with DiagnosticableTreeMixin {
  const _LeaderofmonthState(
      {this.status = LeaderofmonthStatus.initial,
      final List<LeaderboardLeaderEntity> leaders = const [],
      this.currentUserRank,
      this.error})
      : _leaders = leaders,
        super._();

  @override
  @JsonKey()
  final LeaderofmonthStatus status;
  final List<LeaderboardLeaderEntity> _leaders;
  @override
  @JsonKey()
  List<LeaderboardLeaderEntity> get leaders {
    if (_leaders is EqualUnmodifiableListView) return _leaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaders);
  }

  @override
  final CurrentUserRankEntity? currentUserRank;
  @override
  final String? error;

  /// Create a copy of LeaderofmonthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeaderofmonthStateCopyWith<_LeaderofmonthState> get copyWith =>
      __$LeaderofmonthStateCopyWithImpl<_LeaderofmonthState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeaderofmonthState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('leaders', leaders))
      ..add(DiagnosticsProperty('currentUserRank', currentUserRank))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeaderofmonthState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._leaders, _leaders) &&
            (identical(other.currentUserRank, currentUserRank) ||
                other.currentUserRank == currentUserRank) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_leaders), currentUserRank, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaderofmonthState(status: $status, leaders: $leaders, currentUserRank: $currentUserRank, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$LeaderofmonthStateCopyWith<$Res>
    implements $LeaderofmonthStateCopyWith<$Res> {
  factory _$LeaderofmonthStateCopyWith(
          _LeaderofmonthState value, $Res Function(_LeaderofmonthState) _then) =
      __$LeaderofmonthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {LeaderofmonthStatus status,
      List<LeaderboardLeaderEntity> leaders,
      CurrentUserRankEntity? currentUserRank,
      String? error});
}

/// @nodoc
class __$LeaderofmonthStateCopyWithImpl<$Res>
    implements _$LeaderofmonthStateCopyWith<$Res> {
  __$LeaderofmonthStateCopyWithImpl(this._self, this._then);

  final _LeaderofmonthState _self;
  final $Res Function(_LeaderofmonthState) _then;

  /// Create a copy of LeaderofmonthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? leaders = null,
    Object? currentUserRank = freezed,
    Object? error = freezed,
  }) {
    return _then(_LeaderofmonthState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as LeaderofmonthStatus,
      leaders: null == leaders
          ? _self._leaders
          : leaders // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardLeaderEntity>,
      currentUserRank: freezed == currentUserRank
          ? _self.currentUserRank
          : currentUserRank // ignore: cast_nullable_to_non_nullable
              as CurrentUserRankEntity?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
