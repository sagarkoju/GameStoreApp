import 'package:flutter/material.dart';
import 'package:gamestoreapp/widget/newest_game.dart';
import 'package:gamestoreapp/widget/popular_game.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);
  final list = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182F2),
      'title': 'More'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFF6F8FF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          Container(
              height: 150,
              padding: const EdgeInsets.all(25),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: list[index]['color'] as Color),
                          child: Icon(
                            list[index]['icon'] as IconData,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          list[index]['title'] as String,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 25,
                      ),
                  itemCount: list.length)),
          _buildTitle(context, 'Popular Game'),
          PopularGame(),
          _buildTitle(context, 'Newest Game'),
          NewestGame(),
        ],
      ),
    );
  }

  Widget _buildTitle(context, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
