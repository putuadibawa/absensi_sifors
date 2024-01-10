import 'package:flutter/material.dart';

Widget cardAnggotaMersi(
    {required String namaAnggotaMersi, required String emailAnggotaMersi}) {
  return Card(
    child: ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://i.ibb.co/PGv8ZzG/me.jpg",
        ),
      ),
      title: Text(namaAnggotaMersi),
      subtitle: Text(emailAnggotaMersi),
    ),
  );
}
