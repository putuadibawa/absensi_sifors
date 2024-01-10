import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/pengajuan_kegiatan_controller.dart';

class PengajuanKegiatanView extends StatefulWidget {
  const PengajuanKegiatanView({Key? key}) : super(key: key);

  Widget build(context, PengajuanKegiatanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PENGAJUAN KEGIATAN"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DetailPengajuanKegiatanView()),
                    );
                  },
                  child: listNamaKegiatan(
                      namaKegiatan: "Sifors Sharing Session #24"),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PengajuanKegiatanView> createState() => PengajuanKegiatanController();
}
