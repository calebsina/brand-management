import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/colors.dart';
import 'package:restaurant_app/app/widgets/meal_list.dart';

import '../controllers/details_page_controller.dart';

class DetailsPageView extends GetView<DetailsPageController> {
  const DetailsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailsPageController _detailsPageController =
        Get.put(DetailsPageController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: primaryclr,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: primaryclr,
            ),
            onPressed: () {},
          )
        ],
      ),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://theeburgerdude.com/wp-content/uploads/2022/09/9093e9_0c4e70b12b0843d3a2c78207361932d1_mv2.webp',
                      height: 250,
                      width: 250,
                    ),
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: _detailsPageController.increment,
                                icon: Container(
                                  decoration: const BoxDecoration(
                                    color: primaryclr,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )),
                            Text(
                              _detailsPageController.count.toString(),
                            ),
                            IconButton(
                              onPressed: _detailsPageController.decrement,
                              icon: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: primaryclr,
                                    width: 1,
                                  )),
                                  child: const Icon(Icons.remove)),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              const Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    "Black chicken pizza",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                            Text("\$500"),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MealItems(
                          name: "Pizza",
                          image:
                              "https://theeburgerdude.com/wp-content/uploads/2022/09/9093e9_0c4e70b12b0843d3a2c78207361932d1_mv2.webp",
                          price: 100,
                        ),
                        MealItems(
                          name: "Pizza",
                          image:
                              "https://theeburgerdude.com/wp-content/uploads/2022/09/9093e9_0c4e70b12b0843d3a2c78207361932d1_mv2.webp",
                          price: 100,
                        ),
                        MealItems(
                          name: "Pizza",
                          image:
                              "https://theeburgerdude.com/wp-content/uploads/2022/09/9093e9_0c4e70b12b0843d3a2c78207361932d1_mv2.webp",
                          price: 100,
                        ),
                        MealItems(
                          name: "Pizza",
                          image:
                              "https://theeburgerdude.com/wp-content/uploads/2022/09/9093e9_0c4e70b12b0843d3a2c78207361932d1_mv2.webp",
                          price: 100,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),

      backgroundColor: whiteclr,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: primaryclr,
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: const Offset(0, 2),
                  color: Colors.grey.withOpacity(0.8)),
            ],
          ),
          child: const InkWell(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                // crossAxisAlignment: Cros,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add to cart",
                    style: TextStyle(
                      color: whiteclr,
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_checkout_sharp,
                    color: whiteclr,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
