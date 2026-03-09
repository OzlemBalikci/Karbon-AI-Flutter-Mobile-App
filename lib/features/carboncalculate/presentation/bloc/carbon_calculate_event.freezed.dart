// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carbon_calculate_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarbonCalculateEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CarbonCalculateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CarbonCalculateEvent()';
  }
}

/// @nodoc
class $CarbonCalculateEventCopyWith<$Res> {
  $CarbonCalculateEventCopyWith(
      CarbonCalculateEvent _, $Res Function(CarbonCalculateEvent) __);
}

/// Adds pattern-matching-related methods to [CarbonCalculateEvent].
extension CarbonCalculateEventPatterns on CarbonCalculateEvent {
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
    TResult Function(CarbonCalculateLoadRequested value)? loadRequested,
    TResult Function(CarbonCalculateLoadFailed value)? loadFailed,
    TResult Function(CarbonCalculateNextPressed value)? nextPressed,
    TResult Function(CarbonCalculateBackPressed value)? backPressed,
    TResult Function(CarbonCalculateFinishPressed value)? finishPressed,
    TResult Function(CarbonCalculateCalculateAgainPressed value)?
        calculateAgainPressed,
    TResult Function(CarbonCalculateGoToHomePressed value)? goToHomePressed,
    TResult Function(CarbonCalculateAnswerSelected value)? answerSelected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CarbonCalculateLoadRequested() when loadRequested != null:
        return loadRequested(_that);
      case CarbonCalculateLoadFailed() when loadFailed != null:
        return loadFailed(_that);
      case CarbonCalculateNextPressed() when nextPressed != null:
        return nextPressed(_that);
      case CarbonCalculateBackPressed() when backPressed != null:
        return backPressed(_that);
      case CarbonCalculateFinishPressed() when finishPressed != null:
        return finishPressed(_that);
      case CarbonCalculateCalculateAgainPressed()
          when calculateAgainPressed != null:
        return calculateAgainPressed(_that);
      case CarbonCalculateGoToHomePressed() when goToHomePressed != null:
        return goToHomePressed(_that);
      case CarbonCalculateAnswerSelected() when answerSelected != null:
        return answerSelected(_that);
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
    required TResult Function(CarbonCalculateLoadRequested value) loadRequested,
    required TResult Function(CarbonCalculateLoadFailed value) loadFailed,
    required TResult Function(CarbonCalculateNextPressed value) nextPressed,
    required TResult Function(CarbonCalculateBackPressed value) backPressed,
    required TResult Function(CarbonCalculateFinishPressed value) finishPressed,
    required TResult Function(CarbonCalculateCalculateAgainPressed value)
        calculateAgainPressed,
    required TResult Function(CarbonCalculateGoToHomePressed value)
        goToHomePressed,
    required TResult Function(CarbonCalculateAnswerSelected value)
        answerSelected,
  }) {
    final _that = this;
    switch (_that) {
      case CarbonCalculateLoadRequested():
        return loadRequested(_that);
      case CarbonCalculateLoadFailed():
        return loadFailed(_that);
      case CarbonCalculateNextPressed():
        return nextPressed(_that);
      case CarbonCalculateBackPressed():
        return backPressed(_that);
      case CarbonCalculateFinishPressed():
        return finishPressed(_that);
      case CarbonCalculateCalculateAgainPressed():
        return calculateAgainPressed(_that);
      case CarbonCalculateGoToHomePressed():
        return goToHomePressed(_that);
      case CarbonCalculateAnswerSelected():
        return answerSelected(_that);
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
    TResult? Function(CarbonCalculateLoadRequested value)? loadRequested,
    TResult? Function(CarbonCalculateLoadFailed value)? loadFailed,
    TResult? Function(CarbonCalculateNextPressed value)? nextPressed,
    TResult? Function(CarbonCalculateBackPressed value)? backPressed,
    TResult? Function(CarbonCalculateFinishPressed value)? finishPressed,
    TResult? Function(CarbonCalculateCalculateAgainPressed value)?
        calculateAgainPressed,
    TResult? Function(CarbonCalculateGoToHomePressed value)? goToHomePressed,
    TResult? Function(CarbonCalculateAnswerSelected value)? answerSelected,
  }) {
    final _that = this;
    switch (_that) {
      case CarbonCalculateLoadRequested() when loadRequested != null:
        return loadRequested(_that);
      case CarbonCalculateLoadFailed() when loadFailed != null:
        return loadFailed(_that);
      case CarbonCalculateNextPressed() when nextPressed != null:
        return nextPressed(_that);
      case CarbonCalculateBackPressed() when backPressed != null:
        return backPressed(_that);
      case CarbonCalculateFinishPressed() when finishPressed != null:
        return finishPressed(_that);
      case CarbonCalculateCalculateAgainPressed()
          when calculateAgainPressed != null:
        return calculateAgainPressed(_that);
      case CarbonCalculateGoToHomePressed() when goToHomePressed != null:
        return goToHomePressed(_that);
      case CarbonCalculateAnswerSelected() when answerSelected != null:
        return answerSelected(_that);
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
    TResult Function()? loadRequested,
    TResult Function(String error)? loadFailed,
    TResult Function()? nextPressed,
    TResult Function()? backPressed,
    TResult Function()? finishPressed,
    TResult Function()? calculateAgainPressed,
    TResult Function()? goToHomePressed,
    TResult Function(int questionIndex, dynamic value)? answerSelected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CarbonCalculateLoadRequested() when loadRequested != null:
        return loadRequested();
      case CarbonCalculateLoadFailed() when loadFailed != null:
        return loadFailed(_that.error);
      case CarbonCalculateNextPressed() when nextPressed != null:
        return nextPressed();
      case CarbonCalculateBackPressed() when backPressed != null:
        return backPressed();
      case CarbonCalculateFinishPressed() when finishPressed != null:
        return finishPressed();
      case CarbonCalculateCalculateAgainPressed()
          when calculateAgainPressed != null:
        return calculateAgainPressed();
      case CarbonCalculateGoToHomePressed() when goToHomePressed != null:
        return goToHomePressed();
      case CarbonCalculateAnswerSelected() when answerSelected != null:
        return answerSelected(_that.questionIndex, _that.value);
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
    required TResult Function() loadRequested,
    required TResult Function(String error) loadFailed,
    required TResult Function() nextPressed,
    required TResult Function() backPressed,
    required TResult Function() finishPressed,
    required TResult Function() calculateAgainPressed,
    required TResult Function() goToHomePressed,
    required TResult Function(int questionIndex, dynamic value) answerSelected,
  }) {
    final _that = this;
    switch (_that) {
      case CarbonCalculateLoadRequested():
        return loadRequested();
      case CarbonCalculateLoadFailed():
        return loadFailed(_that.error);
      case CarbonCalculateNextPressed():
        return nextPressed();
      case CarbonCalculateBackPressed():
        return backPressed();
      case CarbonCalculateFinishPressed():
        return finishPressed();
      case CarbonCalculateCalculateAgainPressed():
        return calculateAgainPressed();
      case CarbonCalculateGoToHomePressed():
        return goToHomePressed();
      case CarbonCalculateAnswerSelected():
        return answerSelected(_that.questionIndex, _that.value);
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
    TResult? Function()? loadRequested,
    TResult? Function(String error)? loadFailed,
    TResult? Function()? nextPressed,
    TResult? Function()? backPressed,
    TResult? Function()? finishPressed,
    TResult? Function()? calculateAgainPressed,
    TResult? Function()? goToHomePressed,
    TResult? Function(int questionIndex, dynamic value)? answerSelected,
  }) {
    final _that = this;
    switch (_that) {
      case CarbonCalculateLoadRequested() when loadRequested != null:
        return loadRequested();
      case CarbonCalculateLoadFailed() when loadFailed != null:
        return loadFailed(_that.error);
      case CarbonCalculateNextPressed() when nextPressed != null:
        return nextPressed();
      case CarbonCalculateBackPressed() when backPressed != null:
        return backPressed();
      case CarbonCalculateFinishPressed() when finishPressed != null:
        return finishPressed();
      case CarbonCalculateCalculateAgainPressed()
          when calculateAgainPressed != null:
        return calculateAgainPressed();
      case CarbonCalculateGoToHomePressed() when goToHomePressed != null:
        return goToHomePressed();
      case CarbonCalculateAnswerSelected() when answerSelected != null:
        return answerSelected(_that.questionIndex, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CarbonCalculateLoadRequested implements CarbonCalculateEvent {
  const CarbonCalculateLoadRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateLoadRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CarbonCalculateEvent.loadRequested()';
  }
}

/// @nodoc

class CarbonCalculateLoadFailed implements CarbonCalculateEvent {
  const CarbonCalculateLoadFailed(this.error);

  final String error;

  /// Create a copy of CarbonCalculateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarbonCalculateLoadFailedCopyWith<CarbonCalculateLoadFailed> get copyWith =>
      _$CarbonCalculateLoadFailedCopyWithImpl<CarbonCalculateLoadFailed>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateLoadFailed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CarbonCalculateEvent.loadFailed(error: $error)';
  }
}

/// @nodoc
abstract mixin class $CarbonCalculateLoadFailedCopyWith<$Res>
    implements $CarbonCalculateEventCopyWith<$Res> {
  factory $CarbonCalculateLoadFailedCopyWith(CarbonCalculateLoadFailed value,
          $Res Function(CarbonCalculateLoadFailed) _then) =
      _$CarbonCalculateLoadFailedCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$CarbonCalculateLoadFailedCopyWithImpl<$Res>
    implements $CarbonCalculateLoadFailedCopyWith<$Res> {
  _$CarbonCalculateLoadFailedCopyWithImpl(this._self, this._then);

  final CarbonCalculateLoadFailed _self;
  final $Res Function(CarbonCalculateLoadFailed) _then;

  /// Create a copy of CarbonCalculateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CarbonCalculateLoadFailed(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CarbonCalculateNextPressed implements CarbonCalculateEvent {
  const CarbonCalculateNextPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateNextPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CarbonCalculateEvent.nextPressed()';
  }
}

/// @nodoc

class CarbonCalculateBackPressed implements CarbonCalculateEvent {
  const CarbonCalculateBackPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateBackPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CarbonCalculateEvent.backPressed()';
  }
}

