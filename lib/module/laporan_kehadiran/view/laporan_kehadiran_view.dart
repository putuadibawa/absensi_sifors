import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../controller/laporan_kehadiran_controller.dart';

class LaporanKehadiranView extends StatefulWidget {
  const LaporanKehadiranView({Key? key}) : super(key: key);

  Widget build(context, LaporanKehadiranController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LAPORAN KEHADIRAN"),
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
  State<LaporanKehadiranView> createState() => LaporanKehadiranController();
}
