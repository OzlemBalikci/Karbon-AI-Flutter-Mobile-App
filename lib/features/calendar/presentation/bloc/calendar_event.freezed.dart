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
    TResult Function(CalendarRefreshRequested value)? refreshRequested,
    TResult Function(CalendarPreviousMonthTapped value)? previousMonthTapped,
    TResult Function(CalendarNextMonthTapped value)? nextMonthTapped,
    TResult Function(CalendarPageScrolled value)? pageScrolled,
    TResult Function(CalendarDaySelected value)? daySelected,
    TResult Function(CalendarRetryTapped value)? retryTapped,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that);
      case CalendarRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped(_that);
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped(_that);
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that);
      case CalendarRetryTapped() when retryTapped != null:
        return retryTapped(_that);
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
    required TResult Function(CalendarRefreshRequested value) refreshRequested,
    required TResult Function(CalendarPreviousMonthTapped value)
        previousMonthTapped,
    required TResult Function(CalendarNextMonthTapped value) nextMonthTapped,
    required TResult Function(CalendarPageScrolled value) pageScrolled,
    required TResult Function(CalendarDaySelected value) daySelected,
    required TResult Function(CalendarRetryTapped value) retryTapped,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted():
        return started(_that);
      case CalendarRefreshRequested():
        return refreshRequested(_that);
      case CalendarPreviousMonthTapped():
        return previousMonthTapped(_that);
      case CalendarNextMonthTapped():
        return nextMonthTapped(_that);
      case CalendarPageScrolled():
        return pageScrolled(_that);
      case CalendarDaySelected():
        return daySelected(_that);
      case CalendarRetryTapped():
        return retryTapped(_that);
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
    TResult? Function(CalendarRefreshRequested value)? refreshRequested,
    TResult? Function(CalendarPreviousMonthTapped value)? previousMonthTapped,
    TResult? Function(CalendarNextMonthTapped value)? nextMonthTapped,
    TResult? Function(CalendarPageScrolled value)? pageScrolled,
    TResult? Function(CalendarDaySelected value)? daySelected,
    TResult? Function(CalendarRetryTapped value)? retryTapped,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that);
      case CalendarRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped(_that);
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped(_that);
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that);
      case CalendarRetryTapped() when retryTapped != null:
        return retryTapped(_that);
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
    TResult Function()? refreshRequested,
    TResult Function()? previousMonthTapped,
    TResult Function()? nextMonthTapped,
    TResult Function(DateTime focusedDay)? pageScrolled,
    TResult Function(DateTime focusedDay, DateTime selectedDay)? daySelected,
    TResult Function()? retryTapped,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that.initialDay);
      case CalendarRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped();
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped();
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that.focusedDay);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that.focusedDay, _that.selectedDay);
      case CalendarRetryTapped() when retryTapped != null:
        return retryTapped();
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
    required TResult Function() refreshRequested,
    required TResult Function() previousMonthTapped,
    required TResult Function() nextMonthTapped,
    required TResult Function(DateTime focusedDay) pageScrolled,
    required TResult Function(DateTime focusedDay, DateTime selectedDay)
        daySelected,
    required TResult Function() retryTapped,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted():
        return started(_that.initialDay);
      case CalendarRefreshRequested():
        return refreshRequested();
      case CalendarPreviousMonthTapped():
        return previousMonthTapped();
      case CalendarNextMonthTapped():
        return nextMonthTapped();
      case CalendarPageScrolled():
        return pageScrolled(_that.focusedDay);
      case CalendarDaySelected():
        return daySelected(_that.focusedDay, _that.selectedDay);
      case CalendarRetryTapped():
        return retryTapped();
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
    TResult? Function()? refreshRequested,
    TResult? Function()? previousMonthTapped,
    TResult? Function()? nextMonthTapped,
    TResult? Function(DateTime focusedDay)? pageScrolled,
    TResult? Function(DateTime focusedDay, DateTime selectedDay)? daySelected,
    TResult? Function()? retryTapped,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that.initialDay);
      case CalendarRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case CalendarPreviousMonthTapped() when previousMonthTapped != null:
        return previousMonthTapped();
      case CalendarNextMonthTapped() when nextMonthTapped != null:
        return nextMonthTapped();
      case CalendarPageScrolled() when pageScrolled != null:
        return pageScrolled(_that.focusedDay);
      case CalendarDaySelected() when daySelected != null:
        return daySelected(_that.focusedDay, _that.selectedDay);
      case CalendarRetryTapped() when retryTapped != null:
        return retryTapped();
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

class CalendarRefreshRequested implements CalendarEvent {
  const CalendarRefreshRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CalendarRefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CalendarEvent.refreshRequested()';
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

class CalendarRetryTapped implements CalendarEvent {
  const CalendarRetryTapped();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CalendarRetryTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CalendarEvent.retryTapped()';
  }
}

// dart format on
