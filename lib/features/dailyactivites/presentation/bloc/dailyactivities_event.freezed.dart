// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dailyactivities_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyActivitiesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DailyActivitiesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DailyActivitiesEvent()';
  }
}

/// @nodoc
class $DailyActivitiesEventCopyWith<$Res> {
  $DailyActivitiesEventCopyWith(
      DailyActivitiesEvent _, $Res Function(DailyActivitiesEvent) __);
}

/// Adds pattern-matching-related methods to [DailyActivitiesEvent].
extension DailyActivitiesEventPatterns on DailyActivitiesEvent {
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
    TResult Function(DailyActivitiesLoadRequested value)? loadRequested,
    TResult Function(DailyActivitiesQuestionSelected value)? questionSelected,
    TResult Function(DailyActivitiesOptionSelected value)? optionSelected,
    TResult Function(DailyActivitiesBranchStepReopened value)?
        branchStepReopened,
    TResult Function(DailyActivitiesPostAnswerRequested value)?
        postAnswerRequested,
    TResult Function(DailyActivitiesSuccessDismissed value)? successDismissed,
    TResult Function(DailyActivitiesDetailClosed value)? detailClosed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DailyActivitiesLoadRequested() when loadRequested != null:
        return loadRequested(_that);
      case DailyActivitiesQuestionSelected() when questionSelected != null:
        return questionSelected(_that);
      case DailyActivitiesOptionSelected() when optionSelected != null:
        return optionSelected(_that);
      case DailyActivitiesBranchStepReopened() when branchStepReopened != null:
        return branchStepReopened(_that);
      case DailyActivitiesPostAnswerRequested()
          when postAnswerRequested != null:
        return postAnswerRequested(_that);
      case DailyActivitiesSuccessDismissed() when successDismissed != null:
        return successDismissed(_that);
      case DailyActivitiesDetailClosed() when detailClosed != null:
        return detailClosed(_that);
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
    required TResult Function(DailyActivitiesLoadRequested value) loadRequested,
    required TResult Function(DailyActivitiesQuestionSelected value)
        questionSelected,
    required TResult Function(DailyActivitiesOptionSelected value)
        optionSelected,
    required TResult Function(DailyActivitiesBranchStepReopened value)
        branchStepReopened,
    required TResult Function(DailyActivitiesPostAnswerRequested value)
        postAnswerRequested,
    required TResult Function(DailyActivitiesSuccessDismissed value)
        successDismissed,
    required TResult Function(DailyActivitiesDetailClosed value) detailClosed,
  }) {
    final _that = this;
    switch (_that) {
      case DailyActivitiesLoadRequested():
        return loadRequested(_that);
      case DailyActivitiesQuestionSelected():
        return questionSelected(_that);
      case DailyActivitiesOptionSelected():
        return optionSelected(_that);
      case DailyActivitiesBranchStepReopened():
        return branchStepReopened(_that);
      case DailyActivitiesPostAnswerRequested():
        return postAnswerRequested(_that);
      case DailyActivitiesSuccessDismissed():
        return successDismissed(_that);
      case DailyActivitiesDetailClosed():
        return detailClosed(_that);
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
    TResult? Function(DailyActivitiesLoadRequested value)? loadRequested,
    TResult? Function(DailyActivitiesQuestionSelected value)? questionSelected,
    TResult? Function(DailyActivitiesOptionSelected value)? optionSelected,
    TResult? Function(DailyActivitiesBranchStepReopened value)?
        branchStepReopened,
    TResult? Function(DailyActivitiesPostAnswerRequested value)?
        postAnswerRequested,
    TResult? Function(DailyActivitiesSuccessDismissed value)? successDismissed,
    TResult? Function(DailyActivitiesDetailClosed value)? detailClosed,
  }) {
    final _that = this;
    switch (_that) {
      case DailyActivitiesLoadRequested() when loadRequested != null:
        return loadRequested(_that);
      case DailyActivitiesQuestionSelected() when questionSelected != null:
        return questionSelected(_that);
      case DailyActivitiesOptionSelected() when optionSelected != null:
        return optionSelected(_that);
      case DailyActivitiesBranchStepReopened() when branchStepReopened != null:
        return branchStepReopened(_that);
      case DailyActivitiesPostAnswerRequested()
          when postAnswerRequested != null:
        return postAnswerRequested(_that);
      case DailyActivitiesSuccessDismissed() when successDismissed != null:
        return successDismissed(_that);
      case DailyActivitiesDetailClosed() when detailClosed != null:
        return detailClosed(_that);
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
    TResult Function(DailyQuestionEntity question)? questionSelected,
    TResult Function(String optionId)? optionSelected,
    TResult Function(int stepIndex)? branchStepReopened,
    TResult Function()? postAnswerRequested,
    TResult Function()? successDismissed,
    TResult Function()? detailClosed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DailyActivitiesLoadRequested() when loadRequested != null:
        return loadRequested();
      case DailyActivitiesQuestionSelected() when questionSelected != null:
        return questionSelected(_that.question);
      case DailyActivitiesOptionSelected() when optionSelected != null:
        return optionSelected(_that.optionId);
      case DailyActivitiesBranchStepReopened() when branchStepReopened != null:
        return branchStepReopened(_that.stepIndex);
      case DailyActivitiesPostAnswerRequested()
          when postAnswerRequested != null:
        return postAnswerRequested();
      case DailyActivitiesSuccessDismissed() when successDismissed != null:
        return successDismissed();
      case DailyActivitiesDetailClosed() when detailClosed != null:
        return detailClosed();
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
    required TResult Function(DailyQuestionEntity question) questionSelected,
    required TResult Function(String optionId) optionSelected,
    required TResult Function(int stepIndex) branchStepReopened,
    required TResult Function() postAnswerRequested,
    required TResult Function() successDismissed,
    required TResult Function() detailClosed,
  }) {
    final _that = this;
    switch (_that) {
      case DailyActivitiesLoadRequested():
        return loadRequested();
      case DailyActivitiesQuestionSelected():
        return questionSelected(_that.question);
      case DailyActivitiesOptionSelected():
        return optionSelected(_that.optionId);
      case DailyActivitiesBranchStepReopened():
        return branchStepReopened(_that.stepIndex);
      case DailyActivitiesPostAnswerRequested():
        return postAnswerRequested();
      case DailyActivitiesSuccessDismissed():
        return successDismissed();
      case DailyActivitiesDetailClosed():
        return detailClosed();
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
    TResult? Function(DailyQuestionEntity question)? questionSelected,
    TResult? Function(String optionId)? optionSelected,
    TResult? Function(int stepIndex)? branchStepReopened,
    TResult? Function()? postAnswerRequested,
    TResult? Function()? successDismissed,
    TResult? Function()? detailClosed,
  }) {
    final _that = this;
    switch (_that) {
      case DailyActivitiesLoadRequested() when loadRequested != null:
        return loadRequested();
      case DailyActivitiesQuestionSelected() when questionSelected != null:
        return questionSelected(_that.question);
      case DailyActivitiesOptionSelected() when optionSelected != null:
        return optionSelected(_that.optionId);
      case DailyActivitiesBranchStepReopened() when branchStepReopened != null:
        return branchStepReopened(_that.stepIndex);
      case DailyActivitiesPostAnswerRequested()
          when postAnswerRequested != null:
        return postAnswerRequested();
      case DailyActivitiesSuccessDismissed() when successDismissed != null:
        return successDismissed();
      case DailyActivitiesDetailClosed() when detailClosed != null:
        return detailClosed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class DailyActivitiesLoadRequested implements DailyActivitiesEvent {
  const DailyActivitiesLoadRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesLoadRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DailyActivitiesEvent.loadRequested()';
  }
}

/// @nodoc

class DailyActivitiesQuestionSelected implements DailyActivitiesEvent {
  const DailyActivitiesQuestionSelected(this.question);

  final DailyQuestionEntity question;

  /// Create a copy of DailyActivitiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyActivitiesQuestionSelectedCopyWith<DailyActivitiesQuestionSelected>
      get copyWith => _$DailyActivitiesQuestionSelectedCopyWithImpl<
          DailyActivitiesQuestionSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesQuestionSelected &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @override
  String toString() {
    return 'DailyActivitiesEvent.questionSelected(question: $question)';
  }
}

/// @nodoc
abstract mixin class $DailyActivitiesQuestionSelectedCopyWith<$Res>
    implements $DailyActivitiesEventCopyWith<$Res> {
  factory $DailyActivitiesQuestionSelectedCopyWith(
          DailyActivitiesQuestionSelected value,
          $Res Function(DailyActivitiesQuestionSelected) _then) =
      _$DailyActivitiesQuestionSelectedCopyWithImpl;
  @useResult
  $Res call({DailyQuestionEntity question});
}

/// @nodoc
class _$DailyActivitiesQuestionSelectedCopyWithImpl<$Res>
    implements $DailyActivitiesQuestionSelectedCopyWith<$Res> {
  _$DailyActivitiesQuestionSelectedCopyWithImpl(this._self, this._then);

  final DailyActivitiesQuestionSelected _self;
  final $Res Function(DailyActivitiesQuestionSelected) _then;

  /// Create a copy of DailyActivitiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? question = null,
  }) {
    return _then(DailyActivitiesQuestionSelected(
      null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as DailyQuestionEntity,
    ));
  }
}

