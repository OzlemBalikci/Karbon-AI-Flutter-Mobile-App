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
  DailyActivitiesStatus get status;
  List<DailyQuestionEntity> get allQuestions;
  List<DailyQuestionEntity> get questions;
  DailyPendingEntity? get pending;
  List<DailyCalendarItemEntity> get historyItems;
  List<DailyPreviousAnswersByDateEntity> get previousAnswers;
  String? get screenError;
  DailyQuestionEntity? get selectedQuestion;
  List<DailyQuestionEntity> get visibleSteps;
  Map<String, DailyQuestionOptionEntity> get selectedOptions;
  DailyActivitiesPostStatus get postStatus;
  DailyAnswerResultEntity? get lastResult;
  bool get showSuccessDialog;
  String? get postError;

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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.allQuestions, allQuestions) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            const DeepCollectionEquality()
                .equals(other.historyItems, historyItems) &&
            const DeepCollectionEquality()
                .equals(other.previousAnswers, previousAnswers) &&
            (identical(other.screenError, screenError) ||
                other.screenError == screenError) &&
            (identical(other.selectedQuestion, selectedQuestion) ||
                other.selectedQuestion == selectedQuestion) &&
            const DeepCollectionEquality()
                .equals(other.visibleSteps, visibleSteps) &&
            const DeepCollectionEquality()
                .equals(other.selectedOptions, selectedOptions) &&
            (identical(other.postStatus, postStatus) ||
                other.postStatus == postStatus) &&
            (identical(other.lastResult, lastResult) ||
                other.lastResult == lastResult) &&
            (identical(other.showSuccessDialog, showSuccessDialog) ||
                other.showSuccessDialog == showSuccessDialog) &&
            (identical(other.postError, postError) ||
                other.postError == postError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(allQuestions),
      const DeepCollectionEquality().hash(questions),
      pending,
      const DeepCollectionEquality().hash(historyItems),
      const DeepCollectionEquality().hash(previousAnswers),
      screenError,
      selectedQuestion,
      const DeepCollectionEquality().hash(visibleSteps),
      const DeepCollectionEquality().hash(selectedOptions),
      postStatus,
      lastResult,
      showSuccessDialog,
      postError);

  @override
  String toString() {
    return 'DailyActivitiesState(status: $status, allQuestions: $allQuestions, questions: $questions, pending: $pending, historyItems: $historyItems, previousAnswers: $previousAnswers, screenError: $screenError, selectedQuestion: $selectedQuestion, visibleSteps: $visibleSteps, selectedOptions: $selectedOptions, postStatus: $postStatus, lastResult: $lastResult, showSuccessDialog: $showSuccessDialog, postError: $postError)';
  }
}

