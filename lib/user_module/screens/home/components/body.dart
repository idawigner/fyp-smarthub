import 'package:flutter/material.dart';
import 'package:smarthub/user_module/screens/home/components/category_content.dart';
import 'package:smarthub/user_module/screens/home/components/category_list.dart';
import 'package:smarthub/user_module/screens/home/components/discount_card.dart';
import 'package:smarthub/user_module/screens/home/components/food_item_list.dart';
import 'package:smarthub/user_module/screens/home/components/popular_items.dart';
import 'package:smarthub/user_module/screens/home/components/search_box.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedIndex = 0;
  bool _isSearchBoxFocused = false;

  void _selectCategory(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _resetSearchBoxColors() {
    setState(() {
      _isSearchBoxFocused = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return GestureDetector(
      onTap: () {
        if (!isKeyboard) {
          FocusScope.of(context).unfocus();
          _resetSearchBoxColors();
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(
            onChanged: (value) {},
            isFocused: _isSearchBoxFocused,
            onFocusChanged: (bool focused) {
              setState(() {
                _isSearchBoxFocused = focused;
              });
            },
          ),
          CategoryList(
            selectedIndex: _selectedIndex,
            onCategorySelected: _selectCategory,
          ),
          CategoryContent(selectedIndex: _selectedIndex),
          const SizedBox(height: 10),
          PopularItems(selectedIndex: _selectedIndex),
          const FoodItemList(),
          const DiscountCard(),
        ],
      ),
    );
  }
}
