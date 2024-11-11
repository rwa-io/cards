// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Card {
  AssetGenImage get image => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  bool get paired => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call({AssetGenImage image, bool open, bool paired});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? open = null,
    Object? paired = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      paired: null == paired
          ? _value.paired
          : paired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardDataImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardDataImplCopyWith(
          _$CardDataImpl value, $Res Function(_$CardDataImpl) then) =
      __$$CardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AssetGenImage image, bool open, bool paired});
}

/// @nodoc
class __$$CardDataImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardDataImpl>
    implements _$$CardDataImplCopyWith<$Res> {
  __$$CardDataImplCopyWithImpl(
      _$CardDataImpl _value, $Res Function(_$CardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? open = null,
    Object? paired = null,
  }) {
    return _then(_$CardDataImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      paired: null == paired
          ? _value.paired
          : paired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CardDataImpl extends _CardData {
  const _$CardDataImpl(
      {required this.image, this.open = false, this.paired = false})
      : super._();

  @override
  final AssetGenImage image;
  @override
  @JsonKey()
  final bool open;
  @override
  @JsonKey()
  final bool paired;

  @override
  String toString() {
    return 'Card(image: $image, open: $open, paired: $paired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardDataImpl &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.paired, paired) || other.paired == paired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(image), open, paired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardDataImplCopyWith<_$CardDataImpl> get copyWith =>
      __$$CardDataImplCopyWithImpl<_$CardDataImpl>(this, _$identity);
}

abstract class _CardData extends Card {
  const factory _CardData(
      {required final AssetGenImage image,
      final bool open,
      final bool paired}) = _$CardDataImpl;
  const _CardData._() : super._();

  @override
  AssetGenImage get image;
  @override
  bool get open;
  @override
  bool get paired;
  @override
  @JsonKey(ignore: true)
  _$$CardDataImplCopyWith<_$CardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
