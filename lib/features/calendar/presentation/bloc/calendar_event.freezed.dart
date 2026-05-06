// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CalendarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CalendarEvent()';
  }
}

/// @nodoc
class $CalendarEventCopyWith<$Res> {
  $CalendarEventCopyWith(CalendarEvent _, $Res Function(CalendarEvent) __);
}

/// Adds pattern-matching-related methods to [CalendarEvent].
extension CalendarEventPatterns on CalendarEvent {
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
    TResult Function(CalendarStarted value)? started,
    TResult Function(CalendarFirstOpenPageOpened value)?
        calendarFirstOpenPageOpened,
    TResult Function(CalendarDayDetailPageOpened value)? dayDetailPageOpened,
    TResult Function(CalendarQuestionDetailPageOpened value)?
        questionDetailPageOpened,
    TResult Function(CalendarMonthDetailPageOpened value)?
        monthDetailPageOpened,
    TResult Function(CalendarDaySelected value)? daySelected,
    TResult Function(CalendarPageScrolled value)? pageScrolled,
    TResult Function(CalendarPreviousMonthTapped value)? previousMonthTapped,
    TResult Function(CalendarNextMonthTapped value)? nextMonthTapped,
    TResult Function(CalendarQuestionDetailDismissed value)?
        questionDetailDismissed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that);
      case CalendarFirstOpenPageOpened()
          when calendarFirstOpenPageOpened != null:
        return calendarFirstOpenPageOpened(_that);
      case CalendarDayDetailPageOpened() when dayDetailPageOpened != null:
        return dayDetailPageOpened(_that);
      case CalendarQuestionDetailPageOpened()
          when questionDetailPageOpened != null:
        return questionDetailPageOpened(_that);
      case CalendarMonthDetailPageOpened() when monthDetailPageOpened != null:
        return monthDetailPageOpened(_that);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that);
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that);
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped(_that);
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped(_that);
      case CalendarQuestionDetailDismissed()
          when questionDetailDismissed != null:
        return questionDetailDismissed(_that);
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
    required TResult Function(CalendarStarted value) started,
    required TResult Function(CalendarFirstOpenPageOpened value)
        calendarFirstOpenPageOpened,
    required TResult Function(CalendarDayDetailPageOpened value)
        dayDetailPageOpened,
    required TResult Function(CalendarQuestionDetailPageOpened value)
        questionDetailPageOpened,
    required TResult Function(CalendarMonthDetailPageOpened value)
        monthDetailPageOpened,
    required TResult Function(CalendarDaySelected value) daySelected,
    required TResult Function(CalendarPageScrolled value) pageScrolled,
    required TResult Function(CalendarPreviousMonthTapped value)
        previousMonthTapped,
    required TResult Function(CalendarNextMonthTapped value) nextMonthTapped,
    required TResult Function(CalendarQuestionDetailDismissed value)
        questionDetailDismissed,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted():
        return started(_that);
      case CalendarFirstOpenPageOpened():
        return calendarFirstOpenPageOpened(_that);
      case CalendarDayDetailPageOpened():
        return dayDetailPageOpened(_that);
      case CalendarQuestionDetailPageOpened():
        return questionDetailPageOpened(_that);
      case CalendarMonthDetailPageOpened():
        return monthDetailPageOpened(_that);
      case CalendarDaySelected():
        return daySelected(_that);
      case CalendarPageScrolled():
        return pageScrolled(_that);
      case CalendarPreviousMonthTapped():
        return previousMonthTapped(_that);
      case CalendarNextMonthTapped():
        return nextMonthTapped(_that);
      case CalendarQuestionDetailDismissed():
        return questionDetailDismissed(_that);
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
    TResult? Function(CalendarStarted value)? started,
    TResult? Function(CalendarFirstOpenPageOpened value)?
        calendarFirstOpenPageOpened,
    TResult? Function(CalendarDayDetailPageOpened value)? dayDetailPageOpened,
    TResult? Function(CalendarQuestionDetailPageOpened value)?
        questionDetailPageOpened,
    TResult? Function(CalendarMonthDetailPageOpened value)?
        monthDetailPageOpened,
    TResult? Function(CalendarDaySelected value)? daySelected,
    TResult? Function(CalendarPageScrolled value)? pageScrolled,
    TResult? Function(CalendarPreviousMonthTapped value)? previousMonthTapped,
    TResult? Function(CalendarNextMonthTapped value)? nextMonthTapped,
    TResult? Function(CalendarQuestionDetailDismissed value)?
        questionDetailDismissed,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that);
      case CalendarFirstOpenPageOpened()
          when calendarFirstOpenPageOpened != null:
        return calendarFirstOpenPageOpened(_that);
      case CalendarDayDetailPageOpened() when dayDetailPageOpened != null:
        return dayDetailPageOpened(_that);
      case CalendarQuestionDetailPageOpened()
          when questionDetailPageOpened != null:
        return questionDetailPageOpened(_that);
      case CalendarMonthDetailPageOpened() when monthDetailPageOpened != null:
        return monthDetailPageOpened(_that);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that);
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that);
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped(_that);
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped(_that);
      case CalendarQuestionDetailDismissed()
          when questionDetailDismissed != null:
        return questionDetailDismissed(_that);
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
    TResult Function(DateTime? initialDay)? started,
    TResult Function(DateTime focusedDay, DateTime selectedDay)?
        calendarFirstOpenPageOpened,
    TResult Function(DateTime selectedDay)? dayDetailPageOpened,
    TResult Function(String questionId)? questionDetailPageOpened,
    TResult Function(int year, int month)? monthDetailPageOpened,
    TResult Function(DateTime focusedDay, DateTime selectedDay)? daySelected,
    TResult Function(DateTime focusedDay)? pageScrolled,
    TResult Function()? previousMonthTapped,
    TResult Function()? nextMonthTapped,
    TResult Function()? questionDetailDismissed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that.initialDay);
      case CalendarFirstOpenPageOpened()
          when calendarFirstOpenPageOpened != null:
        return calendarFirstOpenPageOpened(_that.focusedDay, _that.selectedDay);
      case CalendarDayDetailPageOpened() when dayDetailPageOpened != null:
        return dayDetailPageOpened(_that.selectedDay);
      case CalendarQuestionDetailPageOpened()
          when questionDetailPageOpened != null:
        return questionDetailPageOpened(_that.questionId);
      case CalendarMonthDetailPageOpened() when monthDetailPageOpened != null:
        return monthDetailPageOpened(_that.year, _that.month);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that.focusedDay, _that.selectedDay);
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that.focusedDay);
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped();
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped();
      case CalendarQuestionDetailDismissed()
          when questionDetailDismissed != null:
        return questionDetailDismissed();
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
    required TResult Function(DateTime? initialDay) started,
    required TResult Function(DateTime focusedDay, DateTime selectedDay)
        calendarFirstOpenPageOpened,
    required TResult Function(DateTime selectedDay) dayDetailPageOpened,
    required TResult Function(String questionId) questionDetailPageOpened,
    required TResult Function(int year, int month) monthDetailPageOpened,
    required TResult Function(DateTime focusedDay, DateTime selectedDay)
        daySelected,
    required TResult Function(DateTime focusedDay) pageScrolled,
    required TResult Function() previousMonthTapped,
    required TResult Function() nextMonthTapped,
    required TResult Function() questionDetailDismissed,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted():
        return started(_that.initialDay);
      case CalendarFirstOpenPageOpened():
        return calendarFirstOpenPageOpened(_that.focusedDay, _that.selectedDay);
      case CalendarDayDetailPageOpened():
        return dayDetailPageOpened(_that.selectedDay);
      case CalendarQuestionDetailPageOpened():
        return questionDetailPageOpened(_that.questionId);
      case CalendarMonthDetailPageOpened():
        return monthDetailPageOpened(_that.year, _that.month);
      case CalendarDaySelected():
        return daySelected(_that.focusedDay, _that.selectedDay);
      case CalendarPageScrolled():
        return pageScrolled(_that.focusedDay);
      case CalendarPreviousMonthTapped():
        return previousMonthTapped();
      case CalendarNextMonthTapped():
        return nextMonthTapped();
      case CalendarQuestionDetailDismissed():
        return questionDetailDismissed();
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
    TResult? Function(DateTime? initialDay)? started,
    TResult? Function(DateTime focusedDay, DateTime selectedDay)?
        calendarFirstOpenPageOpened,
    TResult? Function(DateTime selectedDay)? dayDetailPageOpened,
    TResult? Function(String questionId)? questionDetailPageOpened,
    TResult? Function(int year, int month)? monthDetailPageOpened,
    TResult? Function(DateTime focusedDay, DateTime selectedDay)? daySelected,
    TResult? Function(DateTime focusedDay)? pageScrolled,
    TResult? Function()? previousMonthTapped,
    TResult? Function()? nextMonthTapped,
    TResult? Function()? questionDetailDismissed,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that.initialDay);
      case CalendarFirstOpenPageOpened()
          when calendarFirstOpenPageOpened != null:
        return calendarFirstOpenPageOpened(_that.focusedDay, _that.selectedDay);
      case CalendarDayDetailPageOpened() when dayDetailPageOpened != null:
        return dayDetailPageOpened(_that.selectedDay);
      case CalendarQuestionDetailPageOpened()
          when questionDetailPageOpened != null:
        return questionDetailPageOpened(_that.questionId);
      case CalendarMonthDetailPageOpened() when monthDetailPageOpened != null:
        return monthDetailPageOpened(_that.year, _that.month);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that.focusedDay, _that.selectedDay);
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that.focusedDay);
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped();
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped();
      case CalendarQuestionDetailDismissed()
          when questionDetailDismissed != null:
        return questionDetailDismissed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class CalendarStarted implements CalendarEvent {
  const CalendarStarted({this.initialDay});

  final DateTime? initialDay;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarStartedCopyWith<CalendarStarted> get copyWith =>
      _$CalendarStartedCopyWithImpl<CalendarStarted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarStarted &&
            (identical(other.initialDay, initialDay) ||
                other.initialDay == initialDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialDay);

  @override
  String toString() {
    return 'CalendarEvent.started(initialDay: $initialDay)';
  }
}

