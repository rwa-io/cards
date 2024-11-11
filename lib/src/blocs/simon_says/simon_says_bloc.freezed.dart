// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simon_says_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimonSaysState {
  List<Card> get cards => throw _privateConstructorUsedError;
  List<int>? get pattern => throw _privateConstructorUsedError;
  List<int>? get userPattern => throw _privateConstructorUsedError;
  int? get highlightedIndex => throw _privateConstructorUsedError;
  bool get userTurn => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Card> cards,
            List<int>? pattern,
            List<int>? userPattern,
            int? highlightedIndex,
            bool userTurn,
            int score,
            bool failed,
            bool success)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Card> cards,
            List<int>? pattern,
            List<int>? userPattern,
            int? highlightedIndex,
            bool userTurn,
            int score,
            bool failed,
            bool success)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Card> cards,
            List<int>? pattern,
            List<int>? userPattern,
            int? highlightedIndex,
            bool userTurn,
            int score,
            bool failed,
            bool success)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimonSaysStateCopyWith<SimonSaysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimonSaysStateCopyWith<$Res> {
  factory $SimonSaysStateCopyWith(
          SimonSaysState value, $Res Function(SimonSaysState) then) =
      _$SimonSaysStateCopyWithImpl<$Res, SimonSaysState>;
  @useResult
  $Res call(
      {List<Card> cards,
      List<int>? pattern,
      List<int>? userPattern,
      int? highlightedIndex,
      bool userTurn,
      int score,
      bool failed,
      bool success});
}

/// @nodoc
class _$SimonSaysStateCopyWithImpl<$Res, $Val extends SimonSaysState>
    implements $SimonSaysStateCopyWith<$Res> {
  _$SimonSaysStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? pattern = freezed,
    Object? userPattern = freezed,
    Object? highlightedIndex = freezed,
    Object? userTurn = null,
    Object? score = null,
    Object? failed = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      userPattern: freezed == userPattern
          ? _value.userPattern
          : userPattern // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      highlightedIndex: freezed == highlightedIndex
          ? _value.highlightedIndex
          : highlightedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      userTurn: null == userTurn
          ? _value.userTurn
          : userTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SimonSaysStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Card> cards,
      List<int>? pattern,
      List<int>? userPattern,
      int? highlightedIndex,
      bool userTurn,
      int score,
      bool failed,
      bool success});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SimonSaysStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? pattern = freezed,
    Object? userPattern = freezed,
    Object? highlightedIndex = freezed,
    Object? userTurn = null,
    Object? score = null,
    Object? failed = null,
    Object? success = null,
  }) {
    return _then(_$InitialImpl(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      pattern: freezed == pattern
          ? _value._pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      userPattern: freezed == userPattern
          ? _value._userPattern
          : userPattern // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      highlightedIndex: freezed == highlightedIndex
          ? _value.highlightedIndex
          : highlightedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      userTurn: null == userTurn
          ? _value.userTurn
          : userTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {required final List<Card> cards,
      final List<int>? pattern,
      final List<int>? userPattern,
      this.highlightedIndex,
      this.userTurn = false,
      this.score = 0,
      this.failed = false,
      this.success = false})
      : _cards = cards,
        _pattern = pattern,
        _userPattern = userPattern,
        super._();

  final List<Card> _cards;
  @override
  List<Card> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  final List<int>? _pattern;
  @override
  List<int>? get pattern {
    final value = _pattern;
    if (value == null) return null;
    if (_pattern is EqualUnmodifiableListView) return _pattern;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _userPattern;
  @override
  List<int>? get userPattern {
    final value = _userPattern;
    if (value == null) return null;
    if (_userPattern is EqualUnmodifiableListView) return _userPattern;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? highlightedIndex;
  @override
  @JsonKey()
  final bool userTurn;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final bool failed;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SimonSaysState.initial(cards: $cards, pattern: $pattern, userPattern: $userPattern, highlightedIndex: $highlightedIndex, userTurn: $userTurn, score: $score, failed: $failed, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            const DeepCollectionEquality().equals(other._pattern, _pattern) &&
            const DeepCollectionEquality()
                .equals(other._userPattern, _userPattern) &&
            (identical(other.highlightedIndex, highlightedIndex) ||
                other.highlightedIndex == highlightedIndex) &&
            (identical(other.userTurn, userTurn) ||
                other.userTurn == userTurn) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cards),
      const DeepCollectionEquality().hash(_pattern),
      const DeepCollectionEquality().hash(_userPattern),
      highlightedIndex,
      userTurn,
      score,
      failed,
      success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Card> cards,
            List<int>? pattern,
            List<int>? userPattern,
            int? highlightedIndex,
            bool userTurn,
            int score,
            bool failed,
            bool success)
        initial,
  }) {
    return initial(cards, pattern, userPattern, highlightedIndex, userTurn,
        score, failed, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Card> cards,
            List<int>? pattern,
            List<int>? userPattern,
            int? highlightedIndex,
            bool userTurn,
            int score,
            bool failed,
            bool success)?
        initial,
  }) {
    return initial?.call(cards, pattern, userPattern, highlightedIndex,
        userTurn, score, failed, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Card> cards,
            List<int>? pattern,
            List<int>? userPattern,
            int? highlightedIndex,
            bool userTurn,
            int score,
            bool failed,
            bool success)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cards, pattern, userPattern, highlightedIndex, userTurn,
          score, failed, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SimonSaysState {
  const factory _Initial(
      {required final List<Card> cards,
      final List<int>? pattern,
      final List<int>? userPattern,
      final int? highlightedIndex,
      final bool userTurn,
      final int score,
      final bool failed,
      final bool success}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  List<Card> get cards;
  @override
  List<int>? get pattern;
  @override
  List<int>? get userPattern;
  @override
  int? get highlightedIndex;
  @override
  bool get userTurn;
  @override
  int get score;
  @override
  bool get failed;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
