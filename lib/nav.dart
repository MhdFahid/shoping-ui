import 'package:flutter/material.dart';

Container nav(IconData icon, {bool isSelected = false}) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: isSelected
          ? [BoxShadow(spreadRadius: 1, blurRadius: 1, color: Colors.grey)]
          : [],
      color: isSelected
          ? Color.fromARGB(255, 216, 117, 117)
          : Color.fromARGB(255, 255, 255, 255),
    ),
    child: Icon(
      icon,
      color: isSelected ? Color.fromARGB(255, 255, 255, 255) : Colors.black,
    ),
  );
}
