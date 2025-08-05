

import 'package:flutter/material.dart';


class SaleItem extends StatelessWidget {
  const SaleItem({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
        
      ),
      child: Column(
        children: [

          Expanded(
            flex: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                "assets/icons/saleImage.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text takes 20% of the space
          Expanded(
            flex: 2, // 20%
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "HP Laptop",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Container(
                  width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(10)

                    ),
                    child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,right: 10),
                          child: Image.asset("assets/icons/sendIcon.png",scale: 3,color: Colors.black,),
                        ),
                        Text("WhatsApp")
                      ],
                    ),
                  )
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
