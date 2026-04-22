// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dailyactivities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyActivitiesState {
  DailyActivitiesScreenStatus get screenStatus;
  List<DailyQuestionEntity> get questions;
  String? get screenError;
  DailyPendingEntity? get pending;
  List<DailyCalendarItemEntity> get historyItems;
  double? get totalScore;
  List<BranchStep> get branchPath;
  DailyActivitiesPostAnswerStatus get postAnswerStatus;
  String? get postAnswerError;
  DailyAnswerResultEntity? get lastPostAnswerResult;
  bool get showSuccessDialog;
  List<DailyPreviousAnswersByDateEntity> get previousAnswers;

  /// Create a copy of DailyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyActivitiesStateCopyWith<DailyActivitiesState> get copyWith =>
      _$DailyActivitiesStateCopyWithImpl<DailyActivitiesState>(
          this as DailyActivitiesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyActivitiesState &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.screenError, screenError) ||
                other.screenError == screenError) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            const DeepCollectionEquality()
                .equals(other.historyItems, historyItems) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            const DeepCollectionEquality()
                .equals(other.branchPath, branchPath) &&
            (identical(other.postAnswerStatus, postAnswerStatus) ||
                other.postAnswerStatus == postAnswerStatus) &&
            (identical(other.postAnswerError, postAnswerError) ||
                other.postAnswerError == postAnswerError) &&
            (identical(other.lastPostAnswerResult, lastPostAnswerResult) ||
                other.lastPostAnswerResult == lastPostAnswerResult) &&
            (identical(other.showSuccessDialog, showSuccessDialog) ||
                other.showSuccessDialog == showSuccessDialog) &&
            const DeepCollectionEquality()
                .equals(other.previousAnswers, previousAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screenStatus,
      const DeepCollectionEquality().hash(questions),
      screenError,
      pending,
      const DeepCollectionEquality().hash(historyItems),
      totalScore,
      const DeepCollectionEquality().hash(branchPath),
      postAnswerStatus,
      postAnswerError,
      lastPostAnswerResult,
      showSuccessDialog,
      const DeepCollectionEquality().hash(previousAnswers));

  @override
  String toString() {
    return 'DailyActivitiesState(screenStatus: $screenStatus, questions: $questions, screenError: $screenError, pending: $pending, historyItems: $historyItems, totalScore: $totalScore, branchPath: $branchPath, postAnswerStatus: $postAnswerStatus, postAnswerError: $postAnswerError, lastPostAnswerResult: $lastPostAnswerResult, showSuccessDialog: $showSuccessDialog, previousAnswers: $previousAnswers)';
  }
}

/// @nodoc
abstract mixin class $DailyActivitiesStateCopyWith<$Res> {
  factory $DailyActivitiesStateCopyWith(DailyActivitiesState value,
          $Res Function(DailyActivitiesState) _then) =
      _$DailyActivitiesStateCopyWithImpl;
  @useResult
  $Res call(
      {DailyActivitiesScreenStatus screenStatus,
      List<DailyQuestionEntity> questions,
      String? screenError,
      DailyPendingEntity? pending,
      List<DailyCalendarItemEntity> historyItems,
      double? totalScore,
      List<BranchStep> branchPath,
      DailyActivitiesPostAnswerStatus postAnswerStatus,
      String? postAnswerError,
      DailyAnswerResultEntity? lastPostAnswerResult,
      bool showSuccessDialog,
      List<DailyPreviousAnswersByDateEntity> previousAnswers});
}

