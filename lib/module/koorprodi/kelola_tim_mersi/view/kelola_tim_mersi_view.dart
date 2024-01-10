import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../widget/widget.dart';
import '../controller/kelola_tim_mersi_controller.dart';

class KelolaTimMersiView extends StatefulWidget {
  const KelolaTimMersiView({Key? key}) : super(key: key);

  Widget build(context, KelolaTimMersiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("KELOLA TIM MERSI"),
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
                          builder: (context) => const PermohonanView()),
                    );
                  },
                  child: buttonAksi(namaButton: "LIHAT PERMOHONAN"),
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
                          builder: (context) => const InformasiAnggotaView()),
                    );
                  },
                  child: cardAnggotaMersi(
                      namaAnggotaMersi: "Gede Edi Martawan",
                      emailAnggotaMersi: "edi.martawan@mail.com"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<KelolaTimMersiView> createState() => KelolaTimMersiController();
}
