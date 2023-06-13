import 'package:flutter/material.dart';
import 'package:smarthub/user_module/screens/home/components/search_box.dart';
import 'package:smarthub/user_module/screens/home/components/category_list.dart';
import 'package:smarthub/user_module/screens/home/components/discount_card.dart';
import 'package:smarthub/user_module/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        const CategoryList(),
        const ItemList(),
        const DiscountCard(),
      ],
    );
  }
}
