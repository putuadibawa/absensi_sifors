import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/detail_kegiatan_controller.dart';

class DetailKegiatanView extends StatefulWidget {
  const DetailKegiatanView({Key? key}) : super(key: key);

  Widget build(context, DetailKegiatanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailKegiatan"),
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
  State<DetailKegiatanView> createState() => DetailKegiatanController();
}