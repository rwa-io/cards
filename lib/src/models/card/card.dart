import 'package:cards/gen/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';

@freezed
class Card with _$Card {
  const factory Card({
    required AssetGenImage image,
    @Default(false) bool open,
    @Default(false) bool paired,
  }) = _CardData;

  const Card._();

  static List<AssetGenImage> get availableImages => [
        Assets.cards.bag,
        Assets.cards.car,
        Assets.cards.chart,
        Assets.cards.co2,
        Assets.cards.education,
        Assets.cards.folder,
        Assets.cards.house,
        Assets.cards.invoice,
        Assets.cards.logo,
        Assets.cards.monaLisa,
        Assets.cards.note,
        Assets.cards.safe,
        Assets.cards.sneaker,
        Assets.cards.suitcase,
        Assets.cards.wine,
      ]..shuffle();

  static List<Card> generateList(int length) {
    return availableImages
        .take(length)
        .map((image) => Card(image: image, open: true))
        .toList();
  }

  static List<Card> generateListWithPairs(int length) {
    return availableImages
        .take(length ~/ 2)
        .expand(
          (image) => [
            Card(image: image),
            Card(image: image),
          ],
        )
        .toList()
      ..shuffle();
  }
}
