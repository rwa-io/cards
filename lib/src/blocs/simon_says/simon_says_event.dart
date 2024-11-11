part of 'simon_says_bloc.dart';

@immutable
abstract class SimonSaysEvent {
  const SimonSaysEvent();
}

class HighlightCardSimonSaysEvent extends SimonSaysEvent {
  const HighlightCardSimonSaysEvent(this.index);

  final int? index;
}

class SimonsTurnSimonSaysEvent extends SimonSaysEvent {
  const SimonsTurnSimonSaysEvent();
}

class UsersTurnSimonSaysEvent extends SimonSaysEvent {
  const UsersTurnSimonSaysEvent();
}

class UserSelectSimonSaysEvent extends SimonSaysEvent {
  const UserSelectSimonSaysEvent(this.index);

  final int index;
}

class GameOverSimonSaysEvent extends SimonSaysEvent {
  const GameOverSimonSaysEvent();
}

class GameSuccessSimonSaysEvent extends SimonSaysEvent {
  const GameSuccessSimonSaysEvent();
}

class RestartGameSimonSaysEvent extends SimonSaysEvent {
  const RestartGameSimonSaysEvent();
}
