import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String label;
  const SearchTextField({Key? key, this.label = "Search"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      autocorrect: true,
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(20),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 8.0),
          child: Icon(
            Icons.search,
            size: 28,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}