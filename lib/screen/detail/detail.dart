import 'package:flutter/material.dart';
import 'package:gamestoreapp/models/game.dart';
import 'package:gamestoreapp/widget/detail_sliver_delegate.dart';
import 'package:gamestoreapp/widget/game_info.dart';

class DetailScreen extends StatelessWidget {
  final Game game;
  const DetailScreen(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: DetailSliverDelegate(
            game: game,
            expandedHeight: 400,
            roundedContainerHeight: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: GameInfo(game),
        )
      ],
    ));
  }
}
