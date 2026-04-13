// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState implements DiagnosticableTreeMixin {
  HomeStatus get status;
  HomeViewType get viewType;
  bool get hasCompletedPoll;
  GlobalTargetEntity? get globalTarget;
  MonthlyTargetEntity? get monthlyTarget;
  List<HomeTopLeaderEntity> get topLeaders;
  String? get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('viewType', viewType))
      ..add(DiagnosticsProperty('hasCompletedPoll', hasCompletedPoll))
      ..add(DiagnosticsProperty('globalTarget', globalTarget))
      ..add(DiagnosticsProperty('monthlyTarget', monthlyTarget))
      ..add(DiagnosticsProperty('topLeaders', topLeaders))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            (identical(other.hasCompletedPoll, hasCompletedPoll) ||
                other.hasCompletedPoll == hasCompletedPoll) &&
            (identical(other.globalTarget, globalTarget) ||
                other.globalTarget == globalTarget) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget) &&
            const DeepCollectionEquality()
                .equals(other.topLeaders, topLeaders) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      viewType,
      hasCompletedPoll,
      globalTarget,
      monthlyTarget,
      const DeepCollectionEquality().hash(topLeaders),
      error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, viewType: $viewType, hasCompletedPoll: $hasCompletedPoll, globalTarget: $globalTarget, monthlyTarget: $monthlyTarget, topLeaders: $topLeaders, error: $error)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {HomeStatus status,
      HomeViewType viewType,
      bool hasCompletedPoll,
      GlobalTargetEntity? globalTarget,
      MonthlyTargetEntity? monthlyTarget,
      List<HomeTopLeaderEntity> topLeaders,
      String? error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? viewType = null,
    Object? hasCompletedPoll = null,
    Object? globalTarget = freezed,
    Object? monthlyTarget = freezed,
    Object? topLeaders = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      viewType: null == viewType
          ? _self.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as HomeViewType,
      hasCompletedPoll: null == hasCompletedPoll
          ? _self.hasCompletedPoll
          : hasCompletedPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      globalTarget: freezed == globalTarget
          ? _self.globalTarget
          : globalTarget // ignore: cast_nullable_to_non_nullable
              as GlobalTargetEntity?,
      monthlyTarget: freezed == monthlyTarget
          ? _self.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as MonthlyTargetEntity?,
      topLeaders: null == topLeaders
          ? _self.topLeaders
          : topLeaders // ignore: cast_nullable_to_non_nullable
              as List<HomeTopLeaderEntity>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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
    TResult Function(_HomeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
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
    TResult Function(_HomeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState():
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
    TResult? Function(_HomeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
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
            HomeStatus status,
            HomeViewType viewType,
            bool hasCompletedPoll,
            GlobalTargetEntity? globalTarget,
            MonthlyTargetEntity? monthlyTarget,
            List<HomeTopLeaderEntity> topLeaders,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
        return $default(
            _that.status,
            _that.viewType,
            _that.hasCompletedPoll,
            _that.globalTarget,
            _that.monthlyTarget,
            _that.topLeaders,
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
            HomeStatus status,
            HomeViewType viewType,
            bool hasCompletedPoll,
            GlobalTargetEntity? globalTarget,
            MonthlyTargetEntity? monthlyTarget,
            List<HomeTopLeaderEntity> topLeaders,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState():
        return $default(
            _that.status,
            _that.viewType,
            _that.hasCompletedPoll,
            _that.globalTarget,
            _that.monthlyTarget,
            _that.topLeaders,
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
            HomeStatus status,
            HomeViewType viewType,
            bool hasCompletedPoll,
            GlobalTargetEntity? globalTarget,
            MonthlyTargetEntity? monthlyTarget,
            List<HomeTopLeaderEntity> topLeaders,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
        return $default(
            _that.status,
            _that.viewType,
            _that.hasCompletedPoll,
            _that.globalTarget,
            _that.monthlyTarget,
            _that.topLeaders,
            _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HomeState extends HomeState with DiagnosticableTreeMixin {
  const _HomeState(
      {this.status = HomeStatus.loading,
      this.viewType = HomeViewType.initial,
      this.hasCompletedPoll = false,
      this.globalTarget,
      this.monthlyTarget,
      final List<HomeTopLeaderEntity> topLeaders = const [],
      this.error})
      : _topLeaders = topLeaders,
        super._();

  @override
  @JsonKey()
  final HomeStatus status;
  @override
  @JsonKey()
  final HomeViewType viewType;
  @override
  @JsonKey()
  final bool hasCompletedPoll;
  @override
  final GlobalTargetEntity? globalTarget;
  @override
  final MonthlyTargetEntity? monthlyTarget;
  final List<HomeTopLeaderEntity> _topLeaders;
  @override
  @JsonKey()
  List<HomeTopLeaderEntity> get topLeaders {
    if (_topLeaders is EqualUnmodifiableListView) return _topLeaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topLeaders);
  }

  @override
  final String? error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('viewType', viewType))
      ..add(DiagnosticsProperty('hasCompletedPoll', hasCompletedPoll))
      ..add(DiagnosticsProperty('globalTarget', globalTarget))
      ..add(DiagnosticsProperty('monthlyTarget', monthlyTarget))
      ..add(DiagnosticsProperty('topLeaders', topLeaders))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            (identical(other.hasCompletedPoll, hasCompletedPoll) ||
                other.hasCompletedPoll == hasCompletedPoll) &&
            (identical(other.globalTarget, globalTarget) ||
                other.globalTarget == globalTarget) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget) &&
            const DeepCollectionEquality()
                .equals(other._topLeaders, _topLeaders) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      viewType,
      hasCompletedPoll,
      globalTarget,
      monthlyTarget,
      const DeepCollectionEquality().hash(_topLeaders),
      error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, viewType: $viewType, hasCompletedPoll: $hasCompletedPoll, globalTarget: $globalTarget, monthlyTarget: $monthlyTarget, topLeaders: $topLeaders, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {HomeStatus status,
      HomeViewType viewType,
      bool hasCompletedPoll,
      GlobalTargetEntity? globalTarget,
      MonthlyTargetEntity? monthlyTarget,
      List<HomeTopLeaderEntity> topLeaders,
      String? error});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? viewType = null,
    Object? hasCompletedPoll = null,
    Object? globalTarget = freezed,
    Object? monthlyTarget = freezed,
    Object? topLeaders = null,
    Object? error = freezed,
  }) {
    return _then(_HomeState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      viewType: null == viewType
          ? _self.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as HomeViewType,
      hasCompletedPoll: null == hasCompletedPoll
          ? _self.hasCompletedPoll
          : hasCompletedPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      globalTarget: freezed == globalTarget
          ? _self.globalTarget
          : globalTarget // ignore: cast_nullable_to_non_nullable
              as GlobalTargetEntity?,
      monthlyTarget: freezed == monthlyTarget
          ? _self.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as MonthlyTargetEntity?,
      topLeaders: null == topLeaders
          ? _self._topLeaders
          : topLeaders // ignore: cast_nullable_to_non_nullable
              as List<HomeTopLeaderEntity>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
