import 'package:cards/src/blocs/simon_says/simon_says_bloc.dart';
import 'package:cards/src/components/card_widget.dart';
import 'package:cards/src/components/wrapper.dart';
import 'package:cards/src/types/overlay_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimonSays extends StatelessWidget {
  const SimonSays({
    required this.successOverlayBuilder,
    required this.failOverlayBuilder,
    this.requiredScore,
    this.onSuccess,
    super.key,
  });

  final OverlayBuilder successOverlayBuilder;
  final OverlayBuilder failOverlayBuilder;
  final int? requiredScore;
  final void Function(int playTimeMs)? onSuccess;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimonSaysBloc(
        size: 6,
        requiredScore: requiredScore,
        onSuccess: onSuccess,
      ),
      child: Stack(
        children: [
          _buildGame(),
          BlocBuilder<SimonSaysBloc, SimonSaysState>(
            buildWhen: (previous, current) => previous.failed != current.failed,
            builder: (context, state) {
              final bloc = context.read<SimonSaysBloc>();

              if (state.failed) {
                return failOverlayBuilder(
                  context,
                  () {
                    bloc.add(const RestartGameSimonSaysEvent());
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          BlocBuilder<SimonSaysBloc, SimonSaysState>(
            buildWhen: (previous, current) =>
                previous.success != current.success,
            builder: (context, state) {
              final bloc = context.read<SimonSaysBloc>();

              if (state.success) {
                return successOverlayBuilder(
                  context,
                  () {
                    bloc.add(const RestartGameSimonSaysEvent());
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
    const headline2 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      fontSize: 32,
      height: 37.5 / 32,
      color: Colors.black,
    );

    const body16 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 18.75 / 16,
      color: Colors.black,
    );

    return Wrapper(
      child: BlocBuilder<SimonSaysBloc, SimonSaysState>(
        builder: (context, state) {
          final bloc = context.read<SimonSaysBloc>();

          return Column(
            children: [
              ..._buildGrid(
                builder: (index) {
                  final card = state.cards.elementAt(index);

                  return GestureDetector(
                    onTap: () {
                      if (state.userTurn) {
                        bloc.add(UserSelectSimonSaysEvent(index));
                      }
                    },
                    child: CardWidget(
                      card,
                      highlighted: state.isHighlighted(card),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.userTurn ? 'Your Turn' : "Simon's turn",
                        style: headline2,
                      ),
                      const SizedBox(height: 4),
                      if (!state.userTurn)
                        const Text(
                          'Pay Attention',
                          style: body16,
                        ),
                    ],
                  ),
                  Container(
                    width: 76,
                    height: 76,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2541F6),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        state.score.toString(),
                        style: headline2.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _buildGrid({
    required Widget Function(int index) builder,
  }) {
    return [
      Expanded(
        child: Row(
          children: [
            Expanded(child: builder(0)),
            Expanded(child: builder(1)),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: builder(2)),
            Expanded(child: builder(3)),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: builder(4)),
            Expanded(child: builder(5)),
          ],
        ),
      ),
    ];
  }
}
