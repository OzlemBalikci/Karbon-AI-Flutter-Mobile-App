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
  Map<String, DateTime> get questionSolvedAt;
  double? get totalScore;

  /// null → ana ekran; dolu → "Seçili Soru" akışı
  DailyQuestionEntity? get activeQuestion;
  String? get selectedOptionId;
  DailyActivitiesPostAnswerStatus get postAnswerStatus;
  String? get postAnswerError;
  DailyAnswerResultEntity? get lastPostAnswerResult;
  Map<String, double> get questionScore;

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
            const DeepCollectionEquality()
                .equals(other.questionSolvedAt, questionSolvedAt) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.activeQuestion, activeQuestion) ||
                other.activeQuestion == activeQuestion) &&
            (identical(other.selectedOptionId, selectedOptionId) ||
                other.selectedOptionId == selectedOptionId) &&
            (identical(other.postAnswerStatus, postAnswerStatus) ||
                other.postAnswerStatus == postAnswerStatus) &&
            (identical(other.postAnswerError, postAnswerError) ||
                other.postAnswerError == postAnswerError) &&
            (identical(other.lastPostAnswerResult, lastPostAnswerResult) ||
                other.lastPostAnswerResult == lastPostAnswerResult) &&
            const DeepCollectionEquality()
                .equals(other.questionScore, questionScore) &&
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
      const DeepCollectionEquality().hash(questionSolvedAt),
      totalScore,
      activeQuestion,
      selectedOptionId,
      postAnswerStatus,
      postAnswerError,
      lastPostAnswerResult,
      const DeepCollectionEquality().hash(questionScore),
      showSuccessDialog,
      const DeepCollectionEquality().hash(answeredQuestionStubs));

  @override
  String toString() {
    return 'DailyActivitiesState(listStatus: $listStatus, questions: $questions, listError: $listError, pending: $pending, historyItems: $historyItems, questionSolvedAt: $questionSolvedAt, totalScore: $totalScore, activeQuestion: $activeQuestion, selectedOptionId: $selectedOptionId, postAnswerStatus: $postAnswerStatus, postAnswerError: $postAnswerError, lastPostAnswerResult: $lastPostAnswerResult, questionScore: $questionScore, showSuccessDialog: $showSuccessDialog, answeredQuestionStubs: $answeredQuestionStubs)';
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
      Map<String, DateTime> questionSolvedAt,
      double? totalScore,
      DailyQuestionEntity? activeQuestion,
      String? selectedOptionId,
      DailyActivitiesPostAnswerStatus postAnswerStatus,
      String? postAnswerError,
      DailyAnswerResultEntity? lastPostAnswerResult,
      Map<String, double> questionScore,
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
    Object? questionSolvedAt = null,
    Object? totalScore = freezed,
    Object? activeQuestion = freezed,
    Object? selectedOptionId = freezed,
    Object? postAnswerStatus = null,
    Object? postAnswerError = freezed,
    Object? lastPostAnswerResult = freezed,
    Object? questionScore = null,
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
      questionSolvedAt: null == questionSolvedAt
          ? _self.questionSolvedAt
          : questionSolvedAt // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
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
      questionScore: null == questionScore
          ? _self.questionScore
          : questionScore // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
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
            Map<String, DateTime> questionSolvedAt,
            double? totalScore,
            DailyQuestionEntity? activeQuestion,
            String? selectedOptionId,
            DailyActivitiesPostAnswerStatus postAnswerStatus,
            String? postAnswerError,
            DailyAnswerResultEntity? lastPostAnswerResult,
            Map<String, double> questionScore,
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
            _that.questionSolvedAt,
            _that.totalScore,
            _that.activeQuestion,
            _that.selectedOptionId,
            _that.postAnswerStatus,
            _that.postAnswerError,
            _that.lastPostAnswerResult,
            _that.questionScore,
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
            Map<String, DateTime> questionSolvedAt,
            double? totalScore,
            DailyQuestionEntity? activeQuestion,
            String? selectedOptionId,
            DailyActivitiesPostAnswerStatus postAnswerStatus,
            String? postAnswerError,
            DailyAnswerResultEntity? lastPostAnswerResult,
            Map<String, double> questionScore,
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
            _that.questionSolvedAt,
            _that.totalScore,
            _that.activeQuestion,
            _that.selectedOptionId,
            _that.postAnswerStatus,
            _that.postAnswerError,
            _that.lastPostAnswerResult,
            _that.questionScore,
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
            Map<String, DateTime> questionSolvedAt,
            double? totalScore,
            DailyQuestionEntity? activeQuestion,
            String? selectedOptionId,
            DailyActivitiesPostAnswerStatus postAnswerStatus,
            String? postAnswerError,
            DailyAnswerResultEntity? lastPostAnswerResult,
            Map<String, double> questionScore,
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
            _that.questionSolvedAt,
            _that.totalScore,
            _that.activeQuestion,
            _that.selectedOptionId,
            _that.postAnswerStatus,
            _that.postAnswerError,
            _that.lastPostAnswerResult,
            _that.questionScore,
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
      final Map<String, DateTime> questionSolvedAt = const {},
      this.totalScore,
      this.activeQuestion,
      this.selectedOptionId,
      this.postAnswerStatus = DailyActivitiesPostAnswerStatus.idle,
      this.postAnswerError,
      this.lastPostAnswerResult,
      final Map<String, double> questionScore = const {},
      this.showSuccessDialog = false,
      final List<DailyQuestionEntity> answeredQuestionStubs = const []})
      : _questions = questions,
        _historyItems = historyItems,
        _questionSolvedAt = questionSolvedAt,
        _questionScore = questionScore,
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

  final Map<String, DateTime> _questionSolvedAt;
  @override
  @JsonKey()
  Map<String, DateTime> get questionSolvedAt {
    if (_questionSolvedAt is EqualUnmodifiableMapView) return _questionSolvedAt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_questionSolvedAt);
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
  final DailyActivitiesPostAnswerStatus postAnswerStatus;
  @override
  final String? postAnswerError;
  @override
  final DailyAnswerResultEntity? lastPostAnswerResult;
  final Map<String, double> _questionScore;
  @override
  @JsonKey()
  Map<String, double> get questionScore {
    if (_questionScore is EqualUnmodifiableMapView) return _questionScore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_questionScore);
  }

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
            const DeepCollectionEquality()
                .equals(other._questionSolvedAt, _questionSolvedAt) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.activeQuestion, activeQuestion) ||
                other.activeQuestion == activeQuestion) &&
            (identical(other.selectedOptionId, selectedOptionId) ||
                other.selectedOptionId == selectedOptionId) &&
            (identical(other.postAnswerStatus, postAnswerStatus) ||
                other.postAnswerStatus == postAnswerStatus) &&
            (identical(other.postAnswerError, postAnswerError) ||
                other.postAnswerError == postAnswerError) &&
            (identical(other.lastPostAnswerResult, lastPostAnswerResult) ||
                other.lastPostAnswerResult == lastPostAnswerResult) &&
            const DeepCollectionEquality()
                .equals(other._questionScore, _questionScore) &&
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
      const DeepCollectionEquality().hash(_questionSolvedAt),
      totalScore,
      activeQuestion,
      selectedOptionId,
      postAnswerStatus,
      postAnswerError,
      lastPostAnswerResult,
      const DeepCollectionEquality().hash(_questionScore),
      showSuccessDialog,
      const DeepCollectionEquality().hash(_answeredQuestionStubs));

  @override
  String toString() {
    return 'DailyActivitiesState(listStatus: $listStatus, questions: $questions, listError: $listError, pending: $pending, historyItems: $historyItems, questionSolvedAt: $questionSolvedAt, totalScore: $totalScore, activeQuestion: $activeQuestion, selectedOptionId: $selectedOptionId, postAnswerStatus: $postAnswerStatus, postAnswerError: $postAnswerError, lastPostAnswerResult: $lastPostAnswerResult, questionScore: $questionScore, showSuccessDialog: $showSuccessDialog, answeredQuestionStubs: $answeredQuestionStubs)';
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
      Map<String, DateTime> questionSolvedAt,
      double? totalScore,
      DailyQuestionEntity? activeQuestion,
      String? selectedOptionId,
      DailyActivitiesPostAnswerStatus postAnswerStatus,
      String? postAnswerError,
      DailyAnswerResultEntity? lastPostAnswerResult,
      Map<String, double> questionScore,
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
    Object? questionSolvedAt = null,
    Object? totalScore = freezed,
    Object? activeQuestion = freezed,
    Object? selectedOptionId = freezed,
    Object? postAnswerStatus = null,
    Object? postAnswerError = freezed,
    Object? lastPostAnswerResult = freezed,
    Object? questionScore = null,
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
      questionSolvedAt: null == questionSolvedAt
          ? _self._questionSolvedAt
          : questionSolvedAt // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
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
      questionScore: null == questionScore
          ? _self._questionScore
          : questionScore // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
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
