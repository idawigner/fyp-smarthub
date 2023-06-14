import 'package:flutter/material.dart';
import 'package:smarthub/user_module/components/user_app_routes.dart';
import 'package:smarthub/user_module/screens/home/components/store_card.dart';

class GroceryStoreList extends StatelessWidget {
  const GroceryStoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StoreCard(
            imgSource: "assets/images/3.png",
            description: "all Grocery item here are premium quality",
            shopName: "Near By",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
          StoreCard(
            imgSource: "assets/images/1.png",
            description: "buy from us",
            shopName: "al umar store for all your needs",
            press: () {
              Navigator.pop(context);
            },
          ),
          StoreCard(
            imgSource: "assets/images/2.png",
            description: "jee's here",
            shopName: "G spot",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
        ],
      ),
    );
  }
}
