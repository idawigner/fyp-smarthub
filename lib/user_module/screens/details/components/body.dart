import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:smarthub/constant.dart';
import 'package:smarthub/user_module/screens/details/components/item_image.dart';
import 'package:smarthub/user_module/screens/details/components/order_button.dart';

class Body extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ItemImage(
          key: ValueKey('item_image'),
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(
            key: UniqueKey(),
          ),
        ),
      ],
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
          RatingBar.builder(
            initialRating: 4,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 20,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // Handle the rating update
            },
          ),
          const Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          OrderButton(
            key: UniqueKey(),
            size: size,
            press: () {},
          )
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
