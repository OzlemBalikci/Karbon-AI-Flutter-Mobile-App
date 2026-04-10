// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileState {
  AsyncStatus get profileStatus;
  UserProfileEntity? get profile;
  AsyncStatus get donationHistoryStatus;
  DonationHistoryEntity? get donationHistory;
  AsyncStatus get donateStatus;
  DonateTreesResultEntity? get donateResult;
  int get selectedTab;
  String? get profileError;
  String? get donationHistoryError;
  String? get donateError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      _$ProfileStateCopyWithImpl<ProfileState>(
          this as ProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileState &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.donationHistoryStatus, donationHistoryStatus) ||
                other.donationHistoryStatus == donationHistoryStatus) &&
            (identical(other.donationHistory, donationHistory) ||
                other.donationHistory == donationHistory) &&
            (identical(other.donateStatus, donateStatus) ||
                other.donateStatus == donateStatus) &&
            (identical(other.donateResult, donateResult) ||
                other.donateResult == donateResult) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.profileError, profileError) ||
                other.profileError == profileError) &&
            (identical(other.donationHistoryError, donationHistoryError) ||
                other.donationHistoryError == donationHistoryError) &&
            (identical(other.donateError, donateError) ||
                other.donateError == donateError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileStatus,
      profile,
      donationHistoryStatus,
      donationHistory,
      donateStatus,
      donateResult,
      selectedTab,
      profileError,
      donationHistoryError,
      donateError);

  @override
  String toString() {
    return 'ProfileState(profileStatus: $profileStatus, profile: $profile, donationHistoryStatus: $donationHistoryStatus, donationHistory: $donationHistory, donateStatus: $donateStatus, donateResult: $donateResult, selectedTab: $selectedTab, profileError: $profileError, donationHistoryError: $donationHistoryError, donateError: $donateError)';
  }
}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) _then) =
      _$ProfileStateCopyWithImpl;
  @useResult
  $Res call(
      {AsyncStatus profileStatus,
      UserProfileEntity? profile,
      AsyncStatus donationHistoryStatus,
      DonationHistoryEntity? donationHistory,
      AsyncStatus donateStatus,
      DonateTreesResultEntity? donateResult,
      int selectedTab,
      String? profileError,
      String? donationHistoryError,
      String? donateError});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileStatus = null,
    Object? profile = freezed,
    Object? donationHistoryStatus = null,
    Object? donationHistory = freezed,
    Object? donateStatus = null,
    Object? donateResult = freezed,
    Object? selectedTab = null,
    Object? profileError = freezed,
    Object? donationHistoryError = freezed,
    Object? donateError = freezed,
  }) {
    return _then(_self.copyWith(
      profileStatus: null == profileStatus
          ? _self.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as AsyncStatus,
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileEntity?,
      donationHistoryStatus: null == donationHistoryStatus
          ? _self.donationHistoryStatus
          : donationHistoryStatus // ignore: cast_nullable_to_non_nullable
              as AsyncStatus,
      donationHistory: freezed == donationHistory
          ? _self.donationHistory
          : donationHistory // ignore: cast_nullable_to_non_nullable
              as DonationHistoryEntity?,
      donateStatus: null == donateStatus
          ? _self.donateStatus
          : donateStatus // ignore: cast_nullable_to_non_nullable
              as AsyncStatus,
      donateResult: freezed == donateResult
          ? _self.donateResult
          : donateResult // ignore: cast_nullable_to_non_nullable
              as DonateTreesResultEntity?,
      selectedTab: null == selectedTab
          ? _self.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      profileError: freezed == profileError
          ? _self.profileError
          : profileError // ignore: cast_nullable_to_non_nullable
              as String?,
      donationHistoryError: freezed == donationHistoryError
          ? _self.donationHistoryError
          : donationHistoryError // ignore: cast_nullable_to_non_nullable
              as String?,
      donateError: freezed == donateError
          ? _self.donateError
          : donateError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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
    TResult Function(_ProfileState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
    TResult Function(_ProfileState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
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
    TResult? Function(_ProfileState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
            AsyncStatus profileStatus,
            UserProfileEntity? profile,
            AsyncStatus donationHistoryStatus,
            DonationHistoryEntity? donationHistory,
            AsyncStatus donateStatus,
            DonateTreesResultEntity? donateResult,
            int selectedTab,
            String? profileError,
            String? donationHistoryError,
            String? donateError)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.profileStatus,
            _that.profile,
            _that.donationHistoryStatus,
            _that.donationHistory,
            _that.donateStatus,
            _that.donateResult,
            _that.selectedTab,
            _that.profileError,
            _that.donationHistoryError,
            _that.donateError);
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
            AsyncStatus profileStatus,
            UserProfileEntity? profile,
            AsyncStatus donationHistoryStatus,
            DonationHistoryEntity? donationHistory,
            AsyncStatus donateStatus,
            DonateTreesResultEntity? donateResult,
            int selectedTab,
            String? profileError,
            String? donationHistoryError,
            String? donateError)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
        return $default(
            _that.profileStatus,
            _that.profile,
            _that.donationHistoryStatus,
            _that.donationHistory,
            _that.donateStatus,
            _that.donateResult,
            _that.selectedTab,
            _that.profileError,
            _that.donationHistoryError,
            _that.donateError);
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
            AsyncStatus profileStatus,
            UserProfileEntity? profile,
            AsyncStatus donationHistoryStatus,
            DonationHistoryEntity? donationHistory,
            AsyncStatus donateStatus,
            DonateTreesResultEntity? donateResult,
            int selectedTab,
            String? profileError,
            String? donationHistoryError,
            String? donateError)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.profileStatus,
            _that.profile,
            _that.donationHistoryStatus,
            _that.donationHistory,
            _that.donateStatus,
            _that.donateResult,
            _that.selectedTab,
            _that.profileError,
            _that.donationHistoryError,
            _that.donateError);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileState extends ProfileState {
  const _ProfileState(
      {this.profileStatus = AsyncStatus.initial,
      this.profile,
      this.donationHistoryStatus = AsyncStatus.initial,
      this.donationHistory,
      this.donateStatus = AsyncStatus.initial,
      this.donateResult,
      this.selectedTab = 0,
      this.profileError,
      this.donationHistoryError,
      this.donateError})
      : super._();

  @override
  @JsonKey()
  final AsyncStatus profileStatus;
  @override
  final UserProfileEntity? profile;
  @override
  @JsonKey()
  final AsyncStatus donationHistoryStatus;
  @override
  final DonationHistoryEntity? donationHistory;
  @override
  @JsonKey()
  final AsyncStatus donateStatus;
  @override
  final DonateTreesResultEntity? donateResult;
  @override
  @JsonKey()
  final int selectedTab;
  @override
  final String? profileError;
  @override
  final String? donationHistoryError;
  @override
  final String? donateError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.donationHistoryStatus, donationHistoryStatus) ||
                other.donationHistoryStatus == donationHistoryStatus) &&
            (identical(other.donationHistory, donationHistory) ||
                other.donationHistory == donationHistory) &&
            (identical(other.donateStatus, donateStatus) ||
                other.donateStatus == donateStatus) &&
            (identical(other.donateResult, donateResult) ||
                other.donateResult == donateResult) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.profileError, profileError) ||
                other.profileError == profileError) &&
            (identical(other.donationHistoryError, donationHistoryError) ||
                other.donationHistoryError == donationHistoryError) &&
            (identical(other.donateError, donateError) ||
                other.donateError == donateError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileStatus,
      profile,
      donationHistoryStatus,
      donationHistory,
      donateStatus,
      donateResult,
      selectedTab,
      profileError,
      donationHistoryError,
      donateError);

  @override
  String toString() {
    return 'ProfileState(profileStatus: $profileStatus, profile: $profile, donationHistoryStatus: $donationHistoryStatus, donationHistory: $donationHistory, donateStatus: $donateStatus, donateResult: $donateResult, selectedTab: $selectedTab, profileError: $profileError, donationHistoryError: $donationHistoryError, donateError: $donateError)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) _then) =
      __$ProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AsyncStatus profileStatus,
      UserProfileEntity? profile,
      AsyncStatus donationHistoryStatus,
      DonationHistoryEntity? donationHistory,
      AsyncStatus donateStatus,
      DonateTreesResultEntity? donateResult,
      int selectedTab,
      String? profileError,
      String? donationHistoryError,
      String? donateError});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profileStatus = null,
    Object? profile = freezed,
    Object? donationHistoryStatus = null,
    Object? donationHistory = freezed,
    Object? donateStatus = null,
    Object? donateResult = freezed,
    Object? selectedTab = null,
    Object? profileError = freezed,
    Object? donationHistoryError = freezed,
    Object? donateError = freezed,
  }) {
    return _then(_ProfileState(
      profileStatus: null == profileStatus
          ? _self.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as AsyncStatus,
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileEntity?,
      donationHistoryStatus: null == donationHistoryStatus
          ? _self.donationHistoryStatus
          : donationHistoryStatus // ignore: cast_nullable_to_non_nullable
              as AsyncStatus,
      donationHistory: freezed == donationHistory
          ? _self.donationHistory
          : donationHistory // ignore: cast_nullable_to_non_nullable
              as DonationHistoryEntity?,
      donateStatus: null == donateStatus
          ? _self.donateStatus
          : donateStatus // ignore: cast_nullable_to_non_nullable
              as AsyncStatus,
      donateResult: freezed == donateResult
          ? _self.donateResult
          : donateResult // ignore: cast_nullable_to_non_nullable
              as DonateTreesResultEntity?,
      selectedTab: null == selectedTab
          ? _self.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      profileError: freezed == profileError
          ? _self.profileError
          : profileError // ignore: cast_nullable_to_non_nullable
              as String?,
      donationHistoryError: freezed == donationHistoryError
          ? _self.donationHistoryError
          : donationHistoryError // ignore: cast_nullable_to_non_nullable
              as String?,
      donateError: freezed == donateError
          ? _self.donateError
          : donateError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
