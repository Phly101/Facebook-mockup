import 'package:flutter/material.dart';
import 'package:practice_project/stories_widgets.dart';

class FacebookScreen extends StatelessWidget {
  const FacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppbar(),

        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/icons/homeIcon.png", scale: 2.5),
                Image.asset("assets/icons/shortsIcon.png", scale: 2.5),
                Image.asset("assets/icons/friendsIcon.png", scale: 2.5),
                Image.asset("assets/icons/storeIcon.png", scale: 2.5),
                Icon(Icons.notifications),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/profileIcon.jpg"),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    height: 1.5,
                    color: Colors.grey.withValues(alpha: 0.6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "assets/icons/profileIcon.jpg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 280,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.grey.withValues(alpha: 0.6),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 3.0,
                              left: 15.0,
                            ),
                            child: Text("What's on your mind?"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/icons/imageIcon.png",
                          scale: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 4, color: Colors.grey.withValues(alpha: 0.6)),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return Divider(

                        thickness: 1,
                        indent: 0.3,
                        endIndent: 0.3,
                      );
                    },

                    itemBuilder: (context, index) {
                      return StoriesWidgets();
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(height: 4, color: Colors.grey.withValues(alpha: 0.6)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

AppBar customAppbar() {
  AppBar appBar = AppBar(
    backgroundColor: Colors.white,
    title: Text(
      "facebook",
      style: TextStyle(
        color: Color(0xFF1877F2),
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.add_circle_sharp),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.search_rounded),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/icons/messengerIcon.png"),
      ),
    ],
  );
  return appBar;
}
