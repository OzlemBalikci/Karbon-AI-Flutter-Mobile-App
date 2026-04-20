// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarState {
  CalendarGridStatus get gridStatus;
  CalendarDayDetailStatus get dayDetailStatus;
  DailyCalendarEntity? get calendar;
  DailyMonthlyActivitiesEntity? get monthly;
  DailyDayDetailEntity? get dayDetail;
  DateTime get focusedDay;
  DateTime get selectedDay;
  String? get gridError;
  String? get dayDetailError;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      _$CalendarStateCopyWithImpl<CalendarState>(
          this as CalendarState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarState &&
            (identical(other.gridStatus, gridStatus) ||
                other.gridStatus == gridStatus) &&
            (identical(other.dayDetailStatus, dayDetailStatus) ||
                other.dayDetailStatus == dayDetailStatus) &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar) &&
            (identical(other.monthly, monthly) || other.monthly == monthly) &&
            (identical(other.dayDetail, dayDetail) ||
                other.dayDetail == dayDetail) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.gridError, gridError) ||
                other.gridError == gridError) &&
            (identical(other.dayDetailError, dayDetailError) ||
                other.dayDetailError == dayDetailError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gridStatus,
      dayDetailStatus,
      calendar,
      monthly,
      dayDetail,
      focusedDay,
      selectedDay,
      gridError,
      dayDetailError);

  @override
  String toString() {
    return 'CalendarState(gridStatus: $gridStatus, dayDetailStatus: $dayDetailStatus, calendar: $calendar, monthly: $monthly, dayDetail: $dayDetail, focusedDay: $focusedDay, selectedDay: $selectedDay, gridError: $gridError, dayDetailError: $dayDetailError)';
  }
}

/// @nodoc
abstract mixin class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) _then) =
      _$CalendarStateCopyWithImpl;
  @useResult
  $Res call(
      {CalendarGridStatus gridStatus,
      CalendarDayDetailStatus dayDetailStatus,
      DailyCalendarEntity? calendar,
      DailyMonthlyActivitiesEntity? monthly,
      DailyDayDetailEntity? dayDetail,
      DateTime focusedDay,
      DateTime selectedDay,
      String? gridError,
      String? dayDetailError});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._self, this._then);

  final CalendarState _self;
  final $Res Function(CalendarState) _then;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridStatus = null,
    Object? dayDetailStatus = null,
    Object? calendar = freezed,
    Object? monthly = freezed,
    Object? dayDetail = freezed,
    Object? focusedDay = null,
    Object? selectedDay = null,
    Object? gridError = freezed,
    Object? dayDetailError = freezed,
  }) {
    return _then(_self.copyWith(
      gridStatus: null == gridStatus
          ? _self.gridStatus
          : gridStatus // ignore: cast_nullable_to_non_nullable
              as CalendarGridStatus,
      dayDetailStatus: null == dayDetailStatus
          ? _self.dayDetailStatus
          : dayDetailStatus // ignore: cast_nullable_to_non_nullable
              as CalendarDayDetailStatus,
      calendar: freezed == calendar
          ? _self.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as DailyCalendarEntity?,
      monthly: freezed == monthly
          ? _self.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as DailyMonthlyActivitiesEntity?,
      dayDetail: freezed == dayDetail
          ? _self.dayDetail
          : dayDetail // ignore: cast_nullable_to_non_nullable
              as DailyDayDetailEntity?,
      focusedDay: null == focusedDay
          ? _self.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gridError: freezed == gridError
          ? _self.gridError
          : gridError // ignore: cast_nullable_to_non_nullable
              as String?,
      dayDetailError: freezed == dayDetailError
          ? _self.dayDetailError
          : dayDetailError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CalendarState].
extension CalendarStatePatterns on CalendarState {
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
    TResult Function(_CalendarState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CalendarState() when $default != null:
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
    TResult Function(_CalendarState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarState():
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
    TResult? Function(_CalendarState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarState() when $default != null:
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
            CalendarGridStatus gridStatus,
            CalendarDayDetailStatus dayDetailStatus,
            DailyCalendarEntity? calendar,
            DailyMonthlyActivitiesEntity? monthly,
            DailyDayDetailEntity? dayDetail,
            DateTime focusedDay,
            DateTime selectedDay,
            String? gridError,
            String? dayDetailError)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CalendarState() when $default != null:
        return $default(
            _that.gridStatus,
            _that.dayDetailStatus,
            _that.calendar,
            _that.monthly,
            _that.dayDetail,
            _that.focusedDay,
            _that.selectedDay,
            _that.gridError,
            _that.dayDetailError);
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
            CalendarGridStatus gridStatus,
            CalendarDayDetailStatus dayDetailStatus,
            DailyCalendarEntity? calendar,
            DailyMonthlyActivitiesEntity? monthly,
            DailyDayDetailEntity? dayDetail,
            DateTime focusedDay,
            DateTime selectedDay,
            String? gridError,
            String? dayDetailError)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarState():
        return $default(
            _that.gridStatus,
            _that.dayDetailStatus,
            _that.calendar,
            _that.monthly,
            _that.dayDetail,
            _that.focusedDay,
            _that.selectedDay,
            _that.gridError,
            _that.dayDetailError);
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
            CalendarGridStatus gridStatus,
            CalendarDayDetailStatus dayDetailStatus,
            DailyCalendarEntity? calendar,
            DailyMonthlyActivitiesEntity? monthly,
            DailyDayDetailEntity? dayDetail,
            DateTime focusedDay,
            DateTime selectedDay,
            String? gridError,
            String? dayDetailError)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarState() when $default != null:
        return $default(
            _that.gridStatus,
            _that.dayDetailStatus,
            _that.calendar,
            _that.monthly,
            _that.dayDetail,
            _that.focusedDay,
            _that.selectedDay,
            _that.gridError,
            _that.dayDetailError);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CalendarState implements CalendarState {
  const _CalendarState(
      {this.gridStatus = CalendarGridStatus.initial,
      this.dayDetailStatus = CalendarDayDetailStatus.initial,
      this.calendar,
      this.monthly,
      this.dayDetail,
      required this.focusedDay,
      required this.selectedDay,
      this.gridError,
      this.dayDetailError});

  @override
  @JsonKey()
  final CalendarGridStatus gridStatus;
  @override
  @JsonKey()
  final CalendarDayDetailStatus dayDetailStatus;
  @override
  final DailyCalendarEntity? calendar;
  @override
  final DailyMonthlyActivitiesEntity? monthly;
  @override
  final DailyDayDetailEntity? dayDetail;
  @override
  final DateTime focusedDay;
  @override
  final DateTime selectedDay;
  @override
  final String? gridError;
  @override
  final String? dayDetailError;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CalendarStateCopyWith<_CalendarState> get copyWith =>
      __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarState &&
            (identical(other.gridStatus, gridStatus) ||
                other.gridStatus == gridStatus) &&
            (identical(other.dayDetailStatus, dayDetailStatus) ||
                other.dayDetailStatus == dayDetailStatus) &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar) &&
            (identical(other.monthly, monthly) || other.monthly == monthly) &&
            (identical(other.dayDetail, dayDetail) ||
                other.dayDetail == dayDetail) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.gridError, gridError) ||
                other.gridError == gridError) &&
            (identical(other.dayDetailError, dayDetailError) ||
                other.dayDetailError == dayDetailError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gridStatus,
      dayDetailStatus,
      calendar,
      monthly,
      dayDetail,
      focusedDay,
      selectedDay,
      gridError,
      dayDetailError);

  @override
  String toString() {
    return 'CalendarState(gridStatus: $gridStatus, dayDetailStatus: $dayDetailStatus, calendar: $calendar, monthly: $monthly, dayDetail: $dayDetail, focusedDay: $focusedDay, selectedDay: $selectedDay, gridError: $gridError, dayDetailError: $dayDetailError)';
  }
}

