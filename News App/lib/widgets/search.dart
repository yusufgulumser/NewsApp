import 'package:flutter/material.dart';

Container search() {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20),
    ]),
    margin: const EdgeInsets.only(top: 35, left: 20, right: 20),
    child: TextField(
      decoration: InputDecoration(
          label: const Center(child: Text('Search')),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide.none)),
    ),
  );
}
