import 'package:flutter/material.dart';
import 'package:smarthub/user_module/components/user_app_routes.dart';
import 'package:smarthub/user_module/screens/home/components/item_card.dart';

class FoodItemList extends StatelessWidget {
  const FoodItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            imgSource: "assets/images/3.png",
            description: "Your Favourite food is here",
            itemName: "items Near By your own home",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
          ItemCard(
            imgSource: "assets/images/1.png",
            description: "Buy What you want",
            itemName: "Near By",
            press: () {
              Navigator.pop(context);
            },
          ),
          ItemCard(
            imgSource: "assets/images/2.png",
            description: "Health is Important for your success",
            itemName: "Medical shops are being displayed here",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
          ItemCard(
            imgSource: "assets/images/2.png",
            description: "Health is Important",
            itemName: "Medical shops",
            press: () {},
          ),
          ItemCard(
            imgSource: "assets/images/2.png",
            description: "Health is Important",
            itemName: "Medical shops",
            press: () {},
          ),
        ],
      ),
    );
  }
}
