// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usefulinfo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsefulinfoEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UsefulinfoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UsefulinfoEvent()';
  }
}

/// @nodoc
class $UsefulinfoEventCopyWith<$Res> {
  $UsefulinfoEventCopyWith(
      UsefulinfoEvent _, $Res Function(UsefulinfoEvent) __);
}

/// Adds pattern-matching-related methods to [UsefulinfoEvent].
extension UsefulinfoEventPatterns on UsefulinfoEvent {
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
    TResult Function(FetchInfos value)? fetchInfos,
    TResult Function(InfoSelected value)? infoSelected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchInfos() when fetchInfos != null:
        return fetchInfos(_that);
      case InfoSelected() when infoSelected != null:
        return infoSelected(_that);
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
    required TResult Function(FetchInfos value) fetchInfos,
    required TResult Function(InfoSelected value) infoSelected,
  }) {
    final _that = this;
    switch (_that) {
      case FetchInfos():
        return fetchInfos(_that);
      case InfoSelected():
        return infoSelected(_that);
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
    TResult? Function(FetchInfos value)? fetchInfos,
    TResult? Function(InfoSelected value)? infoSelected,
  }) {
    final _that = this;
    switch (_that) {
      case FetchInfos() when fetchInfos != null:
        return fetchInfos(_that);
      case InfoSelected() when infoSelected != null:
        return infoSelected(_that);
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
    TResult Function()? fetchInfos,
    TResult Function(String id)? infoSelected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchInfos() when fetchInfos != null:
        return fetchInfos();
      case InfoSelected() when infoSelected != null:
        return infoSelected(_that.id);
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
    required TResult Function() fetchInfos,
    required TResult Function(String id) infoSelected,
  }) {
    final _that = this;
    switch (_that) {
      case FetchInfos():
        return fetchInfos();
      case InfoSelected():
        return infoSelected(_that.id);
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
    TResult? Function()? fetchInfos,
    TResult? Function(String id)? infoSelected,
  }) {
    final _that = this;
    switch (_that) {
      case FetchInfos() when fetchInfos != null:
        return fetchInfos();
      case InfoSelected() when infoSelected != null:
        return infoSelected(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc

class FetchInfos implements UsefulinfoEvent {
  const FetchInfos();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchInfos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UsefulinfoEvent.fetchInfos()';
  }
}

/// @nodoc

class InfoSelected implements UsefulinfoEvent {
  const InfoSelected(this.id);

  final String id;

  /// Create a copy of UsefulinfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoSelectedCopyWith<InfoSelected> get copyWith =>
      _$InfoSelectedCopyWithImpl<InfoSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoSelected &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'UsefulinfoEvent.infoSelected(id: $id)';
  }
}

/// @nodoc
abstract mixin class $InfoSelectedCopyWith<$Res>
    implements $UsefulinfoEventCopyWith<$Res> {
  factory $InfoSelectedCopyWith(
          InfoSelected value, $Res Function(InfoSelected) _then) =
      _$InfoSelectedCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$InfoSelectedCopyWithImpl<$Res> implements $InfoSelectedCopyWith<$Res> {
  _$InfoSelectedCopyWithImpl(this._self, this._then);

  final InfoSelected _self;
  final $Res Function(InfoSelected) _then;

  /// Create a copy of UsefulinfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(InfoSelected(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
