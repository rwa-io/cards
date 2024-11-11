part of 'memory_bloc.dart';

@freezed
class MemoryState with _$MemoryState {
  const factory MemoryState.initial({
    required List<Card> cards,
    required Stream<int> time$,
    @Default(0) int moves,
    @Default(0) int mistakes,
    @Default(false) bool failed,
    @Default(false) bool success,
  }) = _Initial;

  const MemoryState._();
}
