// ignore_for_file: inference_failure_on_instance_creation

import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cards/src/models/card/card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simon_says_bloc.freezed.dart';
part 'simon_says_event.dart';
part 'simon_says_state.dart';

class SimonSaysBloc extends Bloc<SimonSaysEvent, SimonSaysState> {
  SimonSaysBloc({
    required this.size,
    this.requiredScore,
    this.onSuccess,
  })  : random = Random(),
        super(SimonSaysState.initial(cards: Card.generateList(size))) {
    on<HighlightCardSimonSaysEvent>(_onHighlightCardEvent);
    on<SimonsTurnSimonSaysEvent>(_onSimonsTurnEvent);
    on<UsersTurnSimonSaysEvent>(_onUsersTurnEvent);
    on<UserSelectSimonSaysEvent>(_onUserSelectEvent);
    on<GameOverSimonSaysEvent>(_onGameOverEvent);
    on<GameSuccessSimonSaysEvent>(_onGameSuccessEvent);
    on<RestartGameSimonSaysEvent>(_onRestartGameEvent);

    Future.delayed(const Duration(seconds: 1), () {
      if (isClosed) return;
      add(const SimonsTurnSimonSaysEvent());
    });
  }

  final int size;
  final Random random;

  int? requiredScore;
  int startedAt = DateTime.now().millisecondsSinceEpoch;
  void Function(int playTimeMs)? onSuccess;

  bool _busy = false;
  Timer? _timer;

  void _onHighlightCardEvent(
    HighlightCardSimonSaysEvent event,
    Emitter<SimonSaysState> emit,
  ) {
    emit(state.copyWith(highlightedIndex: event.index));
  }

  Future<void> _onSimonsTurnEvent(
    SimonsTurnSimonSaysEvent event,
    Emitter<SimonSaysState> emit,
  ) async {
    final pattern = [...?state.pattern, random.nextInt(size)];
    emit(
      state.copyWith(
        userTurn: false,
        userPattern: null,
        pattern: pattern,
      ),
    );

    for (final index in pattern) {
      if (isClosed) return;
      add(HighlightCardSimonSaysEvent(index));
      await Future.delayed(const Duration(milliseconds: 500));
      add(const HighlightCardSimonSaysEvent(null));
      await Future.delayed(const Duration(milliseconds: 500));
    }

    if (isClosed) return;
    add(const HighlightCardSimonSaysEvent(null));
    add(const UsersTurnSimonSaysEvent());
  }

  void _onUsersTurnEvent(
    UsersTurnSimonSaysEvent event,
    Emitter<SimonSaysState> emit,
  ) {
    emit(state.copyWith(userTurn: true));
  }

  Future<void> _onUserSelectEvent(
    UserSelectSimonSaysEvent event,
    Emitter<SimonSaysState> emit,
  ) async {
    if (!state.userTurn || _busy) return;

    _busy = true;

    _timer?.cancel();

    add(HighlightCardSimonSaysEvent(event.index));
    _timer = Timer(const Duration(milliseconds: 200), () {
      add(const HighlightCardSimonSaysEvent(null));
    });

    final userPattern = [...?state.userPattern, event.index];

    for (var i = 0; i < userPattern.length; i++) {
      if (userPattern.elementAt(i) != state.pattern?.elementAt(i)) {
        add(const GameOverSimonSaysEvent());
        return;
      }
    }

    emit(state.copyWith(userPattern: userPattern));

    if (userPattern.length == state.pattern?.length) {
      final score = state.pattern?.length ?? 0;
      emit(state.copyWith(score: score));

      if (requiredScore != null && score >= requiredScore!) {
        add(const GameSuccessSimonSaysEvent());
        return;
      }

      await Future.delayed(const Duration(seconds: 1));

      if (isClosed) return;
      add(const SimonsTurnSimonSaysEvent());
    }

    _busy = false;
  }

  void _onGameOverEvent(
    GameOverSimonSaysEvent event,
    Emitter<SimonSaysState> emit,
  ) {
    emit(state.copyWith(userTurn: false, failed: true));
    _busy = false;
  }

  void _onGameSuccessEvent(
    GameSuccessSimonSaysEvent event,
    Emitter<SimonSaysState> emit,
  ) {
    emit(state.copyWith(userTurn: false, success: true));
    _busy = false;

    final playTimeMs = DateTime.now().millisecondsSinceEpoch - startedAt;

    onSuccess?.call(playTimeMs);

    onSuccess = null;
    requiredScore = null;
  }

  void _onRestartGameEvent(
    RestartGameSimonSaysEvent event,
    Emitter<SimonSaysState> emit,
  ) {
    emit(SimonSaysState.initial(cards: Card.generateList(size)));
    startedAt = DateTime.now().millisecondsSinceEpoch;

    Future.delayed(const Duration(seconds: 1), () {
      if (isClosed) return;
      add(const SimonsTurnSimonSaysEvent());
    });
  }
}