/// @nodoc
abstract mixin class _$CalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$CalendarStateCopyWith(
          _CalendarState value, $Res Function(_CalendarState) _then) =
      __$CalendarStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CalendarGridStatus gridStatus,
      CalendarDayDetailStatus dayDetailStatus,
      DailyCalendarEntity? calendar,
      DailyMonthlyActivitiesEntity? monthly,
      DailyDayDetailEntity? dayDetail,
      DateTime focusedDay,
      DateTime selectedDay,
      String? gridError,
      String? dayDetailError});
}

/// @nodoc
class __$CalendarStateCopyWithImpl<$Res>
    implements _$CalendarStateCopyWith<$Res> {
  __$CalendarStateCopyWithImpl(this._self, this._then);

  final _CalendarState _self;
  final $Res Function(_CalendarState) _then;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gridStatus = null,
    Object? dayDetailStatus = null,
    Object? calendar = freezed,
    Object? monthly = freezed,
    Object? dayDetail = freezed,
    Object? focusedDay = null,
    Object? selectedDay = null,
    Object? gridError = freezed,
    Object? dayDetailError = freezed,
  }) {
    return _then(_CalendarState(
      gridStatus: null == gridStatus
          ? _self.gridStatus
          : gridStatus // ignore: cast_nullable_to_non_nullable
              as CalendarGridStatus,
      dayDetailStatus: null == dayDetailStatus
          ? _self.dayDetailStatus
          : dayDetailStatus // ignore: cast_nullable_to_non_nullable
              as CalendarDayDetailStatus,
      calendar: freezed == calendar
          ? _self.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as DailyCalendarEntity?,
      monthly: freezed == monthly
          ? _self.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as DailyMonthlyActivitiesEntity?,
      dayDetail: freezed == dayDetail
          ? _self.dayDetail
          : dayDetail // ignore: cast_nullable_to_non_nullable
              as DailyDayDetailEntity?,
      focusedDay: null == focusedDay
          ? _self.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gridError: freezed == gridError
          ? _self.gridError
          : gridError // ignore: cast_nullable_to_non_nullable
              as String?,
      dayDetailError: freezed == dayDetailError
          ? _self.dayDetailError
          : dayDetailError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
