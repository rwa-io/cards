import 'package:cards/gen/assets.gen.dart';
import 'package:cards/src/models/card/card.dart';
import 'package:flutter/material.dart' hide Card;

class CardWidget extends StatelessWidget {
  const CardWidget(
    this.card, {
    this.highlighted = false,
    this.padding = 8,
    this.borderRadius = 20,
    super.key,
  });

  final Card card;
  final bool highlighted;
  final double padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: card.open ? _buildOpenCard() : _buildClosedCard(),
    );
  }

  Widget _buildOpenCard() {
    return Container(
      padding: EdgeInsets.all(borderRadius - 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: highlighted ? null : Colors.white,
        gradient: highlighted
            ? LinearGradient(
                colors: [
                  const Color(0xFF00E8BE).withOpacity(0.3),
                  const Color(0xFF0E4DF6).withOpacity(0.3),
                ],
              )
            : null,
      ),
      child: card.image.image(fit: BoxFit.contain),
    );
  }

  Widget _buildClosedCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Assets.cards.cardBack.image(fit: BoxFit.cover),
    );
  }
}
