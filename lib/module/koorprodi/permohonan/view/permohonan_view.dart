import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../widget/widget.dart';
import '../controller/permohonan_controller.dart';

class PermohonanView extends StatefulWidget {
  const PermohonanView({Key? key}) : super(key: key);

  Widget build(context, PermohonanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DAFTAR PERMOHONAN"),
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
                          builder: (context) => const InformasiMahasiswaView()),
                    );
                  },
                  child: cardPermohonanAnggotaMersi(
                      namaAnggotaMersi: "Wayan Dipta",
                      emailAnggotaMersi: "wayan.dipta@mail.com"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PermohonanView> createState() => PermohonanController();
}
