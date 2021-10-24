import 'package:flutter/material.dart';
import 'package:gamestoreapp/constant/colors.dart';
import 'package:gamestoreapp/models/game.dart';
import 'package:readmore/readmore.dart';

class GameDescription extends StatelessWidget {
  final Game game;
  const GameDescription( this.game ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: 25
      ),
      child: ReadMoreText(
        game.desc,
        trimLines: 2,
        colorClickableText: GameColor.kprimary,
        trimMode: TrimMode.Line,
        style: TextStyle(
          color: Colors.grey.withOpacity(0.7)
        ),
        trimCollapsedText: 'more',
        trimExpandedText: 'less',

      ),
    );
  }
}
