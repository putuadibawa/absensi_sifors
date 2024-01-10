import 'package:flutter/material.dart';

Widget formNamaKegiatan() {
  return TextFormField(
    //initialValue: 'John Doe',
    maxLength: 50,
    decoration: const InputDecoration(
      labelText: 'Nama Kegiatan',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 121, 121, 121),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
        ),
      ),
      //helperText: "What's your name?",
    ),
    onChanged: (value) {},
  );
}

Widget formDeskripsiKegiatan() {
  return TextFormField(
    //initialValue: 'Jln. Udayana, No. 11,',
    maxLength: 200,
    maxLines: 4,
    decoration: const InputDecoration(
      labelText: 'Deskripsi Kegiatan',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 121, 121, 121),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
        ),
      ),
      //helperText: "What's your address",
    ),
    onChanged: (value) {},
  );
}

Widget formTempat() {
  return TextFormField(
    //initialValue: 'John Doe',
    maxLength: 50,
    decoration: const InputDecoration(
      labelText: 'Tempat',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 121, 121, 121),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
        ),
      ),
      //helperText: "What's your name?",
    ),
    onChanged: (value) {},
  );
}

Widget formPerlengkapan() {
  return TextFormField(
    //initialValue: 'Jln. Udayana, No. 11,',
    maxLength: 200,
    maxLines: 4,
    decoration: const InputDecoration(
      labelText: 'Perlengkapan',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 121, 121, 121),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
        ),
      ),
      //helperText: "What's your address",
    ),
    onChanged: (value) {},
  );
}

Widget formPakaian() {
  return TextFormField(
    //initialValue: 'Jln. Udayana, No. 11,',
    maxLength: 200,
    maxLines: 4,
    decoration: const InputDecoration(
      labelText: 'Pakaian',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 121, 121, 121),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
        ),
      ),
      //helperText: "What's your address",
    ),
    onChanged: (value) {},
  );
}
