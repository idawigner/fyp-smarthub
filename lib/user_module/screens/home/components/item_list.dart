import 'package:flutter/material.dart';
import 'package:smarthub/user_module/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            SvgSrc: "assets/images/3.png",
            title: "Your Favourite food",
            shopName: "Near By",
            press: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
          ItemCard(
            SvgSrc: "assets/images/1.png",
            title: "Buy What you want",
            shopName: "Near By",
            press: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
          ItemCard(
            SvgSrc: "assets/images/2.png",
            title: "Health is Important",
            shopName: "Medical shops",
            press: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
          ItemCard(
            SvgSrc: "assets/images/2.png",
            title: "Health is Important",
            shopName: "Medical shops",
            press: () {},
          ),
          ItemCard(
            SvgSrc: "assets/images/2.png",
            title: "Health is Important",
            shopName: "Medical shops",
            press: () {},
          ),
        ],
      ),
    );
  }
}
