import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';

class SearchBox extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: _isFocused ? yPrimaryColor : secondaryColor.withOpacity(0.32),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search_rounded,
              color: _isFocused ? yPrimaryColor : secondaryColor,
            ),
          ),
          Expanded(
            child: TextField(
              controller: _textEditingController,
              onChanged: widget.onChanged,
              onTap: () {
                setState(() {
                  _isFocused = true;
                });
              },
              style: const TextStyle(
                fontSize: 18,
                color: textColor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search Here",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: _isFocused ? yPrimaryColor : secondaryColor,
                ),
              ),
            ),
          ),
          if (_textEditingController.text.isNotEmpty)
            IconButton(
              onPressed: () {
                _textEditingController.clear();
              },
              icon: Icon(
                Icons.close,
                color: _isFocused ? yPrimaryColor : secondaryColor,
              ),
            ),
        ],
      ),
    );
  }
}