/// @nodoc
class _$DailyActivitiesStateCopyWithImpl<$Res>
    implements $DailyActivitiesStateCopyWith<$Res> {
  _$DailyActivitiesStateCopyWithImpl(this._self, this._then);

  final DailyActivitiesState _self;
  final $Res Function(DailyActivitiesState) _then;

  /// Create a copy of DailyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? questions = null,
    Object? screenError = freezed,
    Object? pending = freezed,
    Object? historyItems = null,
    Object? totalScore = freezed,
    Object? branchPath = null,
    Object? postAnswerStatus = null,
    Object? postAnswerError = freezed,
    Object? lastPostAnswerResult = freezed,
    Object? showSuccessDialog = null,
    Object? previousAnswers = null,
  }) {
    return _then(_self.copyWith(
      screenStatus: null == screenStatus
          ? _self.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesScreenStatus,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      screenError: freezed == screenError
          ? _self.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      pending: freezed == pending
          ? _self.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as DailyPendingEntity?,
      historyItems: null == historyItems
          ? _self.historyItems
          : historyItems // ignore: cast_nullable_to_non_nullable
              as List<DailyCalendarItemEntity>,
      totalScore: freezed == totalScore
          ? _self.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double?,
      branchPath: null == branchPath
          ? _self.branchPath
          : branchPath // ignore: cast_nullable_to_non_nullable
              as List<BranchStep>,
      postAnswerStatus: null == postAnswerStatus
          ? _self.postAnswerStatus
          : postAnswerStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesPostAnswerStatus,
      postAnswerError: freezed == postAnswerError
          ? _self.postAnswerError
          : postAnswerError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPostAnswerResult: freezed == lastPostAnswerResult
          ? _self.lastPostAnswerResult
          : lastPostAnswerResult // ignore: cast_nullable_to_non_nullable
              as DailyAnswerResultEntity?,
      showSuccessDialog: null == showSuccessDialog
          ? _self.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      previousAnswers: null == previousAnswers
          ? _self.previousAnswers
          : previousAnswers // ignore: cast_nullable_to_non_nullable
              as List<DailyPreviousAnswersByDateEntity>,
    ));
  }
}

