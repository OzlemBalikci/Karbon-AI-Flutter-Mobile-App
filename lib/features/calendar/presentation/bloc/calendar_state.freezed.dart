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
  CalendarAsyncStatus get calendarFirstOpenAsyncStatus;
  CalendarAsyncStatus get dayDetailAsyncStatus;
  CalendarAsyncStatus get monthlyAsyncStatus;
  CalendarAsyncStatus get selectedQuestionAsyncStatus;
  DailyCalendarEntity? get calendar;
  DailyMonthlyActivitiesEntity? get monthly;
  DailyDayDetailEntity? get dayDetail;
  ActivityQuestionOptionEntity? get selectedQuestion;
  DateTime get focusedDay;
  DateTime get selectedDay;
  String? get calendarFirstOpenError;
  String? get dayDetailError;
  String? get monthlyError;
  String? get selectedQuestionError;

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
            (identical(other.calendarFirstOpenAsyncStatus,
                    calendarFirstOpenAsyncStatus) ||
                other.calendarFirstOpenAsyncStatus ==
                    calendarFirstOpenAsyncStatus) &&
            (identical(other.dayDetailAsyncStatus, dayDetailAsyncStatus) ||
                other.dayDetailAsyncStatus == dayDetailAsyncStatus) &&
            (identical(other.monthlyAsyncStatus, monthlyAsyncStatus) ||
                other.monthlyAsyncStatus == monthlyAsyncStatus) &&
            (identical(other.selectedQuestionAsyncStatus,
                    selectedQuestionAsyncStatus) ||
                other.selectedQuestionAsyncStatus ==
                    selectedQuestionAsyncStatus) &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar) &&
            (identical(other.monthly, monthly) || other.monthly == monthly) &&
            (identical(other.dayDetail, dayDetail) ||
                other.dayDetail == dayDetail) &&
            (identical(other.selectedQuestion, selectedQuestion) ||
                other.selectedQuestion == selectedQuestion) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.calendarFirstOpenError, calendarFirstOpenError) ||
                other.calendarFirstOpenError == calendarFirstOpenError) &&
            (identical(other.dayDetailError, dayDetailError) ||
                other.dayDetailError == dayDetailError) &&
            (identical(other.monthlyError, monthlyError) ||
                other.monthlyError == monthlyError) &&
            (identical(other.selectedQuestionError, selectedQuestionError) ||
                other.selectedQuestionError == selectedQuestionError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      calendarFirstOpenAsyncStatus,
      dayDetailAsyncStatus,
      monthlyAsyncStatus,
      selectedQuestionAsyncStatus,
      calendar,
      monthly,
      dayDetail,
      selectedQuestion,
      focusedDay,
      selectedDay,
      calendarFirstOpenError,
      dayDetailError,
      monthlyError,
      selectedQuestionError);

  @override
  String toString() {
    return 'CalendarState(calendarFirstOpenAsyncStatus: $calendarFirstOpenAsyncStatus, dayDetailAsyncStatus: $dayDetailAsyncStatus, monthlyAsyncStatus: $monthlyAsyncStatus, selectedQuestionAsyncStatus: $selectedQuestionAsyncStatus, calendar: $calendar, monthly: $monthly, dayDetail: $dayDetail, selectedQuestion: $selectedQuestion, focusedDay: $focusedDay, selectedDay: $selectedDay, calendarFirstOpenError: $calendarFirstOpenError, dayDetailError: $dayDetailError, monthlyError: $monthlyError, selectedQuestionError: $selectedQuestionError)';
  }
}

