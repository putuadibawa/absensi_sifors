//import 'package:absensi_sifors/module/presensi/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
//import '../controller/presensi_controller.dart';

class PresensiView extends StatefulWidget {
  const PresensiView({Key? key}) : super(key: key);

  Widget build(context, PresensiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PRESENSI"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 150.0,
              ),
              textFormFieldToken(),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PresensiView> createState() => PresensiController();
}
