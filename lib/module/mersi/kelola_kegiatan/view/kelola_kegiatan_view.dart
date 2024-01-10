import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/kelola_kegiatan_controller.dart';

class KelolaKegiatanView extends StatefulWidget {
  const KelolaKegiatanView({Key? key}) : super(key: key);

  Widget build(context, KelolaKegiatanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("KELOLA KEGIATAN"),
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
                          builder: (context) => const TambahKegiatanView()),
                    );
                  },
                  child: widgetButton(namaButton: "TAMBAH KEGIATAN"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListTile(
                title: const Text("Sifors Sharing Session Bacth 20"),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailKegiatanMersiView(),
                      ),
                    );
                  },
                  child: const Text("DETAIL"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<KelolaKegiatanView> createState() => KelolaKegiatanController();
}
