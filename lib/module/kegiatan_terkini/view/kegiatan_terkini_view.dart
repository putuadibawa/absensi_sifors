import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/kegiatan_terkini_controller.dart';

class KegiatanTerkiniView extends StatefulWidget {
  const KegiatanTerkiniView({Key? key}) : super(key: key);

  Widget build(context, KegiatanTerkiniController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("KEGIATAN TERKINI"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
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
                          builder: (context) => const DetailKegiatanView()),
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
  State<KegiatanTerkiniView> createState() => KegiatanTerkiniController();
}
