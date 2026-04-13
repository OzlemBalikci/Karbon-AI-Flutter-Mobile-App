// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carbon_calculate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarbonCalculateState {
  CarbonCalculateStatus get status;
  int get currentStep;

  /// Aktif anket ID'si — taslak ve gönderim için gerekli.
  String? get pollSetId;

  /// Anket açıklama metni (bilgi adımında gösterilir).
  String get pollDescription;

  /// Anket soruları; yüklenince dolar.
  List<PollQuestionEntity> get questions;

  /// Seçilen cevaplar: `questionId → optionId`
  Map<String, String> get answers;
  String? get error;
  bool get goToHomeRequested;
  PollSubmissionResultEntity? get submissionResult;

  /// Create a copy of CarbonCalculateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarbonCalculateStateCopyWith<CarbonCalculateState> get copyWith =>
      _$CarbonCalculateStateCopyWithImpl<CarbonCalculateState>(
          this as CarbonCalculateState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarbonCalculateState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.pollSetId, pollSetId) ||
                other.pollSetId == pollSetId) &&
            (identical(other.pollDescription, pollDescription) ||
                other.pollDescription == pollDescription) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.goToHomeRequested, goToHomeRequested) ||
                other.goToHomeRequested == goToHomeRequested) &&
            (identical(other.submissionResult, submissionResult) ||
                other.submissionResult == submissionResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentStep,
      pollSetId,
      pollDescription,
      const DeepCollectionEquality().hash(questions),
      const DeepCollectionEquality().hash(answers),
      error,
      goToHomeRequested,
      submissionResult);

  @override
  String toString() {
    return 'CarbonCalculateState(status: $status, currentStep: $currentStep, pollSetId: $pollSetId, pollDescription: $pollDescription, questions: $questions, answers: $answers, error: $error, goToHomeRequested: $goToHomeRequested, submissionResult: $submissionResult)';
  }
}

/// @nodoc
abstract mixin class $CarbonCalculateStateCopyWith<$Res> {
  factory $CarbonCalculateStateCopyWith(CarbonCalculateState value,
          $Res Function(CarbonCalculateState) _then) =
      _$CarbonCalculateStateCopyWithImpl;
  @useResult
  $Res call(
      {CarbonCalculateStatus status,
      int currentStep,
      String? pollSetId,
      String pollDescription,
      List<PollQuestionEntity> questions,
      Map<String, String> answers,
      String? error,
      bool goToHomeRequested,
      PollSubmissionResultEntity? submissionResult});
}

/// @nodoc
class _$CarbonCalculateStateCopyWithImpl<$Res>
    implements $CarbonCalculateStateCopyWith<$Res> {
  _$CarbonCalculateStateCopyWithImpl(this._self, this._then);

  final CarbonCalculateState _self;
  final $Res Function(CarbonCalculateState) _then;

  /// Create a copy of CarbonCalculateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentStep = null,
    Object? pollSetId = freezed,
    Object? pollDescription = null,
    Object? questions = null,
    Object? answers = null,
    Object? error = freezed,
    Object? goToHomeRequested = null,
    Object? submissionResult = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CarbonCalculateStatus,
      currentStep: null == currentStep
          ? _self.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      pollSetId: freezed == pollSetId
          ? _self.pollSetId
          : pollSetId // ignore: cast_nullable_to_non_nullable
              as String?,
      pollDescription: null == pollDescription
          ? _self.pollDescription
          : pollDescription // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PollQuestionEntity>,
      answers: null == answers
          ? _self.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      goToHomeRequested: null == goToHomeRequested
          ? _self.goToHomeRequested
          : goToHomeRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionResult: freezed == submissionResult
          ? _self.submissionResult
          : submissionResult // ignore: cast_nullable_to_non_nullable
              as PollSubmissionResultEntity?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CarbonCalculateState].
