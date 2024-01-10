import 'package:absensi_sifors/core.dart';
import 'package:flutter/material.dart';

class DetailKegiatanMersiView extends StatefulWidget {
  const DetailKegiatanMersiView({Key? key}) : super(key: key);

  Widget build(context, DetailKegiatanMersiController controller) {
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
              bannerKegiatanMersi(),
              const SizedBox(
                height: 20.0,
              ),
              isiDetailKegiatanMersi(
                  judulItemDetailKegiatan: "Nama Kegiatan:",
                  nilaiItemDetailKegiatan: "Sifors Sharing Session Batch 20"),
              isiDetailKegiatanMersi(
                  judulItemDetailKegiatan: "Tanggal Pelaksanaan Kegiatan:",
                  nilaiItemDetailKegiatan: "10 April 2023"),
              isiDetailKegiatan(
                  judulItemDetailKegiatan: "Waktu:",
                  nilaiItemDetailKegiatan: "10.00-12.00 Wita"),
              isiDetailKegiatanMersi(
                  judulItemDetailKegiatan: "Deskripsi Singkat Kegiatan:",
                  nilaiItemDetailKegiatan:
                      "Proident dolore ipsum minim veniam minim adipisicing ullamco laborum quis tempor. Qui pariatur do aliquip duis consectetur voluptate anim sunt commodo aliqua magna cillum. Nostrud aliquip cillum occaecat veniam. Sit aute veniam quis voluptate."),
              isiDetailKegiatanMersi(
                  judulItemDetailKegiatan: "Tempat Kegiatan:",
                  nilaiItemDetailKegiatan: "Zoom Cloude Meeting"),
              isiDetailKegiatanMersi(
                  judulItemDetailKegiatan: "Perlengkapan Peserta:",
                  nilaiItemDetailKegiatan: "Dolore commodo sunt ex ut veniam."),
              isiDetailKegiatanMersi(
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
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: buttonAksi(namaButton: "EDIT"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                  child: InkWell(
                onTap: () {},
                child: buttonAksi(namaButton: "BUKA PRESENSI"),
              )),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: buttonAksi(namaButton: "HAPUS"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailKegiatanMersiView> createState() =>
      DetailKegiatanMersiController();
}
