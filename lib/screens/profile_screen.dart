import 'package:flutter/material.dart';
import 'package:social_app/widgets/grid_view_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/profile.png"),
              fit: BoxFit.cover)),
      child: Container(
        color: Colors.black26,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    defaultFollowers(num: "135", title: "Posts"),
                    defaultFollowers(num: "5,321k", title: "followers"),
                    defaultFollowers(num: "99", title: "following"),
                    const Spacer(),
                    Container(
                      width: 137,
                      height: 38,
                      decoration: BoxDecoration(
                          color: const Color(0xff2676E1),
                          borderRadius: BorderRadius.circular(23.0)),
                      child: const Center(
                          child: Text(
                        "Friend Request",
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(71.0),
                          topRight: Radius.circular(71.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Jenna Feranandez",
                              style: TextStyle(fontSize: 16),
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Creative Designer",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff484D54)),
                                ),
                                Text(
                                  " @ArgoRadius",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff2676E1)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Obsessed with Fahim MD's YouTube channel, love to go ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff484D54)),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "shopping on weekends and loveee food  ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff484D54)),
                                ),
                                Text(
                                  " #foodielife ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff2676E1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const GridViewWidget(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget defaultFollowers({num, title}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            num,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            title,
            style: const TextStyle(color: Color(0xff9A9EA4)),
          )
        ],
      ),
    );
  }
}
