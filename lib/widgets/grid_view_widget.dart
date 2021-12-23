import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> grideItem = [
      "assets/images/g1.png",
      "assets/images/g2.png",
      "assets/images/g3.png",
      "assets/images/g5.png",
      "assets/images/g5.png",
      "assets/images/g7.png",
      "assets/images/g3.png",
      "assets/images/g2.png",
      "assets/images/g1.png",
      "assets/images/g5.png",
      "assets/images/g6.png",
      "assets/images/g7.png",
      "assets/images/g4.png",
      "assets/images/g6.png",
      "assets/images/g1.png",
    ];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 1 / 1.03,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 3,
        children: List.generate(grideItem.length, (index) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      grideItem[index],
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(14)),
          );
        }),
      ),
    );
  }
}
