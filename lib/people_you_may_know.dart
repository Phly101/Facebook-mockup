import 'package:flutter/material.dart';
import 'package:practice_project/add_item.dart';

class PeopleYouMayKnow extends StatelessWidget {
  String name;

  String? imageURl;

  PeopleYouMayKnow({super.key, required this.name, this.imageURl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customRow(name: name),

          Center(
            child: SizedBox(
              height: 400,
              width: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AddItem(name: "Ahmed Magdy"),
                  SizedBox(width: 10),
                  AddItem(name: "Noha Alaa"),
                  SizedBox(width: 10),
                  AddItem(name: "Omar Negm"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:

            [
              Text("See all",style: TextStyle(color: Colors.grey),), Icon(Icons.navigate_next,color: Colors.grey,)]),
          ),
        ],
      ),
    );
  }
}

Row customRow({String? name}) {
  Row row = Row(
    children: [
      Image.asset("assets/icons/friendsIcon.png", scale: 3),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name!,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.more_horiz_outlined,
          color: Colors.grey.withValues(alpha: 0.9),
        ),
      ),
    ],
  );
  return row;
}