/// @nodoc

class CarbonCalculateFinishPressed implements CarbonCalculateEvent {
  const CarbonCalculateFinishPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateFinishPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CarbonCalculateEvent.finishPressed()';
  }
}

/// @nodoc

class CarbonCalculateCalculateAgainPressed implements CarbonCalculateEvent {
  const CarbonCalculateCalculateAgainPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateCalculateAgainPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CarbonCalculateEvent.calculateAgainPressed()';
  }
}

/// @nodoc

class CarbonCalculateGoToHomePressed implements CarbonCalculateEvent {
  const CarbonCalculateGoToHomePressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateGoToHomePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CarbonCalculateEvent.goToHomePressed()';
  }
}

/// @nodoc

class CarbonCalculateAnswerSelected implements CarbonCalculateEvent {
  const CarbonCalculateAnswerSelected(
      {required this.questionIndex, required this.value});

  final int questionIndex;
  final dynamic value;

  /// Create a copy of CarbonCalculateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarbonCalculateAnswerSelectedCopyWith<CarbonCalculateAnswerSelected>
      get copyWith => _$CarbonCalculateAnswerSelectedCopyWithImpl<
          CarbonCalculateAnswerSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateAnswerSelected &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, questionIndex, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'CarbonCalculateEvent.answerSelected(questionIndex: $questionIndex, value: $value)';
  }
}

/// @nodoc
abstract mixin class $CarbonCalculateAnswerSelectedCopyWith<$Res>
    implements $CarbonCalculateEventCopyWith<$Res> {
  factory $CarbonCalculateAnswerSelectedCopyWith(
          CarbonCalculateAnswerSelected value,
          $Res Function(CarbonCalculateAnswerSelected) _then) =
      _$CarbonCalculateAnswerSelectedCopyWithImpl;
  @useResult
  $Res call({int questionIndex, dynamic value});
}

/// @nodoc
class _$CarbonCalculateAnswerSelectedCopyWithImpl<$Res>
    implements $CarbonCalculateAnswerSelectedCopyWith<$Res> {
  _$CarbonCalculateAnswerSelectedCopyWithImpl(this._self, this._then);

  final CarbonCalculateAnswerSelected _self;
  final $Res Function(CarbonCalculateAnswerSelected) _then;

  /// Create a copy of CarbonCalculateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionIndex = null,
    Object? value = freezed,
  }) {
    return _then(CarbonCalculateAnswerSelected(
      questionIndex: null == questionIndex
          ? _self.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
