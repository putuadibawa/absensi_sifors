import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/kegiatanmu_controller.dart';

class KegiatanmuView extends StatefulWidget {
  const KegiatanmuView({Key? key}) : super(key: key);

  Widget build(context, KegiatanmuController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kegiatanmu"),
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
  State<KegiatanmuView> createState() => KegiatanmuController();
}