/// @nodoc

class DailyActivitiesOptionSelected implements DailyActivitiesEvent {
  const DailyActivitiesOptionSelected(this.optionId);

  final String optionId;

  /// Create a copy of DailyActivitiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyActivitiesOptionSelectedCopyWith<DailyActivitiesOptionSelected>
      get copyWith => _$DailyActivitiesOptionSelectedCopyWithImpl<
          DailyActivitiesOptionSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesOptionSelected &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionId);

  @override
  String toString() {
    return 'DailyActivitiesEvent.optionSelected(optionId: $optionId)';
  }
}

/// @nodoc
abstract mixin class $DailyActivitiesOptionSelectedCopyWith<$Res>
    implements $DailyActivitiesEventCopyWith<$Res> {
  factory $DailyActivitiesOptionSelectedCopyWith(
          DailyActivitiesOptionSelected value,
          $Res Function(DailyActivitiesOptionSelected) _then) =
      _$DailyActivitiesOptionSelectedCopyWithImpl;
  @useResult
  $Res call({String optionId});
}

/// @nodoc
class _$DailyActivitiesOptionSelectedCopyWithImpl<$Res>
    implements $DailyActivitiesOptionSelectedCopyWith<$Res> {
  _$DailyActivitiesOptionSelectedCopyWithImpl(this._self, this._then);

  final DailyActivitiesOptionSelected _self;
  final $Res Function(DailyActivitiesOptionSelected) _then;

  /// Create a copy of DailyActivitiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? optionId = null,
  }) {
    return _then(DailyActivitiesOptionSelected(
      null == optionId
          ? _self.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DailyActivitiesBranchStepReopened implements DailyActivitiesEvent {
  const DailyActivitiesBranchStepReopened(this.stepIndex);

  final int stepIndex;

  /// Create a copy of DailyActivitiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyActivitiesBranchStepReopenedCopyWith<DailyActivitiesBranchStepReopened>
      get copyWith => _$DailyActivitiesBranchStepReopenedCopyWithImpl<
          DailyActivitiesBranchStepReopened>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesBranchStepReopened &&
            (identical(other.stepIndex, stepIndex) ||
                other.stepIndex == stepIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stepIndex);

  @override
  String toString() {
    return 'DailyActivitiesEvent.branchStepReopened(stepIndex: $stepIndex)';
  }
}

/// @nodoc
abstract mixin class $DailyActivitiesBranchStepReopenedCopyWith<$Res>
    implements $DailyActivitiesEventCopyWith<$Res> {
  factory $DailyActivitiesBranchStepReopenedCopyWith(
          DailyActivitiesBranchStepReopened value,
          $Res Function(DailyActivitiesBranchStepReopened) _then) =
      _$DailyActivitiesBranchStepReopenedCopyWithImpl;
  @useResult
  $Res call({int stepIndex});
}

/// @nodoc
class _$DailyActivitiesBranchStepReopenedCopyWithImpl<$Res>
    implements $DailyActivitiesBranchStepReopenedCopyWith<$Res> {
  _$DailyActivitiesBranchStepReopenedCopyWithImpl(this._self, this._then);

  final DailyActivitiesBranchStepReopened _self;
  final $Res Function(DailyActivitiesBranchStepReopened) _then;

  /// Create a copy of DailyActivitiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stepIndex = null,
  }) {
    return _then(DailyActivitiesBranchStepReopened(
      null == stepIndex
          ? _self.stepIndex
          : stepIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DailyActivitiesPostAnswerRequested implements DailyActivitiesEvent {
  const DailyActivitiesPostAnswerRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesPostAnswerRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DailyActivitiesEvent.postAnswerRequested()';
  }
}

/// @nodoc

class DailyActivitiesSuccessDismissed implements DailyActivitiesEvent {
  const DailyActivitiesSuccessDismissed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesSuccessDismissed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DailyActivitiesEvent.successDismissed()';
  }
}

/// @nodoc

class DailyActivitiesDetailClosed implements DailyActivitiesEvent {
  const DailyActivitiesDetailClosed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesDetailClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DailyActivitiesEvent.detailClosed()';
  }
}

// dart format on
