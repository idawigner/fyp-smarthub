import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';

class SearchBox extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final bool isFocused;
  final ValueChanged<bool> onFocusChanged;

  const SearchBox({
    Key? key,
    required this.onChanged,
    required this.isFocused,
    required this.onFocusChanged,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.removeListener(_onFocusChanged);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    widget.onFocusChanged(_focusNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: widget.isFocused
              ? yPrimaryColor
              : secondaryColor.withOpacity(0.32),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              onPressed: () {
                _focusNode.unfocus();
              },
              icon: Icon(
                Icons.search_rounded,
                color: widget.isFocused ? yPrimaryColor : secondaryColor,
              ),
            ),
          ),
          Expanded(
            child: TextField(
              controller: _textEditingController,
              onChanged: widget.onChanged,
              focusNode: _focusNode,
              onTap: () {
                _focusNode.requestFocus();
              },
              onEditingComplete: () {
                _focusNode.unfocus();
              },
              style: const TextStyle(
                fontSize: 18,
                color: textColor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search Here...",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: widget.isFocused ? yPrimaryColor : secondaryColor,
                ),
              ),
            ),
          ),
          if (widget.isFocused)
            IconButton(
              onPressed: () {
                _textEditingController.clear();
                _focusNode.unfocus();
              },
              icon: const Icon(
                Icons.close,
                color: yPrimaryColor,
              ),
            ),
        ],
      ),
    );
  }
}
