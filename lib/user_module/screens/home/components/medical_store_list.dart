import 'package:flutter/material.dart';
import 'package:smarthub/user_module/components/user_app_routes.dart';
import 'package:smarthub/user_module/screens/home/components/store_card.dart';

class MedicalStoreList extends StatelessWidget {
  const MedicalStoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StoreCard(
            imgSource: "assets/images/3.png",
            description: "all medicines are being displayed here",
            shopName: "H store",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
          StoreCard(
            imgSource: "assets/images/1.png",
            description: "Your health is good",
            shopName: "D Store is the best one out there",
            press: () {
              Navigator.pop(context);
            },
          ),
          StoreCard(
            imgSource: "assets/images/2.png",
            description: "Health is Important",
            shopName: "Medical shops",
            press: () {
              Navigator.pushNamed(context, UserAppRoutes.details);
            },
          ),
        ],
      ),
    );
  }
}
