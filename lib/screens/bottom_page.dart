import 'package:flutter/material.dart';
import 'package:social_app/screens/home_screen.dart';
import 'package:social_app/screens/profile_screen.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  bool inHome = true;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> widgetOption = const [
    HomeScreen(),
    Text(
      "stories",
      style: optionStyle,
    ),
    Text(
      "notification",
      style: optionStyle,
    ),
    Text(
      "search",
      style: optionStyle,
    ),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/chat.png"),
            const Text(
              "Logo",
              style: TextStyle(
                  color: Color(0xff434B56),
                  fontSize: 26,
                  // fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  inHome = false;
                });
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/profile.png"),
                        fit: BoxFit.cover)),
              ),
            )
          ],
        ),
      ),
      body: inHome
          ? Center(
              child: widgetOption.elementAt(_selectedIndex),
            )
          : const ProfileScreen(),
      bottomNavigationBar: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.black12)),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            BottomNavigationBar(
              elevation: 0.0,
              items: [
                BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        setState(() {
                          inHome = true;
                        });
                      },
                      child: Container(
                        child: const Icon(
                          Icons.home,
                          size: 30,
                        ),
                      ),
                    ),
                    label: "Home".toUpperCase()),
                BottomNavigationBarItem(
                    icon: Image.asset("assets/images/stories.png"),
                    label: "STORIES".toUpperCase()),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications_active_outlined,
                      size: 30,
                    ),
                    label: "NOTIFICATIONS"),
                BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.search_outlined,
                      size: 30,
                    ),
                    label: "Search".toUpperCase()),
              ],
              currentIndex: _selectedIndex,
              onTap: onItemTapped,
            ),
            Positioned(
              top: -30,
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/Path 94.png"))),
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
