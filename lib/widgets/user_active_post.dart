import 'package:flutter/material.dart';
import 'package:social_app/model/user_data_model.dart';

class UserActivePosts extends StatelessWidget {
  const UserActivePosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: userItem.map((e) {
          return Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(e.img), fit: BoxFit.cover)),
                        ),
                        // Image.asset(e.img),
                        if (e.isActive!)
                          Positioned(
                            right: 3,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  shape: BoxShape.circle,
                                  color: const Color(0xff00B5AA)),
                            ),
                          )

                        // Image.asset("assets/images/profile.png"),
                      ],
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          e.name,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff484D54)),
                        ),
                        Row(
                          children: [
                            Text(
                              e.city,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xff484D54)),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff484D54)),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(e.time + " mins ago",
                                    style: const TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff484D54))),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 25,
                        color: Color(0xff757575),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: e.imgs.map((el) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: 140,
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              image: DecorationImage(image: AssetImage(el))),
                        );
                      }).toList(),
                    ))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
