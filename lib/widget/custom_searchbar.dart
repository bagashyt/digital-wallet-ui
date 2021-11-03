import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final Color colorFill;
  final Color colorBorder;

  const CustomSearchBar(
      {Key? key, required this.colorFill, required this.colorBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          isCollapsed: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 17.0),
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0XFF2C3A4B),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: colorBorder),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.black),
          filled: true,
          fillColor: colorFill),
    );
  }
}
