import 'package:flutter/material.dart';
import 'package:gamestoreapp/models/game.dart';
import 'package:gamestoreapp/widget/game_desc.dart';
import 'package:gamestoreapp/widget/game_gallery.dart';
import 'package:gamestoreapp/widget/game_header.dart';
import 'package:gamestoreapp/widget/game_review.dart';


class GameInfo extends StatelessWidget {
  final Game game;
  const GameInfo( this.game ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children:  [
          GameHeaders(game),
          GameGallery(game),
          GameDescription(game),
          GameReview(game),
        ],
      ),
    );
  }
}
