import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../controller/daftar_peserta_controller.dart';

class DaftarPesertaView extends StatefulWidget {
  const DaftarPesertaView({Key? key}) : super(key: key);

  Widget build(context, DaftarPesertaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DAFTAR PESERTA"),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: SfPdfViewer.network(
          "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
        ),
      ),
    );
  }

  @override
  State<DaftarPesertaView> createState() => DaftarPesertaController();
}
