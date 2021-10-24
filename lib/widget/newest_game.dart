import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestoreapp/constant/colors.dart';
import 'package:gamestoreapp/models/game.dart';

class NewestGame extends StatelessWidget {
  final List<Game> listGame = Game.generateGames();
  NewestGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: listGame
            .map((e) => Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          e.icon,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.type,
                                      style: Theme.of(context)
                                          .textTheme
                                          .button!
                                          .copyWith(
                                              color:
                                                  Colors.grey.withOpacity(0.7),
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    _buildStar(),
                                  ],
                                ),
                                _buildButton(context)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3)
    ];
    return Row(
        children: color
            .map((e) => Icon(
                  Icons.star,
                  size: 15,
                  color: e,
                ))
            .toList());
  }

  Widget _buildButton(context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
          color: GameColor.kprimary, borderRadius: BorderRadius.circular(15)),
      child: Text(
        'Install',
        style: Theme.of(context).textTheme.button!.copyWith(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
