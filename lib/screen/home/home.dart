import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamestoreapp/constant/colors.dart';
import 'package:gamestoreapp/widget/header.dart';
import 'package:gamestoreapp/widget/search.dart';
import 'package:gamestoreapp/widget/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GameColor.kprimary,
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                const GameHeader(),
                const SearchHeader(),
                CategoryScreen(),
              ],
            )
          ],
        )));
  }
}
