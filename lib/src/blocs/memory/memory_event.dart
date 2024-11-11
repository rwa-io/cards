part of 'memory_bloc.dart';

@immutable
abstract class MemoryEvent {
  const MemoryEvent();
}

class OpenCardMemoryEvent extends MemoryEvent {
  const OpenCardMemoryEvent(this.index);

  final int index;
}

class GameSuccessMemoryEvent extends MemoryEvent {
  const GameSuccessMemoryEvent();
}

class TimeOutEvent extends MemoryEvent {
  const TimeOutEvent();
}

class RestartGameMemoryEvent extends MemoryEvent {
  const RestartGameMemoryEvent();
}
