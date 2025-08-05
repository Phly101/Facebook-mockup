import 'package:flutter/material.dart';
import 'package:practice_project/reacts_widget.dart';
import 'package:practice_project/sale_item.dart';

class PostsWithImages extends StatelessWidget {
  String name;
  String comments;
  String reacts;
  int? numOfReacts;
  String? imageURl;

  PostsWithImages({
    super.key,
    required this.name,
    required this.comments,
    required this.reacts,
    this.numOfReacts,
    this.imageURl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customRow(name: name),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5),
              child: Text("some text about anything written inside the post"),
            ),
          ),
          Center(
            child: SizedBox(
              height: 350,
              width: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SaleItem(),
                  SizedBox(width: 10),
                  SaleItem(),
                  SizedBox(width: 10),
                  SaleItem(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    bottom: 16.0,
                    top: 8.0,
                  ),
                  child: Reacts.overlappingReacts([
                    "assets/icons/heartIcon.png",
                    "assets/icons/likeIcon.png",
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: Text(
                    reacts,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withValues(alpha: 0.8),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 6.0),
                  child: Text(
                    comments,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withValues(alpha: 0.9),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/icons/like.png",
                    scale: 2.5,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Like", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),

              Row(
                children: [
                  Image.asset(
                    "assets/icons/comment.png",
                    scale: 2.5,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Comment",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/shareIcon.png",
                    scale: 20,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Send", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Row customRow({String? profileImage, String? name}) {
  Row row = Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            profileImage ?? "assets/icons/defaultuser.jpg",
          ),
        ),
      ),
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
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    "assets/icons/verifiedIcon.jpg",
                    scale: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "sponsored",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.withValues(alpha: 0.8),
                  ),
                ),
                Image.asset("assets/icons/globeIcon.jpg", scale: 19),
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.close, color: Colors.grey.withValues(alpha: 0.9)),
      ),
    ],
  );
  return row;
}