/// Adds pattern-matching-related methods to [DailyActivitiesState].
extension DailyActivitiesStatePatterns on DailyActivitiesState {
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
    TResult Function(_DailyActivitiesState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
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
    TResult Function(_DailyActivitiesState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState():
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
    TResult? Function(_DailyActivitiesState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
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
            DailyActivitiesScreenStatus screenStatus,
            List<DailyQuestionEntity> questions,
            String? screenError,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            double? totalScore,
            List<BranchStep> branchPath,
            DailyActivitiesPostAnswerStatus postAnswerStatus,
            String? postAnswerError,
            DailyAnswerResultEntity? lastPostAnswerResult,
            bool showSuccessDialog,
            List<DailyPreviousAnswersByDateEntity> previousAnswers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
        return $default(
            _that.screenStatus,
            _that.questions,
            _that.screenError,
            _that.pending,
            _that.historyItems,
            _that.totalScore,
            _that.branchPath,
            _that.postAnswerStatus,
            _that.postAnswerError,
            _that.lastPostAnswerResult,
            _that.showSuccessDialog,
            _that.previousAnswers);
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
            DailyActivitiesScreenStatus screenStatus,
            List<DailyQuestionEntity> questions,
            String? screenError,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            double? totalScore,
            List<BranchStep> branchPath,
            DailyActivitiesPostAnswerStatus postAnswerStatus,
            String? postAnswerError,
            DailyAnswerResultEntity? lastPostAnswerResult,
            bool showSuccessDialog,
            List<DailyPreviousAnswersByDateEntity> previousAnswers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState():
        return $default(
            _that.screenStatus,
            _that.questions,
            _that.screenError,
            _that.pending,
            _that.historyItems,
            _that.totalScore,
            _that.branchPath,
            _that.postAnswerStatus,
            _that.postAnswerError,
            _that.lastPostAnswerResult,
            _that.showSuccessDialog,
            _that.previousAnswers);
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
            DailyActivitiesScreenStatus screenStatus,
            List<DailyQuestionEntity> questions,
            String? screenError,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            double? totalScore,
            List<BranchStep> branchPath,
            DailyActivitiesPostAnswerStatus postAnswerStatus,
            String? postAnswerError,
            DailyAnswerResultEntity? lastPostAnswerResult,
            bool showSuccessDialog,
            List<DailyPreviousAnswersByDateEntity> previousAnswers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
        return $default(
            _that.screenStatus,
            _that.questions,
            _that.screenError,
            _that.pending,
            _that.historyItems,
            _that.totalScore,
            _that.branchPath,
            _that.postAnswerStatus,
            _that.postAnswerError,
            _that.lastPostAnswerResult,
            _that.showSuccessDialog,
            _that.previousAnswers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DailyActivitiesState implements DailyActivitiesState {
  const _DailyActivitiesState(
      {this.screenStatus = DailyActivitiesScreenStatus.initial,
      final List<DailyQuestionEntity> questions = const [],
      this.screenError,
      this.pending,
      final List<DailyCalendarItemEntity> historyItems = const [],
      this.totalScore,
      final List<BranchStep> branchPath = const [],
      this.postAnswerStatus = DailyActivitiesPostAnswerStatus.idle,
      this.postAnswerError,
      this.lastPostAnswerResult,
      this.showSuccessDialog = false,
      final List<DailyPreviousAnswersByDateEntity> previousAnswers = const []})
      : _questions = questions,
        _historyItems = historyItems,
        _branchPath = branchPath,
        _previousAnswers = previousAnswers;

  @override
  @JsonKey()
  final DailyActivitiesScreenStatus screenStatus;
  final List<DailyQuestionEntity> _questions;
  @override
  @JsonKey()
  List<DailyQuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final String? screenError;
  @override
  final DailyPendingEntity? pending;
  final List<DailyCalendarItemEntity> _historyItems;
  @override
  @JsonKey()
  List<DailyCalendarItemEntity> get historyItems {
    if (_historyItems is EqualUnmodifiableListView) return _historyItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyItems);
  }

  @override
  final double? totalScore;
  final List<BranchStep> _branchPath;
  @override
  @JsonKey()
  List<BranchStep> get branchPath {
    if (_branchPath is EqualUnmodifiableListView) return _branchPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branchPath);
  }

  @override
  @JsonKey()
  final DailyActivitiesPostAnswerStatus postAnswerStatus;
  @override
  final String? postAnswerError;
  @override
  final DailyAnswerResultEntity? lastPostAnswerResult;
  @override
  @JsonKey()
  final bool showSuccessDialog;
  final List<DailyPreviousAnswersByDateEntity> _previousAnswers;
  @override
  @JsonKey()
  List<DailyPreviousAnswersByDateEntity> get previousAnswers {
    if (_previousAnswers is EqualUnmodifiableListView) return _previousAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousAnswers);
  }

  /// Create a copy of DailyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DailyActivitiesStateCopyWith<_DailyActivitiesState> get copyWith =>
      __$DailyActivitiesStateCopyWithImpl<_DailyActivitiesState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyActivitiesState &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.screenError, screenError) ||
                other.screenError == screenError) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            const DeepCollectionEquality()
                .equals(other._historyItems, _historyItems) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            const DeepCollectionEquality()
                .equals(other._branchPath, _branchPath) &&
            (identical(other.postAnswerStatus, postAnswerStatus) ||
                other.postAnswerStatus == postAnswerStatus) &&
            (identical(other.postAnswerError, postAnswerError) ||
                other.postAnswerError == postAnswerError) &&
            (identical(other.lastPostAnswerResult, lastPostAnswerResult) ||
                other.lastPostAnswerResult == lastPostAnswerResult) &&
            (identical(other.showSuccessDialog, showSuccessDialog) ||
                other.showSuccessDialog == showSuccessDialog) &&
            const DeepCollectionEquality()
                .equals(other._previousAnswers, _previousAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screenStatus,
      const DeepCollectionEquality().hash(_questions),
      screenError,
      pending,
      const DeepCollectionEquality().hash(_historyItems),
      totalScore,
      const DeepCollectionEquality().hash(_branchPath),
      postAnswerStatus,
      postAnswerError,
      lastPostAnswerResult,
      showSuccessDialog,
      const DeepCollectionEquality().hash(_previousAnswers));

