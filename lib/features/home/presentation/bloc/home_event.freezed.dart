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
    TResult Function(HomeStarted value)? started,
    TResult Function(HomeSurveyCompleted value)? surveyCompleted,
    TResult Function(HomeRefreshRequested value)? refreshRequested,
    TResult Function(HomeReturnedFromCarbonCalculate value)?
        returnedFromCarbonCalculate,
    TResult Function(HomeLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HomeStarted() when started != null:
        return started(_that);
      case HomeSurveyCompleted() when surveyCompleted != null:
        return surveyCompleted(_that);
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case HomeReturnedFromCarbonCalculate()
          when returnedFromCarbonCalculate != null:
        return returnedFromCarbonCalculate(_that);
      case HomeLoadFailed() when loadFailed != null:
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
    required TResult Function(HomeStarted value) started,
    required TResult Function(HomeSurveyCompleted value) surveyCompleted,
    required TResult Function(HomeRefreshRequested value) refreshRequested,
    required TResult Function(HomeReturnedFromCarbonCalculate value)
        returnedFromCarbonCalculate,
    required TResult Function(HomeLoadFailed value) loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case HomeStarted():
        return started(_that);
      case HomeSurveyCompleted():
        return surveyCompleted(_that);
      case HomeRefreshRequested():
        return refreshRequested(_that);
      case HomeReturnedFromCarbonCalculate():
        return returnedFromCarbonCalculate(_that);
      case HomeLoadFailed():
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
    TResult? Function(HomeStarted value)? started,
    TResult? Function(HomeSurveyCompleted value)? surveyCompleted,
    TResult? Function(HomeRefreshRequested value)? refreshRequested,
    TResult? Function(HomeReturnedFromCarbonCalculate value)?
        returnedFromCarbonCalculate,
    TResult? Function(HomeLoadFailed value)? loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case HomeStarted() when started != null:
        return started(_that);
      case HomeSurveyCompleted() when surveyCompleted != null:
        return surveyCompleted(_that);
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested(_that);
      case HomeReturnedFromCarbonCalculate()
          when returnedFromCarbonCalculate != null:
        return returnedFromCarbonCalculate(_that);
      case HomeLoadFailed() when loadFailed != null:
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
    TResult Function(double carbonResult)? surveyCompleted,
    TResult Function()? refreshRequested,
    TResult Function()? returnedFromCarbonCalculate,
    TResult Function(String message)? loadFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HomeStarted() when started != null:
        return started();
      case HomeSurveyCompleted() when surveyCompleted != null:
        return surveyCompleted(_that.carbonResult);
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case HomeReturnedFromCarbonCalculate()
          when returnedFromCarbonCalculate != null:
        return returnedFromCarbonCalculate();
      case HomeLoadFailed() when loadFailed != null:
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
    required TResult Function(double carbonResult) surveyCompleted,
    required TResult Function() refreshRequested,
    required TResult Function() returnedFromCarbonCalculate,
    required TResult Function(String message) loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case HomeStarted():
        return started();
      case HomeSurveyCompleted():
        return surveyCompleted(_that.carbonResult);
      case HomeRefreshRequested():
        return refreshRequested();
      case HomeReturnedFromCarbonCalculate():
        return returnedFromCarbonCalculate();
      case HomeLoadFailed():
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
    TResult? Function(double carbonResult)? surveyCompleted,
    TResult? Function()? refreshRequested,
    TResult? Function()? returnedFromCarbonCalculate,
    TResult? Function(String message)? loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case HomeStarted() when started != null:
        return started();
      case HomeSurveyCompleted() when surveyCompleted != null:
        return surveyCompleted(_that.carbonResult);
      case HomeRefreshRequested() when refreshRequested != null:
        return refreshRequested();
      case HomeReturnedFromCarbonCalculate()
          when returnedFromCarbonCalculate != null:
        return returnedFromCarbonCalculate();
      case HomeLoadFailed() when loadFailed != null:
        return loadFailed(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class HomeStarted with DiagnosticableTreeMixin implements HomeEvent {
  const HomeStarted();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }
}

/// @nodoc

class HomeSurveyCompleted with DiagnosticableTreeMixin implements HomeEvent {
  const HomeSurveyCompleted({required this.carbonResult});

  final double carbonResult;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeSurveyCompletedCopyWith<HomeSurveyCompleted> get copyWith =>
      _$HomeSurveyCompletedCopyWithImpl<HomeSurveyCompleted>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.surveyCompleted'))
      ..add(DiagnosticsProperty('carbonResult', carbonResult));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeSurveyCompleted &&
            (identical(other.carbonResult, carbonResult) ||
                other.carbonResult == carbonResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carbonResult);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.surveyCompleted(carbonResult: $carbonResult)';
  }
}

/// @nodoc
abstract mixin class $HomeSurveyCompletedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeSurveyCompletedCopyWith(
          HomeSurveyCompleted value, $Res Function(HomeSurveyCompleted) _then) =
      _$HomeSurveyCompletedCopyWithImpl;
  @useResult
  $Res call({double carbonResult});
}

/// @nodoc
class _$HomeSurveyCompletedCopyWithImpl<$Res>
    implements $HomeSurveyCompletedCopyWith<$Res> {
  _$HomeSurveyCompletedCopyWithImpl(this._self, this._then);

  final HomeSurveyCompleted _self;
  final $Res Function(HomeSurveyCompleted) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? carbonResult = null,
  }) {
    return _then(HomeSurveyCompleted(
      carbonResult: null == carbonResult
          ? _self.carbonResult
          : carbonResult // ignore: cast_nullable_to_non_nullable
              as double,
    ));
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

class HomeReturnedFromCarbonCalculate
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeReturnedFromCarbonCalculate();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeEvent.returnedFromCarbonCalculate'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeReturnedFromCarbonCalculate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.returnedFromCarbonCalculate()';
  }
}

/// @nodoc

class HomeLoadFailed with DiagnosticableTreeMixin implements HomeEvent {
  const HomeLoadFailed(this.message);

  final String message;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeLoadFailedCopyWith<HomeLoadFailed> get copyWith =>
      _$HomeLoadFailedCopyWithImpl<HomeLoadFailed>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.loadFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeLoadFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.loadFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HomeLoadFailedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeLoadFailedCopyWith(
          HomeLoadFailed value, $Res Function(HomeLoadFailed) _then) =
      _$HomeLoadFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HomeLoadFailedCopyWithImpl<$Res>
    implements $HomeLoadFailedCopyWith<$Res> {
  _$HomeLoadFailedCopyWithImpl(this._self, this._then);

  final HomeLoadFailed _self;
  final $Res Function(HomeLoadFailed) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(HomeLoadFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
