// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemoryState {
  List<Card> get cards => throw _privateConstructorUsedError;
  Stream<int> get time$ => throw _privateConstructorUsedError;
  int get moves => throw _privateConstructorUsedError;
  int get mistakes => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Card> cards, Stream<int> time$, int moves,
            int mistakes, bool failed, bool success)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Card> cards, Stream<int> time$, int moves,
            int mistakes, bool failed, bool success)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Card> cards, Stream<int> time$, int moves,
            int mistakes, bool failed, bool success)?
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
  $MemoryStateCopyWith<MemoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryStateCopyWith<$Res> {
  factory $MemoryStateCopyWith(
          MemoryState value, $Res Function(MemoryState) then) =
      _$MemoryStateCopyWithImpl<$Res, MemoryState>;
  @useResult
  $Res call(
      {List<Card> cards,
      Stream<int> time$,
      int moves,
      int mistakes,
      bool failed,
      bool success});
}

/// @nodoc
class _$MemoryStateCopyWithImpl<$Res, $Val extends MemoryState>
    implements $MemoryStateCopyWith<$Res> {
  _$MemoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? time$ = null,
    Object? moves = null,
    Object? mistakes = null,
    Object? failed = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      time$: null == time$
          ? _value.time$
          : time$ // ignore: cast_nullable_to_non_nullable
              as Stream<int>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as int,
      mistakes: null == mistakes
          ? _value.mistakes
          : mistakes // ignore: cast_nullable_to_non_nullable
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
    implements $MemoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Card> cards,
      Stream<int> time$,
      int moves,
      int mistakes,
      bool failed,
      bool success});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MemoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? time$ = null,
    Object? moves = null,
    Object? mistakes = null,
    Object? failed = null,
    Object? success = null,
  }) {
    return _then(_$InitialImpl(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      time$: null == time$
          ? _value.time$
          : time$ // ignore: cast_nullable_to_non_nullable
              as Stream<int>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as int,
      mistakes: null == mistakes
          ? _value.mistakes
          : mistakes // ignore: cast_nullable_to_non_nullable
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
      required this.time$,
      this.moves = 0,
      this.mistakes = 0,
      this.failed = false,
      this.success = false})
      : _cards = cards,
        super._();

  final List<Card> _cards;
  @override
  List<Card> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  final Stream<int> time$;
  @override
  @JsonKey()
  final int moves;
  @override
  @JsonKey()
  final int mistakes;
  @override
  @JsonKey()
  final bool failed;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'MemoryState.initial(cards: $cards, time\$: ${time$}, moves: $moves, mistakes: $mistakes, failed: $failed, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.time$, time$) || other.time$ == time$) &&
            (identical(other.moves, moves) || other.moves == moves) &&
            (identical(other.mistakes, mistakes) ||
                other.mistakes == mistakes) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cards),
      time$,
      moves,
      mistakes,
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
    required TResult Function(List<Card> cards, Stream<int> time$, int moves,
            int mistakes, bool failed, bool success)
        initial,
  }) {
    return initial(cards, time$, moves, mistakes, failed, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Card> cards, Stream<int> time$, int moves,
            int mistakes, bool failed, bool success)?
        initial,
  }) {
    return initial?.call(cards, time$, moves, mistakes, failed, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Card> cards, Stream<int> time$, int moves,
            int mistakes, bool failed, bool success)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cards, time$, moves, mistakes, failed, success);
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

abstract class _Initial extends MemoryState {
  const factory _Initial(
      {required final List<Card> cards,
      required final Stream<int> time$,
      final int moves,
      final int mistakes,
      final bool failed,
      final bool success}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  List<Card> get cards;
  @override
  Stream<int> get time$;
  @override
  int get moves;
  @override
  int get mistakes;
  @override
  bool get failed;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
