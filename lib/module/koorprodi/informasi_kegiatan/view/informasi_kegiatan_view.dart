import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../widget/widget.dart';
import '../controller/informasi_kegiatan_controller.dart';

class InformasiKegiatanView extends StatefulWidget {
  const InformasiKegiatanView({Key? key}) : super(key: key);

  Widget build(context, InformasiKegiatanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("INFORMASI KEGIATAN"),
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
                          builder: (context) => const PengajuanKegiatanView()),
                    );
                  },
                  child: buttonAksi(namaButton: "LIHAT PENGAJUAN KEGIATAN"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DetailKegiatanKoorprodiView()),
                    );
                  },
                  child: listNamaKegiatan(
                      namaKegiatan: "Sifors Sharing Session #22"),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: listNamaKegiatan(
                      namaKegiatan: "Sifors Sharing Session #23"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<InformasiKegiatanView> createState() => InformasiKegiatanController();
}
