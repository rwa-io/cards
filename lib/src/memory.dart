import 'dart:math';

import 'package:cards/src/blocs/memory/memory_bloc.dart';
import 'package:cards/src/components/card_widget.dart';
import 'package:cards/src/components/wrapper.dart';
import 'package:cards/src/types/memory_size.enum.dart';
import 'package:cards/src/types/overlay_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Memory extends StatelessWidget {
  const Memory({
    required this.successOverlayBuilder,
    required this.failOverlayBuilder,
    required this.size,
    required this.secondsAvailable,
    this.onSuccess,
    super.key,
  });

  final OverlayBuilder successOverlayBuilder;
  final OverlayBuilder failOverlayBuilder;
  final MemorySize size;
  final void Function(int playTimeMs)? onSuccess;
  final int secondsAvailable;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MemoryBloc(
        size: size.size,
        onSuccess: onSuccess,
      ),
      child: Stack(
        children: [
          _buildGame(),
          BlocBuilder<MemoryBloc, MemoryState>(
            buildWhen: (previous, current) => previous.failed != current.failed,
            builder: (context, state) {
              final bloc = context.read<MemoryBloc>();

              if (state.failed) {
                return failOverlayBuilder(
                  context,
                  () {
                    bloc.add(const RestartGameMemoryEvent());
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          BlocBuilder<MemoryBloc, MemoryState>(
            buildWhen: (previous, current) =>
                previous.success != current.success,
            builder: (context, state) {
              final bloc = context.read<MemoryBloc>();

              if (state.success) {
                return successOverlayBuilder(
                  context,
                  () {
                    bloc.add(const RestartGameMemoryEvent());
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildGame() {
    return Wrapper(
      child: BlocBuilder<MemoryBloc, MemoryState>(
        builder: (context, state) {
          final bloc = context.read<MemoryBloc>();

          return Column(
            children: [
              _buildGrid(
                builder: (index) {
                  final card = state.cards.elementAt(index);

                  return GestureDetector(
                    onTap: () {
                      bloc.add(OpenCardMemoryEvent(index));
                    },
                    child: CardWidget(
                      card,
                      borderRadius: size.borderRadius.toDouble(),
                      padding: size.padding.toDouble(),
                    ),
                  );
                },
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoBox(label: 'Moves', value: state.moves.toString()),
                  const SizedBox(width: 12),
                  _buildInfoBox(
                    label: 'Mistakes',
                    value: state.mistakes.toString(),
                  ),
                  const SizedBox(width: 12),
                  StreamBuilder<int>(
                    stream: state.time$,
                    builder: (context, snapshot) {
                      final seconds = secondsAvailable - (snapshot.data ?? 0);

                      if (seconds == 0) {
                        context.read<MemoryBloc>().add(const TimeOutEvent());
                      }

                      final duration = Duration(seconds: max(0, seconds));

                      final hh = duration.inHours.toString().padLeft(2, '0');
                      final mm =
                          (duration.inMinutes % 60).toString().padLeft(2, '0');
                      final ss =
                          (duration.inSeconds % 60).toString().padLeft(2, '0');

                      return _buildInfoBox(
                        label: 'Time',
                        value: '$hh:$mm:$ss',
                      );
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildInfoBox({
    required String label,
    required String value,
  }) {
    const headline5 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      fontSize: 18,
      height: 21.09 / 18,
      color: Colors.black,
    );

    const body12 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 18 / 12,
      color: Colors.black,
    );

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: body12),
            const SizedBox(height: 4),
            Text(value, style: headline5),
          ],
        ),
      ),
    );
  }

  Widget _buildGrid({
    required Widget Function(int index) builder,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final dimension = constraints.maxWidth / size.columns;

        return Column(
          children: List.generate(
            size.rows,
            (row) => Row(
              children: List.generate(
                size.columns,
                (col) => SizedBox.square(
                  dimension: dimension,
                  child: builder(row * size.columns + col),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
