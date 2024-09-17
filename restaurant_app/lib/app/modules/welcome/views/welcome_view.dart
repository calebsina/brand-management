import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/colors.dart';
import 'package:restaurant_app/app/widgets/meals_widget.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  WelcomeView({super.key});
  final List<String> _cardTitles = [
    'Burger',
    'pizza',
    'pastas',
    'salad',
    'sashu',
    'egg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: primaryclr,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: primaryclr,
          ),
        ],
      ),
      // extendBodyBehindAppBar: true,
      // extendBody: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Get Your ",
                    style: TextStyle(
                        fontSize: 30,
                        color: primaryclr,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Best",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: primaryclr,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Food ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: primaryclr,
                    ),
                  ),
                  Text(
                    "Around You",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: primaryclr,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: primaryclr.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: BoxShadow(

                  // )
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "search...."),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover Food",
                    style: TextStyle(
                      color: primaryclr,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: primaryclr,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _cardTitles.map((title) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Card(
                        elevation: 8,
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SizedBox(
                          width: 70,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(title),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed('/details-page');
                      },
                      child: const MealsCard(
                        price: "100",
                        imageUrl:
                            'https://theeburgerdude.com/wp-content/uploads/2022/09/9093e9_0c4e70b12b0843d3a2c78207361932d1_mv2.webp',
                        qty: 10,
                        title: "Meat Burger",
                      ),
                    ),
                    InkWell(
                      onTap: (() => Get.toNamed('/details-page')),
                      child: const MealsCard(
                        price: "150",
                        imageUrl:
                            'https://fat-tiger.in/wp-content/uploads/2022/08/swiggy-2_0034_Meditarranean-pizza-scaled.jpg',
                        qty: 10,
                        title: "Pizza",
                      ),
                    ),
                    InkWell(
                      onTap: (() => Get.toNamed('/details-page')),
                      child: const MealsCard(
                        price: "100",
                        imageUrl:
                            'https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg',
                        qty: 10,
                        title: "Meat Burger",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(
            //   height: 25,
            // ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Food",
                    style: TextStyle(
                      color: primaryclr,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: primaryclr,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MealsCard(
                      price: "100",
                      imageUrl:
                          'https://theeburgerdude.com/wp-content/uploads/2022/09/9093e9_0c4e70b12b0843d3a2c78207361932d1_mv2.webp',
                      qty: 10,
                      title: "Meat Burger",
                    ),
                    MealsCard(
                      price: "150",
                      imageUrl:
                          'https://fat-tiger.in/wp-content/uploads/2022/08/swiggy-2_0034_Meditarranean-pizza-scaled.jpg',
                      qty: 10,
                      title: "Pizza",
                    ),
                    MealsCard(
                      price: "100",
                      imageUrl:
                          'https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg',
                      qty: 10,
                      title: "Meat Burger",
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