/// @nodoc
abstract mixin class $DailyActivitiesStateCopyWith<$Res> {
  factory $DailyActivitiesStateCopyWith(DailyActivitiesState value,
          $Res Function(DailyActivitiesState) _then) =
      _$DailyActivitiesStateCopyWithImpl;
  @useResult
  $Res call(
      {DailyActivitiesStatus status,
      List<DailyQuestionEntity> allQuestions,
      List<DailyQuestionEntity> questions,
      DailyPendingEntity? pending,
      List<DailyCalendarItemEntity> historyItems,
      List<DailyPreviousAnswersByDateEntity> previousAnswers,
      String? screenError,
      DailyQuestionEntity? selectedQuestion,
      List<DailyQuestionEntity> visibleSteps,
      Map<String, DailyQuestionOptionEntity> selectedOptions,
      DailyActivitiesPostStatus postStatus,
      DailyAnswerResultEntity? lastResult,
      bool showSuccessDialog,
      String? postError});
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
    Object? status = null,
    Object? allQuestions = null,
    Object? questions = null,
    Object? pending = freezed,
    Object? historyItems = null,
    Object? previousAnswers = null,
    Object? screenError = freezed,
    Object? selectedQuestion = freezed,
    Object? visibleSteps = null,
    Object? selectedOptions = null,
    Object? postStatus = null,
    Object? lastResult = freezed,
    Object? showSuccessDialog = null,
    Object? postError = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesStatus,
      allQuestions: null == allQuestions
          ? _self.allQuestions
          : allQuestions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      pending: freezed == pending
          ? _self.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as DailyPendingEntity?,
      historyItems: null == historyItems
          ? _self.historyItems
          : historyItems // ignore: cast_nullable_to_non_nullable
              as List<DailyCalendarItemEntity>,
      previousAnswers: null == previousAnswers
          ? _self.previousAnswers
          : previousAnswers // ignore: cast_nullable_to_non_nullable
              as List<DailyPreviousAnswersByDateEntity>,
      screenError: freezed == screenError
          ? _self.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedQuestion: freezed == selectedQuestion
          ? _self.selectedQuestion
          : selectedQuestion // ignore: cast_nullable_to_non_nullable
              as DailyQuestionEntity?,
      visibleSteps: null == visibleSteps
          ? _self.visibleSteps
          : visibleSteps // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      selectedOptions: null == selectedOptions
          ? _self.selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyQuestionOptionEntity>,
      postStatus: null == postStatus
          ? _self.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesPostStatus,
      lastResult: freezed == lastResult
          ? _self.lastResult
          : lastResult // ignore: cast_nullable_to_non_nullable
              as DailyAnswerResultEntity?,
      showSuccessDialog: null == showSuccessDialog
          ? _self.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      postError: freezed == postError
          ? _self.postError
          : postError // ignore: cast_nullable_to_non_nullable
              as String?,
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
            DailyActivitiesStatus status,
            List<DailyQuestionEntity> allQuestions,
            List<DailyQuestionEntity> questions,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            List<DailyPreviousAnswersByDateEntity> previousAnswers,
            String? screenError,
            DailyQuestionEntity? selectedQuestion,
            List<DailyQuestionEntity> visibleSteps,
            Map<String, DailyQuestionOptionEntity> selectedOptions,
            DailyActivitiesPostStatus postStatus,
            DailyAnswerResultEntity? lastResult,
            bool showSuccessDialog,
            String? postError)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
        return $default(
            _that.status,
            _that.allQuestions,
            _that.questions,
            _that.pending,
            _that.historyItems,
            _that.previousAnswers,
            _that.screenError,
            _that.selectedQuestion,
            _that.visibleSteps,
            _that.selectedOptions,
            _that.postStatus,
            _that.lastResult,
            _that.showSuccessDialog,
            _that.postError);
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
            DailyActivitiesStatus status,
            List<DailyQuestionEntity> allQuestions,
            List<DailyQuestionEntity> questions,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            List<DailyPreviousAnswersByDateEntity> previousAnswers,
            String? screenError,
            DailyQuestionEntity? selectedQuestion,
            List<DailyQuestionEntity> visibleSteps,
            Map<String, DailyQuestionOptionEntity> selectedOptions,
            DailyActivitiesPostStatus postStatus,
            DailyAnswerResultEntity? lastResult,
            bool showSuccessDialog,
            String? postError)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState():
        return $default(
            _that.status,
            _that.allQuestions,
            _that.questions,
            _that.pending,
            _that.historyItems,
            _that.previousAnswers,
            _that.screenError,
            _that.selectedQuestion,
            _that.visibleSteps,
            _that.selectedOptions,
            _that.postStatus,
            _that.lastResult,
            _that.showSuccessDialog,
            _that.postError);
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
            DailyActivitiesStatus status,
            List<DailyQuestionEntity> allQuestions,
            List<DailyQuestionEntity> questions,
            DailyPendingEntity? pending,
            List<DailyCalendarItemEntity> historyItems,
            List<DailyPreviousAnswersByDateEntity> previousAnswers,
            String? screenError,
            DailyQuestionEntity? selectedQuestion,
            List<DailyQuestionEntity> visibleSteps,
            Map<String, DailyQuestionOptionEntity> selectedOptions,
            DailyActivitiesPostStatus postStatus,
            DailyAnswerResultEntity? lastResult,
            bool showSuccessDialog,
            String? postError)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DailyActivitiesState() when $default != null:
        return $default(
            _that.status,
            _that.allQuestions,
            _that.questions,
            _that.pending,
            _that.historyItems,
            _that.previousAnswers,
            _that.screenError,
            _that.selectedQuestion,
            _that.visibleSteps,
            _that.selectedOptions,
            _that.postStatus,
            _that.lastResult,
            _that.showSuccessDialog,
            _that.postError);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DailyActivitiesState extends DailyActivitiesState {
  const _DailyActivitiesState(
      {this.status = DailyActivitiesStatus.initial,
      final List<DailyQuestionEntity> allQuestions = const [],
      final List<DailyQuestionEntity> questions = const [],
      this.pending,
      final List<DailyCalendarItemEntity> historyItems = const [],
      final List<DailyPreviousAnswersByDateEntity> previousAnswers = const [],
      this.screenError,
      this.selectedQuestion,
      final List<DailyQuestionEntity> visibleSteps = const [],
      final Map<String, DailyQuestionOptionEntity> selectedOptions = const {},
      this.postStatus = DailyActivitiesPostStatus.idle,
      this.lastResult,
      this.showSuccessDialog = false,
      this.postError})
      : _allQuestions = allQuestions,
        _questions = questions,
        _historyItems = historyItems,
        _previousAnswers = previousAnswers,
        _visibleSteps = visibleSteps,
        _selectedOptions = selectedOptions,
        super._();

  @override
  @JsonKey()
  final DailyActivitiesStatus status;
  final List<DailyQuestionEntity> _allQuestions;
  @override
  @JsonKey()
  List<DailyQuestionEntity> get allQuestions {
    if (_allQuestions is EqualUnmodifiableListView) return _allQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allQuestions);
  }

  final List<DailyQuestionEntity> _questions;
  @override
  @JsonKey()
  List<DailyQuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

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

  final List<DailyPreviousAnswersByDateEntity> _previousAnswers;
  @override
  @JsonKey()
  List<DailyPreviousAnswersByDateEntity> get previousAnswers {
    if (_previousAnswers is EqualUnmodifiableListView) return _previousAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousAnswers);
  }

  @override
  final String? screenError;
  @override
  final DailyQuestionEntity? selectedQuestion;
  final List<DailyQuestionEntity> _visibleSteps;
  @override
  @JsonKey()
  List<DailyQuestionEntity> get visibleSteps {
    if (_visibleSteps is EqualUnmodifiableListView) return _visibleSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleSteps);
  }

  final Map<String, DailyQuestionOptionEntity> _selectedOptions;
  @override
  @JsonKey()
  Map<String, DailyQuestionOptionEntity> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableMapView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedOptions);
  }

  @override
  @JsonKey()
  final DailyActivitiesPostStatus postStatus;
  @override
  final DailyAnswerResultEntity? lastResult;
  @override
  @JsonKey()
  final bool showSuccessDialog;
  @override
  final String? postError;

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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._allQuestions, _allQuestions) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            const DeepCollectionEquality()
                .equals(other._historyItems, _historyItems) &&
            const DeepCollectionEquality()
                .equals(other._previousAnswers, _previousAnswers) &&
            (identical(other.screenError, screenError) ||
                other.screenError == screenError) &&
            (identical(other.selectedQuestion, selectedQuestion) ||
                other.selectedQuestion == selectedQuestion) &&
            const DeepCollectionEquality()
                .equals(other._visibleSteps, _visibleSteps) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions) &&
            (identical(other.postStatus, postStatus) ||
                other.postStatus == postStatus) &&
            (identical(other.lastResult, lastResult) ||
                other.lastResult == lastResult) &&
            (identical(other.showSuccessDialog, showSuccessDialog) ||
                other.showSuccessDialog == showSuccessDialog) &&
            (identical(other.postError, postError) ||
                other.postError == postError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_allQuestions),
      const DeepCollectionEquality().hash(_questions),
      pending,
      const DeepCollectionEquality().hash(_historyItems),
      const DeepCollectionEquality().hash(_previousAnswers),
      screenError,
      selectedQuestion,
      const DeepCollectionEquality().hash(_visibleSteps),
      const DeepCollectionEquality().hash(_selectedOptions),
      postStatus,
      lastResult,
      showSuccessDialog,
      postError);

  @override
  String toString() {
    return 'DailyActivitiesState(status: $status, allQuestions: $allQuestions, questions: $questions, pending: $pending, historyItems: $historyItems, previousAnswers: $previousAnswers, screenError: $screenError, selectedQuestion: $selectedQuestion, visibleSteps: $visibleSteps, selectedOptions: $selectedOptions, postStatus: $postStatus, lastResult: $lastResult, showSuccessDialog: $showSuccessDialog, postError: $postError)';
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
      {DailyActivitiesStatus status,
      List<DailyQuestionEntity> allQuestions,
      List<DailyQuestionEntity> questions,
      DailyPendingEntity? pending,
      List<DailyCalendarItemEntity> historyItems,
      List<DailyPreviousAnswersByDateEntity> previousAnswers,
      String? screenError,
      DailyQuestionEntity? selectedQuestion,
      List<DailyQuestionEntity> visibleSteps,
      Map<String, DailyQuestionOptionEntity> selectedOptions,
      DailyActivitiesPostStatus postStatus,
      DailyAnswerResultEntity? lastResult,
      bool showSuccessDialog,
      String? postError});
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
    Object? status = null,
    Object? allQuestions = null,
    Object? questions = null,
    Object? pending = freezed,
    Object? historyItems = null,
    Object? previousAnswers = null,
    Object? screenError = freezed,
    Object? selectedQuestion = freezed,
    Object? visibleSteps = null,
    Object? selectedOptions = null,
    Object? postStatus = null,
    Object? lastResult = freezed,
    Object? showSuccessDialog = null,
    Object? postError = freezed,
  }) {
    return _then(_DailyActivitiesState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesStatus,
      allQuestions: null == allQuestions
          ? _self._allQuestions
          : allQuestions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      pending: freezed == pending
          ? _self.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as DailyPendingEntity?,
      historyItems: null == historyItems
          ? _self._historyItems
          : historyItems // ignore: cast_nullable_to_non_nullable
              as List<DailyCalendarItemEntity>,
      previousAnswers: null == previousAnswers
          ? _self._previousAnswers
          : previousAnswers // ignore: cast_nullable_to_non_nullable
              as List<DailyPreviousAnswersByDateEntity>,
      screenError: freezed == screenError
          ? _self.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedQuestion: freezed == selectedQuestion
          ? _self.selectedQuestion
          : selectedQuestion // ignore: cast_nullable_to_non_nullable
              as DailyQuestionEntity?,
      visibleSteps: null == visibleSteps
          ? _self._visibleSteps
          : visibleSteps // ignore: cast_nullable_to_non_nullable
              as List<DailyQuestionEntity>,
      selectedOptions: null == selectedOptions
          ? _self._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyQuestionOptionEntity>,
      postStatus: null == postStatus
          ? _self.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as DailyActivitiesPostStatus,
      lastResult: freezed == lastResult
          ? _self.lastResult
          : lastResult // ignore: cast_nullable_to_non_nullable
              as DailyAnswerResultEntity?,
      showSuccessDialog: null == showSuccessDialog
          ? _self.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      postError: freezed == postError
          ? _self.postError
          : postError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
