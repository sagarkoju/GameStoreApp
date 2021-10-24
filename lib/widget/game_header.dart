import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestoreapp/models/game.dart';

class GameHeaders extends StatelessWidget {
  final Game game;
  const GameHeaders(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 80,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                game.type,
                style: TextStyle(color: Colors.grey.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  _buildIconText(
                    game.score.toString(),
                    Icons.star,
                    Colors.amber,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                   _buildIconText(
                   game.download.toString(),
                    Icons.file_download_outlined,
                    Colors.red,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIconText(String text, IconData icon, Color color) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 15,
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        )
      ],
    );
  }
}