  @override
  String toString() {
    return 'DailyActivitiesState(screenStatus: $screenStatus, questions: $questions, screenError: $screenError, pending: $pending, historyItems: $historyItems, totalScore: $totalScore, branchPath: $branchPath, postAnswerStatus: $postAnswerStatus, postAnswerError: $postAnswerError, lastPostAnswerResult: $lastPostAnswerResult, showSuccessDialog: $showSuccessDialog, previousAnswers: $previousAnswers)';
  }
}

/// @nodoc
abstract mixin class _$DailyActivitiesStateCopyWith<$Res>
    implements $DailyActivitiesStateCopyWith<$Res> {
  factory _$DailyActivitiesStateCopyWith(_DailyActivitiesState value,
          $Res Function(_DailyActivitiesState) _then) =
      __$DailyActivitiesStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DailyActivitiesScreenStatus screenStatus,
      List<DailyQuestionEntity> questions,
      String? screenError,
      DailyPendingEntity? pending,
      List<DailyCalendarItemEntity> historyItems,
      double? totalScore,
      List<BranchStep> branchPath,
      DailyActivitiesPostAnswerStatus postAnswerStatus,
      String? postAnswerError,
      DailyAnswerResultEntity? lastPostAnswerResult,
      bool showSuccessDialog,
      List<DailyPreviousAnswersByDateEntity> previousAnswers});
}

/// @nodoc
class __$DailyActivitiesStateCopyWithImpl<$Res>
    implements _$DailyActivitiesStateCopyWith<$Res> {
  __$DailyActivitiesStateCopyWithImpl(this._self, this._then);

  final _DailyActivitiesState _self;
  final $Res Function(_DailyActivitiesState) _then;

  /// Create a copy of DailyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? screenStatus = null,
    Object? questions = null,
    Object? screenError = freezed,
    Object? pending = freezed,
    Object? historyItems = null,
    Object? totalScore = freezed,
    Object? branchPath = null,
    Object? postAnswerStatus = null,
    Object? postAnswerError = freezed,
    Object? lastPostAnswerResult = freezed,
    Object? showSuccessDialog = null,
    Object? previousAnswers = null,
  }) {
    return _then(_DailyActivitiesState(
      screenStatus: null == screenStatus
          ? _self.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesScreenStatus,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      screenError: freezed == screenError
          ? _self.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      pending: freezed == pending
          ? _self.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as DailyPendingEntity?,
      historyItems: null == historyItems
          ? _self._historyItems
          : historyItems // ignore: cast_nullable_to_non_nullable
              as List<DailyCalendarItemEntity>,
      totalScore: freezed == totalScore
          ? _self.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double?,
      branchPath: null == branchPath
          ? _self._branchPath
          : branchPath // ignore: cast_nullable_to_non_nullable
              as List<BranchStep>,
      postAnswerStatus: null == postAnswerStatus
          ? _self.postAnswerStatus
          : postAnswerStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesPostAnswerStatus,
      postAnswerError: freezed == postAnswerError
          ? _self.postAnswerError
          : postAnswerError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPostAnswerResult: freezed == lastPostAnswerResult
          ? _self.lastPostAnswerResult
          : lastPostAnswerResult // ignore: cast_nullable_to_non_nullable
              as DailyAnswerResultEntity?,
      showSuccessDialog: null == showSuccessDialog
          ? _self.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      previousAnswers: null == previousAnswers
          ? _self._previousAnswers
          : previousAnswers // ignore: cast_nullable_to_non_nullable
              as List<DailyPreviousAnswersByDateEntity>,
    ));
  }
}

// dart format on
