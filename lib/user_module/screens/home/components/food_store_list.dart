import 'package:flutter/material.dart';
import 'package:smarthub/user_module/components/user_app_routes.dart';
import 'package:smarthub/user_module/screens/home/components/store_card.dart';

class FoodStoreList extends StatelessWidget {
  const FoodStoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StoreCard(
            imgSource: "assets/images/3.png",
            description: "Your Favourite food is here",
            shopName: "Near By your own home",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
          StoreCard(
            imgSource: "assets/images/1.png",
            description: "Buy What you want",
            shopName: "Near By",
            press: () {
              Navigator.pop(context);
            },
          ),
          StoreCard(
            imgSource: "assets/images/2.png",
            description: "Health is Important for your success",
            shopName: "Medical shops are being displayed here",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
          StoreCard(
            imgSource: "assets/images/2.png",
            description: "Health is Important",
            shopName: "Medical shops",
            press: () {},
          ),
          StoreCard(
            imgSource: "assets/images/2.png",
            description: "Health is Important",
            shopName: "Medical shops",
            press: () {},
          ),
        ],
      ),
    );
  }
}
