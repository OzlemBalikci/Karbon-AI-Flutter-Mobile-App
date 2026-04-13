// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderofmonth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaderofmonthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LeaderofmonthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LeaderofmonthEvent()';
  }
}

/// @nodoc
class $LeaderofmonthEventCopyWith<$Res> {
  $LeaderofmonthEventCopyWith(
      LeaderofmonthEvent _, $Res Function(LeaderofmonthEvent) __);
}

/// Adds pattern-matching-related methods to [LeaderofmonthEvent].
extension LeaderofmonthEventPatterns on LeaderofmonthEvent {
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
    TResult Function(LeaderofmonthFetchRequested value)? fetchRequested,
    TResult Function(LeaderofmonthRefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthFetchRequested() when fetchRequested != null:
        return fetchRequested(_that);
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
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
    required TResult Function(LeaderofmonthFetchRequested value) fetchRequested,
    required TResult Function(LeaderofmonthRefreshRequested value)
        refreshRequested,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthFetchRequested():
        return fetchRequested(_that);
      case LeaderofmonthRefreshRequested():
        return refreshRequested(_that);
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
    TResult? Function(LeaderofmonthFetchRequested value)? fetchRequested,
    TResult? Function(LeaderofmonthRefreshRequested value)? refreshRequested,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthFetchRequested() when fetchRequested != null:
        return fetchRequested(_that);
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
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
    TResult Function()? fetchRequested,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthFetchRequested() when fetchRequested != null:
        return fetchRequested();
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested();
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
    required TResult Function() fetchRequested,
    required TResult Function() refreshRequested,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthFetchRequested():
        return fetchRequested();
      case LeaderofmonthRefreshRequested():
        return refreshRequested();
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
    TResult? Function()? fetchRequested,
    TResult? Function()? refreshRequested,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthFetchRequested() when fetchRequested != null:
        return fetchRequested();
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case _:
        return null;
    }
  }
}

/// @nodoc

class LeaderofmonthFetchRequested implements LeaderofmonthEvent {
  const LeaderofmonthFetchRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeaderofmonthFetchRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LeaderofmonthEvent.fetchRequested()';
  }
}

/// @nodoc

class LeaderofmonthRefreshRequested implements LeaderofmonthEvent {
  const LeaderofmonthRefreshRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeaderofmonthRefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LeaderofmonthEvent.refreshRequested()';
  }
}

// dart format on
