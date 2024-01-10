import 'package:absensi_sifors/core.dart';
import 'package:flutter/material.dart';

btnLoginMahasiswa(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
    ),
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const DashboardMahasiswaView(),
        ),
      );
    },
    child: const Text(
      "MAHASISWA",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 9.0,
      ),
    ),
  );
}

btnLoginMersi(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
    ),
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const DashboardMersiView(),
        ),
      );
    },
    child: const Text(
      "LOGIN MERSI",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 9.0,
      ),
    ),
  );
}

btnLoginKoorprodi(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
    ),
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const DashboardKoorprodiView(),
        ),
      );
    },
    child: const Text(
      "LOGIN KOORPRODI",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 9.0,
      ),
    ),
  );
}
