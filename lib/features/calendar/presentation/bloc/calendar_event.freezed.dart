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
    TResult Function(CalendarGridReloadRequested value)? gridReloadRequested,
    TResult Function(CalendarDaySelectionChanged value)? daySelectionChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that);
      case CalendarGridReloadRequested() when gridReloadRequested != null:
        return gridReloadRequested(_that);
      case CalendarDaySelectionChanged() when daySelectionChanged != null:
        return daySelectionChanged(_that);
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
    required TResult Function(CalendarGridReloadRequested value)
        gridReloadRequested,
    required TResult Function(CalendarDaySelectionChanged value)
        daySelectionChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted():
        return started(_that);
      case CalendarGridReloadRequested():
        return gridReloadRequested(_that);
      case CalendarDaySelectionChanged():
        return daySelectionChanged(_that);
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
    TResult? Function(CalendarGridReloadRequested value)? gridReloadRequested,
    TResult? Function(CalendarDaySelectionChanged value)? daySelectionChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that);
      case CalendarGridReloadRequested() when gridReloadRequested != null:
        return gridReloadRequested(_that);
      case CalendarDaySelectionChanged() when daySelectionChanged != null:
        return daySelectionChanged(_that);
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
        gridReloadRequested,
    TResult Function(DateTime focusedDay, DateTime selectedDay)?
        daySelectionChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that.initialDay);
      case CalendarGridReloadRequested() when gridReloadRequested != null:
        return gridReloadRequested(_that.focusedDay, _that.selectedDay);
      case CalendarDaySelectionChanged() when daySelectionChanged != null:
        return daySelectionChanged(_that.focusedDay, _that.selectedDay);
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
        gridReloadRequested,
    required TResult Function(DateTime focusedDay, DateTime selectedDay)
        daySelectionChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted():
        return started(_that.initialDay);
      case CalendarGridReloadRequested():
        return gridReloadRequested(_that.focusedDay, _that.selectedDay);
      case CalendarDaySelectionChanged():
        return daySelectionChanged(_that.focusedDay, _that.selectedDay);
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
        gridReloadRequested,
    TResult? Function(DateTime focusedDay, DateTime selectedDay)?
        daySelectionChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CalendarStarted() when started != null:
        return started(_that.initialDay);
      case CalendarGridReloadRequested() when gridReloadRequested != null:
        return gridReloadRequested(_that.focusedDay, _that.selectedDay);
      case CalendarDaySelectionChanged() when daySelectionChanged != null:
        return daySelectionChanged(_that.focusedDay, _that.selectedDay);
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

class CalendarGridReloadRequested implements CalendarEvent {
  const CalendarGridReloadRequested(
      {required this.focusedDay, required this.selectedDay});

  final DateTime focusedDay;
  final DateTime selectedDay;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarGridReloadRequestedCopyWith<CalendarGridReloadRequested>
      get copyWith => _$CalendarGridReloadRequestedCopyWithImpl<
          CalendarGridReloadRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarGridReloadRequested &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay, selectedDay);

  @override
  String toString() {
    return 'CalendarEvent.gridReloadRequested(focusedDay: $focusedDay, selectedDay: $selectedDay)';
  }
}

/// @nodoc
abstract mixin class $CalendarGridReloadRequestedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarGridReloadRequestedCopyWith(
          CalendarGridReloadRequested value,
          $Res Function(CalendarGridReloadRequested) _then) =
      _$CalendarGridReloadRequestedCopyWithImpl;
  @useResult
  $Res call({DateTime focusedDay, DateTime selectedDay});
}

/// @nodoc
class _$CalendarGridReloadRequestedCopyWithImpl<$Res>
    implements $CalendarGridReloadRequestedCopyWith<$Res> {
  _$CalendarGridReloadRequestedCopyWithImpl(this._self, this._then);

  final CalendarGridReloadRequested _self;
  final $Res Function(CalendarGridReloadRequested) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? focusedDay = null,
    Object? selectedDay = null,
  }) {
    return _then(CalendarGridReloadRequested(
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

class CalendarDaySelectionChanged implements CalendarEvent {
  const CalendarDaySelectionChanged(
      {required this.focusedDay, required this.selectedDay});

  final DateTime focusedDay;
  final DateTime selectedDay;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarDaySelectionChangedCopyWith<CalendarDaySelectionChanged>
      get copyWith => _$CalendarDaySelectionChangedCopyWithImpl<
          CalendarDaySelectionChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarDaySelectionChanged &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay, selectedDay);

  @override
  String toString() {
    return 'CalendarEvent.daySelectionChanged(focusedDay: $focusedDay, selectedDay: $selectedDay)';
  }
}

/// @nodoc
abstract mixin class $CalendarDaySelectionChangedCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $CalendarDaySelectionChangedCopyWith(
          CalendarDaySelectionChanged value,
          $Res Function(CalendarDaySelectionChanged) _then) =
      _$CalendarDaySelectionChangedCopyWithImpl;
  @useResult
  $Res call({DateTime focusedDay, DateTime selectedDay});
}

/// @nodoc
class _$CalendarDaySelectionChangedCopyWithImpl<$Res>
    implements $CalendarDaySelectionChangedCopyWith<$Res> {
  _$CalendarDaySelectionChangedCopyWithImpl(this._self, this._then);

  final CalendarDaySelectionChanged _self;
  final $Res Function(CalendarDaySelectionChanged) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? focusedDay = null,
    Object? selectedDay = null,
  }) {
    return _then(CalendarDaySelectionChanged(
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

// dart format on
