import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: const TextField(
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintStyle: TextStyle(color: Colors.white, fontSize: 15),
          //icon
          border: InputBorder.none,
        ),
      ),
    );
  }
}
