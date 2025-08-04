import 'package:flutter/material.dart';

class FacebookScreen extends StatelessWidget {
  const FacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: customAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset("assets/icons/homeIcon.png"),
              Image.asset("assets/icons/shortsIcon.png"),
              Image.asset("assets/icons/friendsIcon.png"),
              Image.asset("assets/icons/storeIcon.png"),
              Icon(Icons.notifications),
             CircleAvatar(
                 backgroundImage: AssetImage("assets/icons/profileIcon.jpg"),
             ),
            ],
          )

        ],
      ),


      ),

    );
  }
}

AppBar customAppbar() {
  //Todo: the app bar shape and UI
  AppBar appBar = AppBar(
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
        child: Image.asset("assets/icons/messenger icon.png", scale: 25),
      ),
    ],
  );
  return appBar;
}
