// ignore_for_file: inference_failure_on_instance_creation

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cards/src/models/card/card.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_bloc.freezed.dart';
part 'memory_event.dart';
part 'memory_state.dart';

class MemoryBloc extends Bloc<MemoryEvent, MemoryState> {
  MemoryBloc({
    required this.size,
    this.onSuccess,
  }) : super(
          MemoryState.initial(
            cards: Card.generateListWithPairs(size),
            time$: Stream.periodic(const Duration(seconds: 1), (s) => s),
          ),
        ) {
    on<OpenCardMemoryEvent>(_onOpenCardEvent);
    on<GameSuccessMemoryEvent>(_onGameSuccessEvent);
    on<TimeOutEvent>(_onTimeOutEvent);
    on<RestartGameMemoryEvent>(_onRestartGameEvent);
  }

  final int size;
  final int startedAt = DateTime.now().millisecondsSinceEpoch;
  final void Function(int playTimeMs)? onSuccess;

  int? card1Index;
  int? card2Index;

  Future<void> _onOpenCardEvent(
    OpenCardMemoryEvent event,
    Emitter<MemoryState> emit,
  ) async {
    if (card2Index != null) return;

    final cards = state.cards
        .mapIndexed(
          (index, card) =>
              event.index == index ? card.copyWith(open: true) : card,
        )
        .toList();

    emit(state.copyWith(cards: cards));

    if (card1Index == null) {
      card1Index = event.index;
    } else {
      card2Index = event.index;

      final card1 = cards.elementAt(card1Index!);
      final card2 = cards.elementAt(card2Index!);

      if (card1.image == card2.image) {
        final cards = state.cards
            .mapIndexed(
              (index, card) => [card1, card2].contains(card)
                  ? card.copyWith(paired: true)
                  : card,
            )
            .toList();

        emit(
          state.copyWith(
            cards: cards,
            moves: state.moves + 1,
          ),
        );

        if (cards.where((card) => card.open).length == size) {
          add(const GameSuccessMemoryEvent());
        }
      } else {
        await Future.delayed(const Duration(milliseconds: 500));
        if (isClosed) return;
        final cards = state.cards
            .mapIndexed(
              (index, card) => [card1, card2].contains(card)
                  ? card.copyWith(open: false)
                  : card,
            )
            .toList();

        emit(
          state.copyWith(
            cards: cards,
            mistakes: state.mistakes + 1,
            moves: state.moves + 1,
          ),
        );
      }

      card1Index = null;
      card2Index = null;
    }
  }

  void _onGameSuccessEvent(
    GameSuccessMemoryEvent event,
    Emitter<MemoryState> emit,
  ) {
    emit(state.copyWith(success: true));

    final playTimeMs = DateTime.now().millisecondsSinceEpoch - startedAt;

    onSuccess?.call(playTimeMs);
  }

  void _onRestartGameEvent(
    RestartGameMemoryEvent event,
    Emitter<MemoryState> emit,
  ) {
    emit(
      MemoryState.initial(
        cards: Card.generateListWithPairs(size),
        time$: Stream.periodic(
          const Duration(seconds: 1),
          (s) => s,
        ),
      ),
    );
  }

  void _onTimeOutEvent(
    TimeOutEvent event,
    Emitter<MemoryState> emit,
  ) {
    emit(state.copyWith(failed: true));
  }
}
