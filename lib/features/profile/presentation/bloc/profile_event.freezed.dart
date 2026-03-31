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
    TResult Function(ProfileLoadRequested value)? loadRequested,
    TResult Function(ProfileTabChanged value)? profileTabChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ProfileLoadRequested() when loadRequested != null:
        return loadRequested(_that);
      case ProfileTabChanged() when profileTabChanged != null:
        return profileTabChanged(_that);
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
    required TResult Function(ProfileLoadRequested value) loadRequested,
    required TResult Function(ProfileTabChanged value) profileTabChanged,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileLoadRequested():
        return loadRequested(_that);
      case ProfileTabChanged():
        return profileTabChanged(_that);
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
    TResult? Function(ProfileLoadRequested value)? loadRequested,
    TResult? Function(ProfileTabChanged value)? profileTabChanged,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileLoadRequested() when loadRequested != null:
        return loadRequested(_that);
      case ProfileTabChanged() when profileTabChanged != null:
        return profileTabChanged(_that);
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
    TResult Function(int index)? profileTabChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ProfileLoadRequested() when loadRequested != null:
        return loadRequested();
      case ProfileTabChanged() when profileTabChanged != null:
        return profileTabChanged(_that.index);
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
    required TResult Function(int index) profileTabChanged,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileLoadRequested():
        return loadRequested();
      case ProfileTabChanged():
        return profileTabChanged(_that.index);
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
    TResult? Function(int index)? profileTabChanged,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileLoadRequested() when loadRequested != null:
        return loadRequested();
      case ProfileTabChanged() when profileTabChanged != null:
        return profileTabChanged(_that.index);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ProfileLoadRequested implements ProfileEvent {
  const ProfileLoadRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileLoadRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.loadRequested()';
  }
}

/// @nodoc

class ProfileTabChanged implements ProfileEvent {
  const ProfileTabChanged(this.index);

  final int index;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileTabChangedCopyWith<ProfileTabChanged> get copyWith =>
      _$ProfileTabChangedCopyWithImpl<ProfileTabChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileTabChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'ProfileEvent.profileTabChanged(index: $index)';
  }
}

/// @nodoc
abstract mixin class $ProfileTabChangedCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $ProfileTabChangedCopyWith(
          ProfileTabChanged value, $Res Function(ProfileTabChanged) _then) =
      _$ProfileTabChangedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$ProfileTabChangedCopyWithImpl<$Res>
    implements $ProfileTabChangedCopyWith<$Res> {
  _$ProfileTabChangedCopyWithImpl(this._self, this._then);

  final ProfileTabChanged _self;
  final $Res Function(ProfileTabChanged) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(ProfileTabChanged(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
