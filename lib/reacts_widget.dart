import 'package:flutter/material.dart';
class Reacts {
  static Widget overlappingReacts(List<String> reactIcons) {
    return SizedBox(
      height: 30,
      width: (reactIcons.length * 20).toDouble(),
      child: Stack(
        children: [
          for (int i = 0; i < reactIcons.length; i++)
            Positioned(
              right: i * 16.5,
              child: CircleAvatar(

                radius: 12,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  reactIcons[i],
                  height: 16,
                  width: 16,
                ),
              ),
            ),

        ],
      ),
    );
  }
}

