import 'package:flutter/material.dart';

Widget textFormFieldToken() {
  return Container(
    height: 70.0,
    padding: const EdgeInsets.symmetric(
      horizontal: 16.0,
    ),
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 210, 209, 209),
      borderRadius: BorderRadius.all(
        Radius.circular(
          40,
        ),
      ),
    ),
    child: const Center(
      child: TextField(
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: "Masukkan token presensi",
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 108, 108, 108),
          ),
        ),
      ),
    ),
  );
}