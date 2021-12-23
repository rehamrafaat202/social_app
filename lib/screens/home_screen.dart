import 'package:flutter/material.dart';
import 'package:social_app/model/stories_model.dart';
import 'package:social_app/model/user_data_model.dart';
import 'package:social_app/widgets/user_active_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      "Recommendations",
                      style: TextStyle(
                          color: Color(0xff434B56),
                          fontSize: 16,
                          // fontFamily: "RobotoMono",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  builduserStory(),
                ],
              ),
            ),
          ),
          const SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: UserActivePosts(),
          )
        ],
      ),
    );
  }

  Widget builduserStory() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: story.map((e) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/Ellipse 3.png"),
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(e.img), fit: BoxFit.cover)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  e.name,
                  style:
                      const TextStyle(fontSize: 13, color: Color(0xff787C81)),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
