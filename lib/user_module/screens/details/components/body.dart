import 'package:flutter/material.dart';

import 'package:smarthub/constant.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        // children: <Widget>[
        //   ItemImage(
        //     imgSrc: "assets/images/burger.png",
        //   ),
        //   Expanded(
        //     child: ItemInfo(),
        //   ),
        // ],
        );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "MacDonalds"),
          // TitlePriceRating(
          //   name: "Cheese Burger",
          //   numOfReviews: 24,
          //   rating: 4,
          //   price: 15,
          //   onRatingChanged: (value) {},
          // ),
          const Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          // OrderButton(
          //   size: size,
          //   press: () {},
          // )
        ],
      ),
    );
  }

  Row shopeName({required String name}) {
    return Row(
      children: <Widget>[
        const Icon(
          Icons.location_on,
          color: secondaryColor,
        ),
        const SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
