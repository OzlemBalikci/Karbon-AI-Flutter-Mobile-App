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
  int get currentStep;
  Map<int, dynamic> get answers;
  bool get isLoading;
  String? get error;
  List<Map<String, dynamic>> get questions;
  bool get goToHomeRequested;

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
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.goToHomeRequested, goToHomeRequested) ||
                other.goToHomeRequested == goToHomeRequested));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentStep,
      const DeepCollectionEquality().hash(answers),
      isLoading,
      error,
      const DeepCollectionEquality().hash(questions),
      goToHomeRequested);

  @override
  String toString() {
    return 'CarbonCalculateState(currentStep: $currentStep, answers: $answers, isLoading: $isLoading, error: $error, questions: $questions, goToHomeRequested: $goToHomeRequested)';
  }
}

/// @nodoc
abstract mixin class $CarbonCalculateStateCopyWith<$Res> {
  factory $CarbonCalculateStateCopyWith(CarbonCalculateState value,
          $Res Function(CarbonCalculateState) _then) =
      _$CarbonCalculateStateCopyWithImpl;
  @useResult
  $Res call(
      {int currentStep,
      Map<int, dynamic> answers,
      bool isLoading,
      String? error,
      List<Map<String, dynamic>> questions,
      bool goToHomeRequested});
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
    Object? currentStep = null,
    Object? answers = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? questions = null,
    Object? goToHomeRequested = null,
  }) {
    return _then(_self.copyWith(
      currentStep: null == currentStep
          ? _self.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _self.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<int, dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      goToHomeRequested: null == goToHomeRequested
          ? _self.goToHomeRequested
          : goToHomeRequested // ignore: cast_nullable_to_non_nullable
              as bool,
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
            int currentStep,
            Map<int, dynamic> answers,
            bool isLoading,
            String? error,
            List<Map<String, dynamic>> questions,
            bool goToHomeRequested)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState() when $default != null:
        return $default(_that.currentStep, _that.answers, _that.isLoading,
            _that.error, _that.questions, _that.goToHomeRequested);
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
            int currentStep,
            Map<int, dynamic> answers,
            bool isLoading,
            String? error,
            List<Map<String, dynamic>> questions,
            bool goToHomeRequested)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState():
        return $default(_that.currentStep, _that.answers, _that.isLoading,
            _that.error, _that.questions, _that.goToHomeRequested);
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
            int currentStep,
            Map<int, dynamic> answers,
            bool isLoading,
            String? error,
            List<Map<String, dynamic>> questions,
            bool goToHomeRequested)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CarbonCalculateState() when $default != null:
        return $default(_that.currentStep, _that.answers, _that.isLoading,
            _that.error, _that.questions, _that.goToHomeRequested);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CarbonCalculateState extends CarbonCalculateState {
  const _CarbonCalculateState(
      {this.currentStep = 0,
      final Map<int, dynamic> answers = const {},
      this.isLoading = false,
      this.error,
      final List<Map<String, dynamic>> questions = const [],
      this.goToHomeRequested = false})
      : _answers = answers,
        _questions = questions,
        super._();

  @override
  @JsonKey()
  final int currentStep;
  final Map<int, dynamic> _answers;
  @override
  @JsonKey()
  Map<int, dynamic> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  final List<Map<String, dynamic>> _questions;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final bool goToHomeRequested;

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
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.goToHomeRequested, goToHomeRequested) ||
                other.goToHomeRequested == goToHomeRequested));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentStep,
      const DeepCollectionEquality().hash(_answers),
      isLoading,
      error,
      const DeepCollectionEquality().hash(_questions),
      goToHomeRequested);

  @override
  String toString() {
    return 'CarbonCalculateState(currentStep: $currentStep, answers: $answers, isLoading: $isLoading, error: $error, questions: $questions, goToHomeRequested: $goToHomeRequested)';
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
      {int currentStep,
      Map<int, dynamic> answers,
      bool isLoading,
      String? error,
      List<Map<String, dynamic>> questions,
      bool goToHomeRequested});
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
    Object? currentStep = null,
    Object? answers = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? questions = null,
    Object? goToHomeRequested = null,
  }) {
    return _then(_CarbonCalculateState(
      currentStep: null == currentStep
          ? _self.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<int, dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      goToHomeRequested: null == goToHomeRequested
          ? _self.goToHomeRequested
          : goToHomeRequested // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
