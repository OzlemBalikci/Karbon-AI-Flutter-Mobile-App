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
  int get yearlyTreeCount;
  int get monthlyTreeCount;
  double? get totalCarbon;
  double? get savedCarbon;
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
      ..add(DiagnosticsProperty('yearlyTreeCount', yearlyTreeCount))
      ..add(DiagnosticsProperty('monthlyTreeCount', monthlyTreeCount))
      ..add(DiagnosticsProperty('totalCarbon', totalCarbon))
      ..add(DiagnosticsProperty('savedCarbon', savedCarbon))
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
            (identical(other.yearlyTreeCount, yearlyTreeCount) ||
                other.yearlyTreeCount == yearlyTreeCount) &&
            (identical(other.monthlyTreeCount, monthlyTreeCount) ||
                other.monthlyTreeCount == monthlyTreeCount) &&
            (identical(other.totalCarbon, totalCarbon) ||
                other.totalCarbon == totalCarbon) &&
            (identical(other.savedCarbon, savedCarbon) ||
                other.savedCarbon == savedCarbon) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, viewType,
      yearlyTreeCount, monthlyTreeCount, totalCarbon, savedCarbon, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, viewType: $viewType, yearlyTreeCount: $yearlyTreeCount, monthlyTreeCount: $monthlyTreeCount, totalCarbon: $totalCarbon, savedCarbon: $savedCarbon, error: $error)';
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
      int yearlyTreeCount,
      int monthlyTreeCount,
      double? totalCarbon,
      double? savedCarbon,
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
    Object? yearlyTreeCount = null,
    Object? monthlyTreeCount = null,
    Object? totalCarbon = freezed,
    Object? savedCarbon = freezed,
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
      yearlyTreeCount: null == yearlyTreeCount
          ? _self.yearlyTreeCount
          : yearlyTreeCount // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyTreeCount: null == monthlyTreeCount
          ? _self.monthlyTreeCount
          : monthlyTreeCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCarbon: freezed == totalCarbon
          ? _self.totalCarbon
          : totalCarbon // ignore: cast_nullable_to_non_nullable
              as double?,
      savedCarbon: freezed == savedCarbon
          ? _self.savedCarbon
          : savedCarbon // ignore: cast_nullable_to_non_nullable
              as double?,
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
            int yearlyTreeCount,
            int monthlyTreeCount,
            double? totalCarbon,
            double? savedCarbon,
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
            _that.yearlyTreeCount,
            _that.monthlyTreeCount,
            _that.totalCarbon,
            _that.savedCarbon,
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
            int yearlyTreeCount,
            int monthlyTreeCount,
            double? totalCarbon,
            double? savedCarbon,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState():
        return $default(
            _that.status,
            _that.viewType,
            _that.yearlyTreeCount,
            _that.monthlyTreeCount,
            _that.totalCarbon,
            _that.savedCarbon,
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
            int yearlyTreeCount,
            int monthlyTreeCount,
            double? totalCarbon,
            double? savedCarbon,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
        return $default(
            _that.status,
            _that.viewType,
            _that.yearlyTreeCount,
            _that.monthlyTreeCount,
            _that.totalCarbon,
            _that.savedCarbon,
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
      this.yearlyTreeCount = 0,
      this.monthlyTreeCount = 0,
      this.totalCarbon,
      this.savedCarbon,
      this.error})
      : super._();

  @override
  @JsonKey()
  final HomeStatus status;
  @override
  @JsonKey()
  final HomeViewType viewType;
  @override
  @JsonKey()
  final int yearlyTreeCount;
  @override
  @JsonKey()
  final int monthlyTreeCount;
  @override
  final double? totalCarbon;
  @override
  final double? savedCarbon;
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
      ..add(DiagnosticsProperty('yearlyTreeCount', yearlyTreeCount))
      ..add(DiagnosticsProperty('monthlyTreeCount', monthlyTreeCount))
      ..add(DiagnosticsProperty('totalCarbon', totalCarbon))
      ..add(DiagnosticsProperty('savedCarbon', savedCarbon))
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
            (identical(other.yearlyTreeCount, yearlyTreeCount) ||
                other.yearlyTreeCount == yearlyTreeCount) &&
            (identical(other.monthlyTreeCount, monthlyTreeCount) ||
                other.monthlyTreeCount == monthlyTreeCount) &&
            (identical(other.totalCarbon, totalCarbon) ||
                other.totalCarbon == totalCarbon) &&
            (identical(other.savedCarbon, savedCarbon) ||
                other.savedCarbon == savedCarbon) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, viewType,
      yearlyTreeCount, monthlyTreeCount, totalCarbon, savedCarbon, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, viewType: $viewType, yearlyTreeCount: $yearlyTreeCount, monthlyTreeCount: $monthlyTreeCount, totalCarbon: $totalCarbon, savedCarbon: $savedCarbon, error: $error)';
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
      int yearlyTreeCount,
      int monthlyTreeCount,
      double? totalCarbon,
      double? savedCarbon,
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
    Object? yearlyTreeCount = null,
    Object? monthlyTreeCount = null,
    Object? totalCarbon = freezed,
    Object? savedCarbon = freezed,
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
      yearlyTreeCount: null == yearlyTreeCount
          ? _self.yearlyTreeCount
          : yearlyTreeCount // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyTreeCount: null == monthlyTreeCount
          ? _self.monthlyTreeCount
          : monthlyTreeCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCarbon: freezed == totalCarbon
          ? _self.totalCarbon
          : totalCarbon // ignore: cast_nullable_to_non_nullable
              as double?,
      savedCarbon: freezed == savedCarbon
          ? _self.savedCarbon
          : savedCarbon // ignore: cast_nullable_to_non_nullable
              as double?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
