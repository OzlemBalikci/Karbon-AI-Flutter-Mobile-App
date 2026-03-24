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
  DailyActivitiesListStatus get listStatus;
  List<DailyQuestionEntity> get questions;
  String? get listError;
  DailyPendingEntity? get pending;
  List<DailyCalendarItemEntity> get historyItems;
  double? get totalScore;

  /// null → ana ekran; dolu → "Seçili Soru" akışı
  DailyQuestionEntity? get activeQuestion;
  String? get selectedOptionId;
  DailyActivitiesSubmitStatus get submitStatus;
  String? get submitError;
  DailyActivityAnswerResultEntity? get lastSubmitResult;

  /// Başarı modalı (Tebrikler X puan)
  bool get showSuccessDialog;

  /// API gelince: getHistory() ile doldurursun
  List<DailyQuestionEntity> get answeredQuestionStubs;

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
            (identical(other.listStatus, listStatus) ||
                other.listStatus == listStatus) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.listError, listError) ||
                other.listError == listError) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            const DeepCollectionEquality()
                .equals(other.historyItems, historyItems) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.activeQuestion, activeQuestion) ||
                other.activeQuestion == activeQuestion) &&
            (identical(other.selectedOptionId, selectedOptionId) ||
                other.selectedOptionId == selectedOptionId) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.submitError, submitError) ||
                other.submitError == submitError) &&
            (identical(other.lastSubmitResult, lastSubmitResult) ||
                other.lastSubmitResult == lastSubmitResult) &&
            (identical(other.showSuccessDialog, showSuccessDialog) ||
                other.showSuccessDialog == showSuccessDialog) &&
            const DeepCollectionEquality()
                .equals(other.answeredQuestionStubs, answeredQuestionStubs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      listStatus,
      const DeepCollectionEquality().hash(questions),
      listError,
      pending,
      const DeepCollectionEquality().hash(historyItems),
      totalScore,
      activeQuestion,
      selectedOptionId,
      submitStatus,
      submitError,
      lastSubmitResult,
      showSuccessDialog,
      const DeepCollectionEquality().hash(answeredQuestionStubs));

  @override
  String toString() {
    return 'DailyActivitiesState(listStatus: $listStatus, questions: $questions, listError: $listError, pending: $pending, historyItems: $historyItems, totalScore: $totalScore, activeQuestion: $activeQuestion, selectedOptionId: $selectedOptionId, submitStatus: $submitStatus, submitError: $submitError, lastSubmitResult: $lastSubmitResult, showSuccessDialog: $showSuccessDialog, answeredQuestionStubs: $answeredQuestionStubs)';
  }
}

