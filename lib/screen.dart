import 'package:flutter/material.dart';

class FacebookScreen extends StatelessWidget {
  const FacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: customAppbar(),
      backgroundColor: Colors.white,
      body: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/icons/homeIcon.png",scale: 2.5,),
              Image.asset("assets/icons/shortsIcon.png",scale: 2.5,),
              Image.asset("assets/icons/friendsIcon.png",scale: 2.5,),
              Image.asset("assets/icons/storeIcon.png",scale: 2.5,),
              Icon(Icons.notifications),
             CircleAvatar(
                 backgroundImage: AssetImage("assets/icons/profileIcon.jpg"),
             ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Container(
              height: 1.5,
              color: Colors.grey.withValues(alpha: 0.6),
            ),
          ),


        ],
      ),


      ),

    );
  }
}

AppBar customAppbar() {
  //Todo: the app bar shape and UI
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
        child: Image.asset("assets/icons/messengerIcon.png", ),
      ),
    ],
  );
  return appBar;
}
