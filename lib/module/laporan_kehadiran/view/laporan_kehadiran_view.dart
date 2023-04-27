import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/laporan_kehadiran_controller.dart';

class LaporanKehadiranView extends StatefulWidget {
  const LaporanKehadiranView({Key? key}) : super(key: key);

  Widget build(context, LaporanKehadiranController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LaporanKehadiran"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LaporanKehadiranView> createState() => LaporanKehadiranController();
}