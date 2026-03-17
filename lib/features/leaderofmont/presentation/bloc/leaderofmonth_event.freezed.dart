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
mixin _$LeaderofmonthEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'LeaderofmonthEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LeaderofmonthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
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
    TResult Function(LeaderofmonthStarted value)? started,
    TResult Function(LeaderofmonthRefreshRequested value)? refreshRequested,
    TResult Function(LeaderofmonthLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthStarted() when started != null:
        return started(_that);
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case LeaderofmonthLoadFailed() when loadFailed != null:
        return loadFailed(_that);
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
    required TResult Function(LeaderofmonthStarted value) started,
    required TResult Function(LeaderofmonthRefreshRequested value)
        refreshRequested,
    required TResult Function(LeaderofmonthLoadFailed value) loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthStarted():
        return started(_that);
      case LeaderofmonthRefreshRequested():
        return refreshRequested(_that);
      case LeaderofmonthLoadFailed():
        return loadFailed(_that);
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
    TResult? Function(LeaderofmonthStarted value)? started,
    TResult? Function(LeaderofmonthRefreshRequested value)? refreshRequested,
    TResult? Function(LeaderofmonthLoadFailed value)? loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthStarted() when started != null:
        return started(_that);
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case LeaderofmonthLoadFailed() when loadFailed != null:
        return loadFailed(_that);
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
    TResult Function()? started,
    TResult Function()? refreshRequested,
    TResult Function(String message)? loadFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthStarted() when started != null:
        return started();
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case LeaderofmonthLoadFailed() when loadFailed != null:
        return loadFailed(_that.message);
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
    required TResult Function() started,
    required TResult Function() refreshRequested,
    required TResult Function(String message) loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthStarted():
        return started();
      case LeaderofmonthRefreshRequested():
        return refreshRequested();
      case LeaderofmonthLoadFailed():
        return loadFailed(_that.message);
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
    TResult? Function()? started,
    TResult? Function()? refreshRequested,
    TResult? Function(String message)? loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case LeaderofmonthStarted() when started != null:
        return started();
      case LeaderofmonthRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case LeaderofmonthLoadFailed() when loadFailed != null:
        return loadFailed(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class LeaderofmonthStarted
    with DiagnosticableTreeMixin
    implements LeaderofmonthEvent {
  const LeaderofmonthStarted();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'LeaderofmonthEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LeaderofmonthStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaderofmonthEvent.started()';
  }
}

/// @nodoc

class LeaderofmonthRefreshRequested
    with DiagnosticableTreeMixin
    implements LeaderofmonthEvent {
  const LeaderofmonthRefreshRequested();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeaderofmonthEvent.refreshRequested'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeaderofmonthRefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaderofmonthEvent.refreshRequested()';
  }
}

/// @nodoc

class LeaderofmonthLoadFailed
    with DiagnosticableTreeMixin
    implements LeaderofmonthEvent {
  const LeaderofmonthLoadFailed(this.message);

  final String message;

  /// Create a copy of LeaderofmonthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeaderofmonthLoadFailedCopyWith<LeaderofmonthLoadFailed> get copyWith =>
      _$LeaderofmonthLoadFailedCopyWithImpl<LeaderofmonthLoadFailed>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeaderofmonthEvent.loadFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeaderofmonthLoadFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaderofmonthEvent.loadFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $LeaderofmonthLoadFailedCopyWith<$Res>
    implements $LeaderofmonthEventCopyWith<$Res> {
  factory $LeaderofmonthLoadFailedCopyWith(LeaderofmonthLoadFailed value,
          $Res Function(LeaderofmonthLoadFailed) _then) =
      _$LeaderofmonthLoadFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LeaderofmonthLoadFailedCopyWithImpl<$Res>
    implements $LeaderofmonthLoadFailedCopyWith<$Res> {
  _$LeaderofmonthLoadFailedCopyWithImpl(this._self, this._then);

  final LeaderofmonthLoadFailed _self;
  final $Res Function(LeaderofmonthLoadFailed) _then;

  /// Create a copy of LeaderofmonthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(LeaderofmonthLoadFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