/// @nodoc
abstract mixin class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) _then) =
      _$CalendarStateCopyWithImpl;
  @useResult
  $Res call(
      {CalendarAsyncStatus calendarFirstOpenAsyncStatus,
      CalendarAsyncStatus dayDetailAsyncStatus,
      CalendarAsyncStatus monthlyAsyncStatus,
      CalendarAsyncStatus selectedQuestionAsyncStatus,
      DailyCalendarEntity? calendar,
      DailyMonthlyActivitiesEntity? monthly,
      DailyDayDetailEntity? dayDetail,
      ActivityQuestionOptionEntity? selectedQuestion,
      DateTime focusedDay,
      DateTime selectedDay,
      String? calendarFirstOpenError,
      String? dayDetailError,
      String? monthlyError,
      String? selectedQuestionError});
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
    Object? calendarFirstOpenAsyncStatus = null,
    Object? dayDetailAsyncStatus = null,
    Object? monthlyAsyncStatus = null,
    Object? selectedQuestionAsyncStatus = null,
    Object? calendar = freezed,
    Object? monthly = freezed,
    Object? dayDetail = freezed,
    Object? selectedQuestion = freezed,
    Object? focusedDay = null,
    Object? selectedDay = null,
    Object? calendarFirstOpenError = freezed,
    Object? dayDetailError = freezed,
    Object? monthlyError = freezed,
    Object? selectedQuestionError = freezed,
  }) {
    return _then(_self.copyWith(
      calendarFirstOpenAsyncStatus: null == calendarFirstOpenAsyncStatus
          ? _self.calendarFirstOpenAsyncStatus
          : calendarFirstOpenAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
      dayDetailAsyncStatus: null == dayDetailAsyncStatus
          ? _self.dayDetailAsyncStatus
          : dayDetailAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
      monthlyAsyncStatus: null == monthlyAsyncStatus
          ? _self.monthlyAsyncStatus
          : monthlyAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
      selectedQuestionAsyncStatus: null == selectedQuestionAsyncStatus
          ? _self.selectedQuestionAsyncStatus
          : selectedQuestionAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
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
      selectedQuestion: freezed == selectedQuestion
          ? _self.selectedQuestion
          : selectedQuestion // ignore: cast_nullable_to_non_nullable
              as ActivityQuestionOptionEntity?,
      focusedDay: null == focusedDay
          ? _self.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarFirstOpenError: freezed == calendarFirstOpenError
          ? _self.calendarFirstOpenError
          : calendarFirstOpenError // ignore: cast_nullable_to_non_nullable
              as String?,
      dayDetailError: freezed == dayDetailError
          ? _self.dayDetailError
          : dayDetailError // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyError: freezed == monthlyError
          ? _self.monthlyError
          : monthlyError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedQuestionError: freezed == selectedQuestionError
          ? _self.selectedQuestionError
          : selectedQuestionError // ignore: cast_nullable_to_non_nullable
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
            CalendarAsyncStatus calendarFirstOpenAsyncStatus,
            CalendarAsyncStatus dayDetailAsyncStatus,
            CalendarAsyncStatus monthlyAsyncStatus,
            CalendarAsyncStatus selectedQuestionAsyncStatus,
            DailyCalendarEntity? calendar,
            DailyMonthlyActivitiesEntity? monthly,
            DailyDayDetailEntity? dayDetail,
            ActivityQuestionOptionEntity? selectedQuestion,
            DateTime focusedDay,
            DateTime selectedDay,
            String? calendarFirstOpenError,
            String? dayDetailError,
            String? monthlyError,
            String? selectedQuestionError)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CalendarState() when $default != null:
        return $default(
            _that.calendarFirstOpenAsyncStatus,
            _that.dayDetailAsyncStatus,
            _that.monthlyAsyncStatus,
            _that.selectedQuestionAsyncStatus,
            _that.calendar,
            _that.monthly,
            _that.dayDetail,
            _that.selectedQuestion,
            _that.focusedDay,
            _that.selectedDay,
            _that.calendarFirstOpenError,
            _that.dayDetailError,
            _that.monthlyError,
            _that.selectedQuestionError);
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
            CalendarAsyncStatus calendarFirstOpenAsyncStatus,
            CalendarAsyncStatus dayDetailAsyncStatus,
            CalendarAsyncStatus monthlyAsyncStatus,
            CalendarAsyncStatus selectedQuestionAsyncStatus,
            DailyCalendarEntity? calendar,
            DailyMonthlyActivitiesEntity? monthly,
            DailyDayDetailEntity? dayDetail,
            ActivityQuestionOptionEntity? selectedQuestion,
            DateTime focusedDay,
            DateTime selectedDay,
            String? calendarFirstOpenError,
            String? dayDetailError,
            String? monthlyError,
            String? selectedQuestionError)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarState():
        return $default(
            _that.calendarFirstOpenAsyncStatus,
            _that.dayDetailAsyncStatus,
            _that.monthlyAsyncStatus,
            _that.selectedQuestionAsyncStatus,
            _that.calendar,
            _that.monthly,
            _that.dayDetail,
            _that.selectedQuestion,
            _that.focusedDay,
            _that.selectedDay,
            _that.calendarFirstOpenError,
            _that.dayDetailError,
            _that.monthlyError,
            _that.selectedQuestionError);
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
            CalendarAsyncStatus calendarFirstOpenAsyncStatus,
            CalendarAsyncStatus dayDetailAsyncStatus,
            CalendarAsyncStatus monthlyAsyncStatus,
            CalendarAsyncStatus selectedQuestionAsyncStatus,
            DailyCalendarEntity? calendar,
            DailyMonthlyActivitiesEntity? monthly,
            DailyDayDetailEntity? dayDetail,
            ActivityQuestionOptionEntity? selectedQuestion,
            DateTime focusedDay,
            DateTime selectedDay,
            String? calendarFirstOpenError,
            String? dayDetailError,
            String? monthlyError,
            String? selectedQuestionError)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarState() when $default != null:
        return $default(
            _that.calendarFirstOpenAsyncStatus,
            _that.dayDetailAsyncStatus,
            _that.monthlyAsyncStatus,
            _that.selectedQuestionAsyncStatus,
            _that.calendar,
            _that.monthly,
            _that.dayDetail,
            _that.selectedQuestion,
            _that.focusedDay,
            _that.selectedDay,
            _that.calendarFirstOpenError,
            _that.dayDetailError,
            _that.monthlyError,
            _that.selectedQuestionError);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CalendarState implements CalendarState {
  const _CalendarState(
      {this.calendarFirstOpenAsyncStatus = CalendarAsyncStatus.initial,
      this.dayDetailAsyncStatus = CalendarAsyncStatus.initial,
      this.monthlyAsyncStatus = CalendarAsyncStatus.initial,
      this.selectedQuestionAsyncStatus = CalendarAsyncStatus.initial,
      this.calendar,
      this.monthly,
      this.dayDetail,
      this.selectedQuestion,
      required this.focusedDay,
      required this.selectedDay,
      this.calendarFirstOpenError,
      this.dayDetailError,
      this.monthlyError,
      this.selectedQuestionError});

  @override
  @JsonKey()
  final CalendarAsyncStatus calendarFirstOpenAsyncStatus;
  @override
  @JsonKey()
  final CalendarAsyncStatus dayDetailAsyncStatus;
  @override
  @JsonKey()
  final CalendarAsyncStatus monthlyAsyncStatus;
  @override
  @JsonKey()
  final CalendarAsyncStatus selectedQuestionAsyncStatus;
  @override
  final DailyCalendarEntity? calendar;
  @override
  final DailyMonthlyActivitiesEntity? monthly;
  @override
  final DailyDayDetailEntity? dayDetail;
  @override
  final ActivityQuestionOptionEntity? selectedQuestion;
  @override
  final DateTime focusedDay;
  @override
  final DateTime selectedDay;
  @override
  final String? calendarFirstOpenError;
  @override
  final String? dayDetailError;
  @override
  final String? monthlyError;
  @override
  final String? selectedQuestionError;

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
            (identical(other.calendarFirstOpenAsyncStatus,
                    calendarFirstOpenAsyncStatus) ||
                other.calendarFirstOpenAsyncStatus ==
                    calendarFirstOpenAsyncStatus) &&
            (identical(other.dayDetailAsyncStatus, dayDetailAsyncStatus) ||
                other.dayDetailAsyncStatus == dayDetailAsyncStatus) &&
            (identical(other.monthlyAsyncStatus, monthlyAsyncStatus) ||
                other.monthlyAsyncStatus == monthlyAsyncStatus) &&
            (identical(other.selectedQuestionAsyncStatus,
                    selectedQuestionAsyncStatus) ||
                other.selectedQuestionAsyncStatus ==
                    selectedQuestionAsyncStatus) &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar) &&
            (identical(other.monthly, monthly) || other.monthly == monthly) &&
            (identical(other.dayDetail, dayDetail) ||
                other.dayDetail == dayDetail) &&
            (identical(other.selectedQuestion, selectedQuestion) ||
                other.selectedQuestion == selectedQuestion) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.calendarFirstOpenError, calendarFirstOpenError) ||
                other.calendarFirstOpenError == calendarFirstOpenError) &&
            (identical(other.dayDetailError, dayDetailError) ||
                other.dayDetailError == dayDetailError) &&
            (identical(other.monthlyError, monthlyError) ||
                other.monthlyError == monthlyError) &&
            (identical(other.selectedQuestionError, selectedQuestionError) ||
                other.selectedQuestionError == selectedQuestionError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      calendarFirstOpenAsyncStatus,
      dayDetailAsyncStatus,
      monthlyAsyncStatus,
      selectedQuestionAsyncStatus,
      calendar,
      monthly,
      dayDetail,
      selectedQuestion,
      focusedDay,
      selectedDay,
      calendarFirstOpenError,
      dayDetailError,
      monthlyError,
      selectedQuestionError);

  @override
  String toString() {
    return 'CalendarState(calendarFirstOpenAsyncStatus: $calendarFirstOpenAsyncStatus, dayDetailAsyncStatus: $dayDetailAsyncStatus, monthlyAsyncStatus: $monthlyAsyncStatus, selectedQuestionAsyncStatus: $selectedQuestionAsyncStatus, calendar: $calendar, monthly: $monthly, dayDetail: $dayDetail, selectedQuestion: $selectedQuestion, focusedDay: $focusedDay, selectedDay: $selectedDay, calendarFirstOpenError: $calendarFirstOpenError, dayDetailError: $dayDetailError, monthlyError: $monthlyError, selectedQuestionError: $selectedQuestionError)';
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
      {CalendarAsyncStatus calendarFirstOpenAsyncStatus,
      CalendarAsyncStatus dayDetailAsyncStatus,
      CalendarAsyncStatus monthlyAsyncStatus,
      CalendarAsyncStatus selectedQuestionAsyncStatus,
      DailyCalendarEntity? calendar,
      DailyMonthlyActivitiesEntity? monthly,
      DailyDayDetailEntity? dayDetail,
      ActivityQuestionOptionEntity? selectedQuestion,
      DateTime focusedDay,
      DateTime selectedDay,
      String? calendarFirstOpenError,
      String? dayDetailError,
      String? monthlyError,
      String? selectedQuestionError});
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
    Object? calendarFirstOpenAsyncStatus = null,
    Object? dayDetailAsyncStatus = null,
    Object? monthlyAsyncStatus = null,
    Object? selectedQuestionAsyncStatus = null,
    Object? calendar = freezed,
    Object? monthly = freezed,
    Object? dayDetail = freezed,
    Object? selectedQuestion = freezed,
    Object? focusedDay = null,
    Object? selectedDay = null,
    Object? calendarFirstOpenError = freezed,
    Object? dayDetailError = freezed,
    Object? monthlyError = freezed,
    Object? selectedQuestionError = freezed,
  }) {
    return _then(_CalendarState(
      calendarFirstOpenAsyncStatus: null == calendarFirstOpenAsyncStatus
          ? _self.calendarFirstOpenAsyncStatus
          : calendarFirstOpenAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
      dayDetailAsyncStatus: null == dayDetailAsyncStatus
          ? _self.dayDetailAsyncStatus
          : dayDetailAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
      monthlyAsyncStatus: null == monthlyAsyncStatus
          ? _self.monthlyAsyncStatus
          : monthlyAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
      selectedQuestionAsyncStatus: null == selectedQuestionAsyncStatus
          ? _self.selectedQuestionAsyncStatus
          : selectedQuestionAsyncStatus // ignore: cast_nullable_to_non_nullable
              as CalendarAsyncStatus,
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
      selectedQuestion: freezed == selectedQuestion
          ? _self.selectedQuestion
          : selectedQuestion // ignore: cast_nullable_to_non_nullable
              as ActivityQuestionOptionEntity?,
      focusedDay: null == focusedDay
          ? _self.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarFirstOpenError: freezed == calendarFirstOpenError
          ? _self.calendarFirstOpenError
          : calendarFirstOpenError // ignore: cast_nullable_to_non_nullable
              as String?,
      dayDetailError: freezed == dayDetailError
          ? _self.dayDetailError
          : dayDetailError // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyError: freezed == monthlyError
          ? _self.monthlyError
          : monthlyError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedQuestionError: freezed == selectedQuestionError
          ? _self.selectedQuestionError
          : selectedQuestionError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
