part of 'simon_says_bloc.dart';

@freezed
class SimonSaysState with _$SimonSaysState {
  const factory SimonSaysState.initial({
    required List<Card> cards,
    List<int>? pattern,
    List<int>? userPattern,
    int? highlightedIndex,
    @Default(false) bool userTurn,
    @Default(0) int score,
    @Default(false) bool failed,
    @Default(false) bool success,
  }) = _Initial;

  const SimonSaysState._();

  bool isHighlighted(Card card) {
    return cards.indexOf(card) == highlightedIndex;
  }
}
