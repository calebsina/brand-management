import 'package:flutter/material.dart';
import 'package:restaurant_app/app/utils/colors.dart';

class MealsCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;
  final int qty;
  const MealsCard({
    super.key,
    required this.price,
    required this.imageUrl,
    required this.qty,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: SizedBox(
        height: 170,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: primaryclr,
                    ),
                  ),
                ],
              ),
              Image.network(
                imageUrl,
                width: 78,
                height: 78,
              ),
              // const SizedBox(
              //   height: 16,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$$price',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
