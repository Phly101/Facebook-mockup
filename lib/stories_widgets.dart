import 'package:flutter/material.dart';

class StoriesWidgets extends StatelessWidget {
  const StoriesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,top: 10.0 ),
      child: Container(
        height: 500,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/icons/catPhoto.jpeg", fit: BoxFit.fill),
        ),
      ),
    );
  }
}
