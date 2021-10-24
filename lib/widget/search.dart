import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestoreapp/constant/colors.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: GameColor.kprimary,
            decoration: InputDecoration(
                fillColor: const Color(0xFFF6F8FF),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: GameColor.kprimary,
                  size: 30,
                ),
                hintText: 'Search Game',
                helperStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.grey.withOpacity(0.7),
                    )),
          ),
          Positioned(
            bottom: 6,
            right: 12,
              child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: GameColor.kprimary,
            ),
            child: const Icon(Icons.mic_outlined,
            color: Colors.white,
            size: 25,
            ),
          ))
        ],
      ),
    );
  }
}