/// @nodoc
abstract mixin class $CalendarStartedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarStartedCopyWith(
          CalendarStarted value, $Res Function(CalendarStarted) _then) =
      _$CalendarStartedCopyWithImpl;
  @useResult
  $Res call({DateTime? initialDay});
}

/// @nodoc
class _$CalendarStartedCopyWithImpl<$Res>
    implements $CalendarStartedCopyWith<$Res> {
  _$CalendarStartedCopyWithImpl(this._self, this._then);

  final CalendarStarted _self;
  final $Res Function(CalendarStarted) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? initialDay = freezed,
  }) {
    return _then(CalendarStarted(
      initialDay: freezed == initialDay
          ? _self.initialDay
          : initialDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class CalendarFirstOpenPageOpened implements CalendarEvent {
  const CalendarFirstOpenPageOpened(
      {required this.focusedDay, required this.selectedDay});

  final DateTime focusedDay;
  final DateTime selectedDay;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarFirstOpenPageOpenedCopyWith<CalendarFirstOpenPageOpened>
      get copyWith => _$CalendarFirstOpenPageOpenedCopyWithImpl<
          CalendarFirstOpenPageOpened>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarFirstOpenPageOpened &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay, selectedDay);

  @override
  String toString() {
    return 'CalendarEvent.calendarFirstOpenPageOpened(focusedDay: $focusedDay, selectedDay: $selectedDay)';
  }
}

/// @nodoc
abstract mixin class $CalendarFirstOpenPageOpenedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarFirstOpenPageOpenedCopyWith(
          CalendarFirstOpenPageOpened value,
          $Res Function(CalendarFirstOpenPageOpened) _then) =
      _$CalendarFirstOpenPageOpenedCopyWithImpl;
  @useResult
  $Res call({DateTime focusedDay, DateTime selectedDay});
}

/// @nodoc
class _$CalendarFirstOpenPageOpenedCopyWithImpl<$Res>
    implements $CalendarFirstOpenPageOpenedCopyWith<$Res> {
  _$CalendarFirstOpenPageOpenedCopyWithImpl(this._self, this._then);

  final CalendarFirstOpenPageOpened _self;
  final $Res Function(CalendarFirstOpenPageOpened) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? focusedDay = null,
    Object? selectedDay = null,
  }) {
    return _then(CalendarFirstOpenPageOpened(
      focusedDay: null == focusedDay
          ? _self.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class CalendarDayDetailPageOpened implements CalendarEvent {
  const CalendarDayDetailPageOpened({required this.selectedDay});

  final DateTime selectedDay;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarDayDetailPageOpenedCopyWith<CalendarDayDetailPageOpened>
      get copyWith => _$CalendarDayDetailPageOpenedCopyWithImpl<
          CalendarDayDetailPageOpened>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarDayDetailPageOpened &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay);

  @override
  String toString() {
    return 'CalendarEvent.dayDetailPageOpened(selectedDay: $selectedDay)';
  }
}

/// @nodoc
abstract mixin class $CalendarDayDetailPageOpenedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarDayDetailPageOpenedCopyWith(
          CalendarDayDetailPageOpened value,
          $Res Function(CalendarDayDetailPageOpened) _then) =
      _$CalendarDayDetailPageOpenedCopyWithImpl;
  @useResult
  $Res call({DateTime selectedDay});
}

/// @nodoc
class _$CalendarDayDetailPageOpenedCopyWithImpl<$Res>
    implements $CalendarDayDetailPageOpenedCopyWith<$Res> {
  _$CalendarDayDetailPageOpenedCopyWithImpl(this._self, this._then);

  final CalendarDayDetailPageOpened _self;
  final $Res Function(CalendarDayDetailPageOpened) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedDay = null,
  }) {
    return _then(CalendarDayDetailPageOpened(
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class CalendarQuestionDetailPageOpened implements CalendarEvent {
  const CalendarQuestionDetailPageOpened({required this.questionId});

  final String questionId;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarQuestionDetailPageOpenedCopyWith<CalendarQuestionDetailPageOpened>
      get copyWith => _$CalendarQuestionDetailPageOpenedCopyWithImpl<
          CalendarQuestionDetailPageOpened>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarQuestionDetailPageOpened &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @override
  String toString() {
    return 'CalendarEvent.questionDetailPageOpened(questionId: $questionId)';
  }
}

/// @nodoc
abstract mixin class $CalendarQuestionDetailPageOpenedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarQuestionDetailPageOpenedCopyWith(
          CalendarQuestionDetailPageOpened value,
          $Res Function(CalendarQuestionDetailPageOpened) _then) =
      _$CalendarQuestionDetailPageOpenedCopyWithImpl;
  @useResult
  $Res call({String questionId});
}

/// @nodoc
class _$CalendarQuestionDetailPageOpenedCopyWithImpl<$Res>
    implements $CalendarQuestionDetailPageOpenedCopyWith<$Res> {
  _$CalendarQuestionDetailPageOpenedCopyWithImpl(this._self, this._then);

  final CalendarQuestionDetailPageOpened _self;
  final $Res Function(CalendarQuestionDetailPageOpened) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
  }) {
    return _then(CalendarQuestionDetailPageOpened(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CalendarMonthDetailPageOpened implements CalendarEvent {
  const CalendarMonthDetailPageOpened(
      {required this.year, required this.month});

  final int year;
  final int month;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarMonthDetailPageOpenedCopyWith<CalendarMonthDetailPageOpened>
      get copyWith => _$CalendarMonthDetailPageOpenedCopyWithImpl<
          CalendarMonthDetailPageOpened>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarMonthDetailPageOpened &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month);

  @override
  String toString() {
    return 'CalendarEvent.monthDetailPageOpened(year: $year, month: $month)';
  }
}

/// @nodoc
abstract mixin class $CalendarMonthDetailPageOpenedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarMonthDetailPageOpenedCopyWith(
          CalendarMonthDetailPageOpened value,
          $Res Function(CalendarMonthDetailPageOpened) _then) =
      _$CalendarMonthDetailPageOpenedCopyWithImpl;
  @useResult
  $Res call({int year, int month});
}

/// @nodoc
class _$CalendarMonthDetailPageOpenedCopyWithImpl<$Res>
    implements $CalendarMonthDetailPageOpenedCopyWith<$Res> {
  _$CalendarMonthDetailPageOpenedCopyWithImpl(this._self, this._then);

  final CalendarMonthDetailPageOpened _self;
  final $Res Function(CalendarMonthDetailPageOpened) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(CalendarMonthDetailPageOpened(
      year: null == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class CalendarDaySelected implements CalendarEvent {
  const CalendarDaySelected(
      {required this.focusedDay, required this.selectedDay});

  final DateTime focusedDay;
  final DateTime selectedDay;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarDaySelectedCopyWith<CalendarDaySelected> get copyWith =>
      _$CalendarDaySelectedCopyWithImpl<CalendarDaySelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarDaySelected &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay, selectedDay);

  @override
  String toString() {
    return 'CalendarEvent.daySelected(focusedDay: $focusedDay, selectedDay: $selectedDay)';
  }
}

/// @nodoc
abstract mixin class $CalendarDaySelectedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarDaySelectedCopyWith(
          CalendarDaySelected value, $Res Function(CalendarDaySelected) _then) =
      _$CalendarDaySelectedCopyWithImpl;
  @useResult
  $Res call({DateTime focusedDay, DateTime selectedDay});
}

/// @nodoc
class _$CalendarDaySelectedCopyWithImpl<$Res>
    implements $CalendarDaySelectedCopyWith<$Res> {
  _$CalendarDaySelectedCopyWithImpl(this._self, this._then);

  final CalendarDaySelected _self;
  final $Res Function(CalendarDaySelected) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? focusedDay = null,
    Object? selectedDay = null,
  }) {
    return _then(CalendarDaySelected(
      focusedDay: null == focusedDay
          ? _self.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class CalendarPageScrolled implements CalendarEvent {
  const CalendarPageScrolled({required this.focusedDay});

  final DateTime focusedDay;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarPageScrolledCopyWith<CalendarPageScrolled> get copyWith =>
      _$CalendarPageScrolledCopyWithImpl<CalendarPageScrolled>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarPageScrolled &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay);

  @override
  String toString() {
    return 'CalendarEvent.pageScrolled(focusedDay: $focusedDay)';
  }
}

/// @nodoc
abstract mixin class $CalendarPageScrolledCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarPageScrolledCopyWith(CalendarPageScrolled value,
          $Res Function(CalendarPageScrolled) _then) =
      _$CalendarPageScrolledCopyWithImpl;
  @useResult
  $Res call({DateTime focusedDay});
}

/// @nodoc
class _$CalendarPageScrolledCopyWithImpl<$Res>
    implements $CalendarPageScrolledCopyWith<$Res> {
  _$CalendarPageScrolledCopyWithImpl(this._self, this._then);

  final CalendarPageScrolled _self;
  final $Res Function(CalendarPageScrolled) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? focusedDay = null,
  }) {
    return _then(CalendarPageScrolled(
      focusedDay: null == focusedDay
          ? _self.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class CalendarPreviousMonthTapped implements CalendarEvent {
  const CalendarPreviousMonthTapped();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarPreviousMonthTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CalendarEvent.previousMonthTapped()';
  }
}

/// @nodoc

class CalendarNextMonthTapped implements CalendarEvent {
  const CalendarNextMonthTapped();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CalendarNextMonthTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CalendarEvent.nextMonthTapped()';
  }
}

/// @nodoc

class CalendarQuestionDetailDismissed implements CalendarEvent {
  const CalendarQuestionDetailDismissed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarQuestionDetailDismissed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CalendarEvent.questionDetailDismissed()';
  }
}

// dart format on
