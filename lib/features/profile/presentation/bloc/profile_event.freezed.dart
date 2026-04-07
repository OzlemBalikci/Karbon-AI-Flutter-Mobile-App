// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent()';
  }
}

/// @nodoc
class $ProfileEventCopyWith<$Res> {
  $ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}

/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(FetchDonationHistory value)? fetchDonationHistory,
    TResult Function(DonateTrees value)? donateTrees,
    TResult Function(DonateReset value)? donateReset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchProfile() when fetchProfile != null:
        return fetchProfile(_that);
      case TabChanged() when tabChanged != null:
        return tabChanged(_that);
      case FetchDonationHistory() when fetchDonationHistory != null:
        return fetchDonationHistory(_that);
      case DonateTrees() when donateTrees != null:
        return donateTrees(_that);
      case DonateReset() when donateReset != null:
        return donateReset(_that);
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
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(FetchDonationHistory value) fetchDonationHistory,
    required TResult Function(DonateTrees value) donateTrees,
    required TResult Function(DonateReset value) donateReset,
  }) {
    final _that = this;
    switch (_that) {
      case FetchProfile():
        return fetchProfile(_that);
      case TabChanged():
        return tabChanged(_that);
      case FetchDonationHistory():
        return fetchDonationHistory(_that);
      case DonateTrees():
        return donateTrees(_that);
      case DonateReset():
        return donateReset(_that);
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
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(FetchDonationHistory value)? fetchDonationHistory,
    TResult? Function(DonateTrees value)? donateTrees,
    TResult? Function(DonateReset value)? donateReset,
  }) {
    final _that = this;
    switch (_that) {
      case FetchProfile() when fetchProfile != null:
        return fetchProfile(_that);
      case TabChanged() when tabChanged != null:
        return tabChanged(_that);
      case FetchDonationHistory() when fetchDonationHistory != null:
        return fetchDonationHistory(_that);
      case DonateTrees() when donateTrees != null:
        return donateTrees(_that);
      case DonateReset() when donateReset != null:
        return donateReset(_that);
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
    TResult Function()? fetchProfile,
    TResult Function(int index)? tabChanged,
    TResult Function()? fetchDonationHistory,
    TResult Function(int treeCount)? donateTrees,
    TResult Function()? donateReset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchProfile() when fetchProfile != null:
        return fetchProfile();
      case TabChanged() when tabChanged != null:
        return tabChanged(_that.index);
      case FetchDonationHistory() when fetchDonationHistory != null:
        return fetchDonationHistory();
      case DonateTrees() when donateTrees != null:
        return donateTrees(_that.treeCount);
      case DonateReset() when donateReset != null:
        return donateReset();
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
    required TResult Function() fetchProfile,
    required TResult Function(int index) tabChanged,
    required TResult Function() fetchDonationHistory,
    required TResult Function(int treeCount) donateTrees,
    required TResult Function() donateReset,
  }) {
    final _that = this;
    switch (_that) {
      case FetchProfile():
        return fetchProfile();
      case TabChanged():
        return tabChanged(_that.index);
      case FetchDonationHistory():
        return fetchDonationHistory();
      case DonateTrees():
        return donateTrees(_that.treeCount);
      case DonateReset():
        return donateReset();
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
    TResult? Function()? fetchProfile,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? fetchDonationHistory,
    TResult? Function(int treeCount)? donateTrees,
    TResult? Function()? donateReset,
  }) {
    final _that = this;
    switch (_that) {
      case FetchProfile() when fetchProfile != null:
        return fetchProfile();
      case TabChanged() when tabChanged != null:
        return tabChanged(_that.index);
      case FetchDonationHistory() when fetchDonationHistory != null:
        return fetchDonationHistory();
      case DonateTrees() when donateTrees != null:
        return donateTrees(_that.treeCount);
      case DonateReset() when donateReset != null:
        return donateReset();
      case _:
        return null;
    }
  }
}

/// @nodoc

class FetchProfile implements ProfileEvent {
  const FetchProfile();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.fetchProfile()';
  }
}

/// @nodoc

class TabChanged implements ProfileEvent {
  const TabChanged(this.index);

  final int index;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TabChangedCopyWith<TabChanged> get copyWith =>
      _$TabChangedCopyWithImpl<TabChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TabChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'ProfileEvent.tabChanged(index: $index)';
  }
}

/// @nodoc
abstract mixin class $TabChangedCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $TabChangedCopyWith(
          TabChanged value, $Res Function(TabChanged) _then) =
      _$TabChangedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$TabChangedCopyWithImpl<$Res> implements $TabChangedCopyWith<$Res> {
  _$TabChangedCopyWithImpl(this._self, this._then);

  final TabChanged _self;
  final $Res Function(TabChanged) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(TabChanged(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class FetchDonationHistory implements ProfileEvent {
  const FetchDonationHistory();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchDonationHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.fetchDonationHistory()';
  }
}

/// @nodoc

class DonateTrees implements ProfileEvent {
  const DonateTrees(this.treeCount);

  final int treeCount;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DonateTreesCopyWith<DonateTrees> get copyWith =>
      _$DonateTreesCopyWithImpl<DonateTrees>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DonateTrees &&
            (identical(other.treeCount, treeCount) ||
                other.treeCount == treeCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeCount);

  @override
  String toString() {
    return 'ProfileEvent.donateTrees(treeCount: $treeCount)';
  }
}

/// @nodoc
abstract mixin class $DonateTreesCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $DonateTreesCopyWith(
          DonateTrees value, $Res Function(DonateTrees) _then) =
      _$DonateTreesCopyWithImpl;
  @useResult
  $Res call({int treeCount});
}

/// @nodoc
class _$DonateTreesCopyWithImpl<$Res> implements $DonateTreesCopyWith<$Res> {
  _$DonateTreesCopyWithImpl(this._self, this._then);

  final DonateTrees _self;
  final $Res Function(DonateTrees) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? treeCount = null,
  }) {
    return _then(DonateTrees(
      null == treeCount
          ? _self.treeCount
          : treeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DonateReset implements ProfileEvent {
  const DonateReset();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DonateReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.donateReset()';
  }
}

// dart format on