extension CarbonCalculateStatePatterns on CarbonCalculateState {
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
    TResult Function(_CarbonCalculateState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState() when $default != null:
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
    TResult Function(_CarbonCalculateState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState():
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
    TResult? Function(_CarbonCalculateState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState() when $default != null:
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
            CarbonCalculateStatus status,
            int currentStep,
            String? pollSetId,
            String pollDescription,
            List<PollQuestionEntity> questions,
            Map<String, String> answers,
            String? error,
            bool goToHomeRequested,
            PollSubmissionResultEntity? submissionResult)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState() when $default != null:
        return $default(
            _that.status,
            _that.currentStep,
            _that.pollSetId,
            _that.pollDescription,
            _that.questions,
            _that.answers,
            _that.error,
            _that.goToHomeRequested,
            _that.submissionResult);
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
            CarbonCalculateStatus status,
            int currentStep,
            String? pollSetId,
            String pollDescription,
            List<PollQuestionEntity> questions,
            Map<String, String> answers,
            String? error,
            bool goToHomeRequested,
            PollSubmissionResultEntity? submissionResult)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState():
        return $default(
            _that.status,
            _that.currentStep,
            _that.pollSetId,
            _that.pollDescription,
            _that.questions,
            _that.answers,
            _that.error,
            _that.goToHomeRequested,
            _that.submissionResult);
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
            CarbonCalculateStatus status,
            int currentStep,
            String? pollSetId,
            String pollDescription,
            List<PollQuestionEntity> questions,
            Map<String, String> answers,
            String? error,
            bool goToHomeRequested,
            PollSubmissionResultEntity? submissionResult)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState() when $default != null:
        return $default(
            _that.status,
            _that.currentStep,
            _that.pollSetId,
            _that.pollDescription,
            _that.questions,
            _that.answers,
            _that.error,
            _that.goToHomeRequested,
            _that.submissionResult);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CarbonCalculateState extends CarbonCalculateState {
  const _CarbonCalculateState(
      {this.status = CarbonCalculateStatus.initial,
      this.currentStep = 0,
      this.pollSetId,
      this.pollDescription = '',
      final List<PollQuestionEntity> questions = const [],
      final Map<String, String> answers = const {},
      this.error,
      this.goToHomeRequested = false,
      this.submissionResult})
      : _questions = questions,
        _answers = answers,
        super._();

  @override
  @JsonKey()
  final CarbonCalculateStatus status;
  @override
  @JsonKey()
  final int currentStep;

  /// Aktif anket ID'si — taslak ve gönderim için gerekli.
  @override
  final String? pollSetId;

  /// Anket açıklama metni (bilgi adımında gösterilir).
  @override
  @JsonKey()
  final String pollDescription;

  /// Anket soruları; yüklenince dolar.
  final List<PollQuestionEntity> _questions;

  /// Anket soruları; yüklenince dolar.
  @override
  @JsonKey()
  List<PollQuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  /// Seçilen cevaplar: `questionId → optionId`
  final Map<String, String> _answers;

  /// Seçilen cevaplar: `questionId → optionId`
  @override
  @JsonKey()
  Map<String, String> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final bool goToHomeRequested;
  @override
  final PollSubmissionResultEntity? submissionResult;

  /// Create a copy of CarbonCalculateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarbonCalculateStateCopyWith<_CarbonCalculateState> get copyWith =>
      __$CarbonCalculateStateCopyWithImpl<_CarbonCalculateState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarbonCalculateState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.pollSetId, pollSetId) ||
                other.pollSetId == pollSetId) &&
            (identical(other.pollDescription, pollDescription) ||
                other.pollDescription == pollDescription) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.goToHomeRequested, goToHomeRequested) ||
                other.goToHomeRequested == goToHomeRequested) &&
            (identical(other.submissionResult, submissionResult) ||
                other.submissionResult == submissionResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentStep,
      pollSetId,
      pollDescription,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_answers),
      error,
      goToHomeRequested,
      submissionResult);

  @override
  String toString() {
    return 'CarbonCalculateState(status: $status, currentStep: $currentStep, pollSetId: $pollSetId, pollDescription: $pollDescription, questions: $questions, answers: $answers, error: $error, goToHomeRequested: $goToHomeRequested, submissionResult: $submissionResult)';
  }
}

/// @nodoc
abstract mixin class _$CarbonCalculateStateCopyWith<$Res>
    implements $CarbonCalculateStateCopyWith<$Res> {
  factory _$CarbonCalculateStateCopyWith(_CarbonCalculateState value,
          $Res Function(_CarbonCalculateState) _then) =
      __$CarbonCalculateStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CarbonCalculateStatus status,
      int currentStep,
      String? pollSetId,
      String pollDescription,
      List<PollQuestionEntity> questions,
      Map<String, String> answers,
      String? error,
      bool goToHomeRequested,
      PollSubmissionResultEntity? submissionResult});
}

/// @nodoc
class __$CarbonCalculateStateCopyWithImpl<$Res>
    implements _$CarbonCalculateStateCopyWith<$Res> {
  __$CarbonCalculateStateCopyWithImpl(this._self, this._then);

  final _CarbonCalculateState _self;
  final $Res Function(_CarbonCalculateState) _then;

  /// Create a copy of CarbonCalculateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? currentStep = null,
    Object? pollSetId = freezed,
    Object? pollDescription = null,
    Object? questions = null,
    Object? answers = null,
    Object? error = freezed,
    Object? goToHomeRequested = null,
    Object? submissionResult = freezed,
  }) {
    return _then(_CarbonCalculateState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CarbonCalculateStatus,
      currentStep: null == currentStep
          ? _self.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      pollSetId: freezed == pollSetId
          ? _self.pollSetId
          : pollSetId // ignore: cast_nullable_to_non_nullable
              as String?,
      pollDescription: null == pollDescription
          ? _self.pollDescription
          : pollDescription // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PollQuestionEntity>,
      answers: null == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      goToHomeRequested: null == goToHomeRequested
          ? _self.goToHomeRequested
          : goToHomeRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionResult: freezed == submissionResult
          ? _self.submissionResult
          : submissionResult // ignore: cast_nullable_to_non_nullable
              as PollSubmissionResultEntity?,
    ));
  }
}

// dart format on
