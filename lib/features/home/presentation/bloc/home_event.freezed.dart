// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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
    TResult Function(HomeFetchRequested value)? fetchRequested,
    TResult Function(HomeRefreshRequested value)? refreshRequested,
    TResult Function(HomePollCompleted value)? pollCompleted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HomeFetchRequested() when fetchRequested != null:
        return fetchRequested(_that);
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case HomePollCompleted() when pollCompleted != null:
        return pollCompleted(_that);
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
    required TResult Function(HomeFetchRequested value) fetchRequested,
    required TResult Function(HomeRefreshRequested value) refreshRequested,
    required TResult Function(HomePollCompleted value) pollCompleted,
  }) {
    final _that = this;
    switch (_that) {
      case HomeFetchRequested():
        return fetchRequested(_that);
      case HomeRefreshRequested():
        return refreshRequested(_that);
      case HomePollCompleted():
        return pollCompleted(_that);
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
    TResult? Function(HomeFetchRequested value)? fetchRequested,
    TResult? Function(HomeRefreshRequested value)? refreshRequested,
    TResult? Function(HomePollCompleted value)? pollCompleted,
  }) {
    final _that = this;
    switch (_that) {
      case HomeFetchRequested() when fetchRequested != null:
        return fetchRequested(_that);
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case HomePollCompleted() when pollCompleted != null:
        return pollCompleted(_that);
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
    TResult Function()? pollCompleted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HomeFetchRequested() when fetchRequested != null:
        return fetchRequested();
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case HomePollCompleted() when pollCompleted != null:
        return pollCompleted();
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
    required TResult Function() pollCompleted,
  }) {
    final _that = this;
    switch (_that) {
      case HomeFetchRequested():
        return fetchRequested();
      case HomeRefreshRequested():
        return refreshRequested();
      case HomePollCompleted():
        return pollCompleted();
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
    TResult? Function()? pollCompleted,
  }) {
    final _that = this;
    switch (_that) {
      case HomeFetchRequested() when fetchRequested != null:
        return fetchRequested();
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case HomePollCompleted() when pollCompleted != null:
        return pollCompleted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class HomeFetchRequested with DiagnosticableTreeMixin implements HomeEvent {
  const HomeFetchRequested();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent.fetchRequested'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeFetchRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchRequested()';
  }
}

/// @nodoc

class HomeRefreshRequested with DiagnosticableTreeMixin implements HomeEvent {
  const HomeRefreshRequested();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent.refreshRequested'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeRefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.refreshRequested()';
  }
}

/// @nodoc

class HomePollCompleted with DiagnosticableTreeMixin implements HomeEvent {
  const HomePollCompleted();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent.pollCompleted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomePollCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.pollCompleted()';
  }
}

// dart format on