/// @nodoc
abstract mixin class $DailyActivitiesStateCopyWith<$Res> {
  factory $DailyActivitiesStateCopyWith(DailyActivitiesState value,
          $Res Function(DailyActivitiesState) _then) =
      _$DailyActivitiesStateCopyWithImpl;
  @useResult
  $Res call(
      {DailyActivitiesListStatus listStatus,
      List<DailyQuestionEntity> questions,
      String? listError,
      DailyPendingEntity? pending,
      List<DailyCalendarItemEntity> historyItems,
      double? totalScore,
      DailyQuestionEntity? activeQuestion,
      String? selectedOptionId,
      DailyActivitiesSubmitStatus submitStatus,
      String? submitError,
      DailyActivityAnswerResultEntity? lastSubmitResult,
      bool showSuccessDialog,
      List<DailyQuestionEntity> answeredQuestionStubs});
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
    Object? listStatus = null,
    Object? questions = null,
    Object? listError = freezed,
    Object? pending = freezed,
    Object? historyItems = null,
    Object? totalScore = freezed,
    Object? activeQuestion = freezed,
    Object? selectedOptionId = freezed,
    Object? submitStatus = null,
    Object? submitError = freezed,
    Object? lastSubmitResult = freezed,
    Object? showSuccessDialog = null,
    Object? answeredQuestionStubs = null,
  }) {
    return _then(_self.copyWith(
      listStatus: null == listStatus
          ? _self.listStatus
          : listStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesListStatus,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      listError: freezed == listError
          ? _self.listError
          : listError // ignore: cast_nullable_to_non_nullable
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
      activeQuestion: freezed == activeQuestion
          ? _self.activeQuestion
          : activeQuestion // ignore: cast_nullable_to_non_nullable
              as DailyQuestionEntity?,
      selectedOptionId: freezed == selectedOptionId
          ? _self.selectedOptionId
          : selectedOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesSubmitStatus,
      submitError: freezed == submitError
          ? _self.submitError
          : submitError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSubmitResult: freezed == lastSubmitResult
          ? _self.lastSubmitResult
          : lastSubmitResult // ignore: cast_nullable_to_non_nullable
              as DailyActivityAnswerResultEntity?,
      showSuccessDialog: null == showSuccessDialog
          ? _self.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      answeredQuestionStubs: null == answeredQuestionStubs
          ? _self.answeredQuestionStubs
          : answeredQuestionStubs // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
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
            DailyActivitiesListStatus listStatus,
            List<DailyQuestionEntity> questions,
            String? listError,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            double? totalScore,
            DailyQuestionEntity? activeQuestion,
            String? selectedOptionId,
            DailyActivitiesSubmitStatus submitStatus,
            String? submitError,
            DailyActivityAnswerResultEntity? lastSubmitResult,
            bool showSuccessDialog,
            List<DailyQuestionEntity> answeredQuestionStubs)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
        return $default(
            _that.listStatus,
            _that.questions,
            _that.listError,
            _that.pending,
            _that.historyItems,
            _that.totalScore,
            _that.activeQuestion,
            _that.selectedOptionId,
            _that.submitStatus,
            _that.submitError,
            _that.lastSubmitResult,
            _that.showSuccessDialog,
            _that.answeredQuestionStubs);
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
            DailyActivitiesListStatus listStatus,
            List<DailyQuestionEntity> questions,
            String? listError,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            double? totalScore,
            DailyQuestionEntity? activeQuestion,
            String? selectedOptionId,
            DailyActivitiesSubmitStatus submitStatus,
            String? submitError,
            DailyActivityAnswerResultEntity? lastSubmitResult,
            bool showSuccessDialog,
            List<DailyQuestionEntity> answeredQuestionStubs)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState():
        return $default(
            _that.listStatus,
            _that.questions,
            _that.listError,
            _that.pending,
            _that.historyItems,
            _that.totalScore,
            _that.activeQuestion,
            _that.selectedOptionId,
            _that.submitStatus,
            _that.submitError,
            _that.lastSubmitResult,
            _that.showSuccessDialog,
            _that.answeredQuestionStubs);
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
            DailyActivitiesListStatus listStatus,
            List<DailyQuestionEntity> questions,
            String? listError,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            double? totalScore,
            DailyQuestionEntity? activeQuestion,
            String? selectedOptionId,
            DailyActivitiesSubmitStatus submitStatus,
            String? submitError,
            DailyActivityAnswerResultEntity? lastSubmitResult,
            bool showSuccessDialog,
            List<DailyQuestionEntity> answeredQuestionStubs)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
        return $default(
            _that.listStatus,
            _that.questions,
            _that.listError,
            _that.pending,
            _that.historyItems,
            _that.totalScore,
            _that.activeQuestion,
            _that.selectedOptionId,
            _that.submitStatus,
            _that.submitError,
            _that.lastSubmitResult,
            _that.showSuccessDialog,
            _that.answeredQuestionStubs);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DailyActivitiesState implements DailyActivitiesState {
  const _DailyActivitiesState(
      {this.listStatus = DailyActivitiesListStatus.initial,
      final List<DailyQuestionEntity> questions = const [],
      this.listError,
      this.pending,
      final List<DailyCalendarItemEntity> historyItems = const [],
      this.totalScore,
      this.activeQuestion,
      this.selectedOptionId,
      this.submitStatus = DailyActivitiesSubmitStatus.idle,
      this.submitError,
      this.lastSubmitResult,
      this.showSuccessDialog = false,
      final List<DailyQuestionEntity> answeredQuestionStubs = const []})
      : _questions = questions,
        _historyItems = historyItems,
        _answeredQuestionStubs = answeredQuestionStubs;

  @override
  @JsonKey()
  final DailyActivitiesListStatus listStatus;
  final List<DailyQuestionEntity> _questions;
  @override
  @JsonKey()
  List<DailyQuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final String? listError;
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

  /// null → ana ekran; dolu → "Seçili Soru" akışı
  @override
  final DailyQuestionEntity? activeQuestion;
  @override
  final String? selectedOptionId;
  @override
  @JsonKey()
  final DailyActivitiesSubmitStatus submitStatus;
  @override
  final String? submitError;
  @override
  final DailyActivityAnswerResultEntity? lastSubmitResult;

  /// Başarı modalı (Tebrikler X puan)
  @override
  @JsonKey()
  final bool showSuccessDialog;

  /// API gelince: getHistory() ile doldurursun
  final List<DailyQuestionEntity> _answeredQuestionStubs;

  /// API gelince: getHistory() ile doldurursun
  @override
  @JsonKey()
  List<DailyQuestionEntity> get answeredQuestionStubs {
    if (_answeredQuestionStubs is EqualUnmodifiableListView)
      return _answeredQuestionStubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answeredQuestionStubs);
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
            (identical(other.listStatus, listStatus) ||
                other.listStatus == listStatus) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.listError, listError) ||
                other.listError == listError) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            const DeepCollectionEquality()
                .equals(other._historyItems, _historyItems) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.activeQuestion, activeQuestion) ||
                other.activeQuestion == activeQuestion) &&
            (identical(other.selectedOptionId, selectedOptionId) ||
                other.selectedOptionId == selectedOptionId) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.submitError, submitError) ||
                other.submitError == submitError) &&
            (identical(other.lastSubmitResult, lastSubmitResult) ||
                other.lastSubmitResult == lastSubmitResult) &&
            (identical(other.showSuccessDialog, showSuccessDialog) ||
                other.showSuccessDialog == showSuccessDialog) &&
            const DeepCollectionEquality()
                .equals(other._answeredQuestionStubs, _answeredQuestionStubs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      listStatus,
      const DeepCollectionEquality().hash(_questions),
      listError,
      pending,
      const DeepCollectionEquality().hash(_historyItems),
      totalScore,
      activeQuestion,
      selectedOptionId,
      submitStatus,
      submitError,
      lastSubmitResult,
      showSuccessDialog,
      const DeepCollectionEquality().hash(_answeredQuestionStubs));

  @override
  String toString() {
    return 'DailyActivitiesState(listStatus: $listStatus, questions: $questions, listError: $listError, pending: $pending, historyItems: $historyItems, totalScore: $totalScore, activeQuestion: $activeQuestion, selectedOptionId: $selectedOptionId, submitStatus: $submitStatus, submitError: $submitError, lastSubmitResult: $lastSubmitResult, showSuccessDialog: $showSuccessDialog, answeredQuestionStubs: $answeredQuestionStubs)';
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
      {DailyActivitiesListStatus listStatus,
      List<DailyQuestionEntity> questions,
      String? listError,
      DailyPendingEntity? pending,
      List<DailyCalendarItemEntity> historyItems,
      double? totalScore,
      DailyQuestionEntity? activeQuestion,
      String? selectedOptionId,
      DailyActivitiesSubmitStatus submitStatus,
      String? submitError,
      DailyActivityAnswerResultEntity? lastSubmitResult,
      bool showSuccessDialog,
      List<DailyQuestionEntity> answeredQuestionStubs});
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
    Object? listStatus = null,
    Object? questions = null,
    Object? listError = freezed,
    Object? pending = freezed,
    Object? historyItems = null,
    Object? totalScore = freezed,
    Object? activeQuestion = freezed,
    Object? selectedOptionId = freezed,
    Object? submitStatus = null,
    Object? submitError = freezed,
    Object? lastSubmitResult = freezed,
    Object? showSuccessDialog = null,
    Object? answeredQuestionStubs = null,
  }) {
    return _then(_DailyActivitiesState(
      listStatus: null == listStatus
          ? _self.listStatus
          : listStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesListStatus,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      listError: freezed == listError
          ? _self.listError
          : listError // ignore: cast_nullable_to_non_nullable
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
      activeQuestion: freezed == activeQuestion
          ? _self.activeQuestion
          : activeQuestion // ignore: cast_nullable_to_non_nullable
              as DailyQuestionEntity?,
      selectedOptionId: freezed == selectedOptionId
          ? _self.selectedOptionId
          : selectedOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesSubmitStatus,
      submitError: freezed == submitError
          ? _self.submitError
          : submitError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSubmitResult: freezed == lastSubmitResult
          ? _self.lastSubmitResult
          : lastSubmitResult // ignore: cast_nullable_to_non_nullable
              as DailyActivityAnswerResultEntity?,
      showSuccessDialog: null == showSuccessDialog
          ? _self.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      answeredQuestionStubs: null == answeredQuestionStubs
          ? _self._answeredQuestionStubs
          : answeredQuestionStubs // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
    ));
  }
}

// dart format on
