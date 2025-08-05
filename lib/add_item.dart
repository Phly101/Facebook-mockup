

import 'package:flutter/material.dart';


class AddItem extends StatelessWidget {
  final String name;
   const AddItem({super.key,required this.name });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey,width: 1),
        color: Colors.white,

      ),
      child: Column(
        children: [

          Expanded(
            flex: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                "assets/icons/catPhoto.jpeg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)

                        ),
                        child:
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0,right: 10),
                              child: Image.asset("assets/icons/Add person.png",scale: 3,color: Colors.black,),
                            ),
                            Text("Add Friend",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(10)

                        ),
                        child:
                        Center(child: Text("Remove")),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )
    ;
  }
}
