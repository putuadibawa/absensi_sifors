import 'package:flutter/material.dart';

Widget buttonAksi({required String namaButton}) {
  return Container(
    padding: const EdgeInsets.all(0),
    height: 50.0,
    width: 250.0,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(30),
      boxShadow: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 24,
          offset: Offset(0, 15),
        ),
      ],
    ),
    child: Center(
      child: Text(
        namaButton,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
