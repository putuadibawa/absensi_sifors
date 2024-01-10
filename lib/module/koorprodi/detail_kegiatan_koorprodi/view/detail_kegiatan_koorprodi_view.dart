import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/detail_kegiatan_koorprodi_controller.dart';

class DetailKegiatanKoorprodiView extends StatefulWidget {
  const DetailKegiatanKoorprodiView({Key? key}) : super(key: key);

  Widget build(context, DetailKegiatanKoorprodiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DETAIL KEGIATAN"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              bannerKegiatan(),
              const SizedBox(
                height: 20.0,
              ),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Nama Kegiatan:",
                  nilaiItemDetailKegiatan: "Sifors Sharing Session Batch 20"),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Tanggal Pelaksanaan Kegiatan:",
                  nilaiItemDetailKegiatan: "10 April 2023"),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Waktu:",
                  nilaiItemDetailKegiatan: "10.00-12.00 Wita"),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Deskripsi Singkat Kegiatan:",
                  nilaiItemDetailKegiatan:
                      "Proident dolore ipsum minim veniam minim adipisicing ullamco laborum quis tempor. Qui pariatur do aliquip duis consectetur voluptate anim sunt commodo aliqua magna cillum. Nostrud aliquip cillum occaecat veniam. Sit aute veniam quis voluptate."),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Tempat Kegiatan:",
                  nilaiItemDetailKegiatan: "Zoom Cloude Meeting"),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Perlengkapan Peserta:",
                  nilaiItemDetailKegiatan: "Dolore commodo sunt ex ut veniam."),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Pakaian Peserta:",
                  nilaiItemDetailKegiatan:
                      "Id enim nostrud aute ex nisi ad culpa ipsum quis qui ea."),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DaftarPesertaView()),
                    );
                  },
                  child: buttonAksi(namaButton: "LIHAT PESERTA"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailKegiatanKoorprodiView> createState() =>
      DetailKegiatanKoorprodiController();
}
