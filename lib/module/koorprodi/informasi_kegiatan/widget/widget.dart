import 'package:flutter/material.dart';

Widget listNamaKegiatan({required String namaKegiatan}) {
  return ListTile(
    title: Text(namaKegiatan),
    trailing: const Icon(
      Icons.chevron_right_rounded,
      size: 24.0,
    ),
  );
}
