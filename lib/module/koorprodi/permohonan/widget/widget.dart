import 'package:flutter/material.dart';

Widget cardPermohonanAnggotaMersi(
    {required String namaAnggotaMersi, required String emailAnggotaMersi}) {
  return Card(
    child: ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://i.ibb.co/PGv8ZzG/me.jpg",
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.chevron_right_outlined,
          size: 24.0,
        ),
      ),
      title: Text(namaAnggotaMersi),
      subtitle: Text(emailAnggotaMersi),
    ),
  );
}
