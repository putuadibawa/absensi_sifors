import 'dart:io';
//import 'package:intl/intl.dart';
//import 'package:absensi_sifors/module/mersi/tambah_kegiatan/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
//import '../controller/tambah_kegiatan_controller.dart';
import 'package:image_picker/image_picker.dart';

class TambahKegiatanView extends StatefulWidget {
  const TambahKegiatanView({Key? key}) : super(key: key);

  get picker => null;

  get image => null;

  set image(image) {}
  Future getImage() async {
    var image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      this.image = image;
    });
  }

  Widget build(context, TambahKegiatanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TAMBAH KEGIATAN"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //Nama Kegiatan
              formNamaKegiatan(),
              // Tanggal Pelaksanaan
              InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  print("pickedDate: $pickedDate");
                },
                child: TextFormField(
                  initialValue: '2022-08-01',
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Tanggal Pelaksanaan',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 121, 121, 121),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 121, 121, 121),
                      ),
                    ),
                    suffixIcon: Icon(Icons.date_range),
                    // helperText: "What's your name?",
                  ),
                  onChanged: (value) {},
                ),
              ),
              //Waktu Mulai
              InkWell(
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                    builder: (context, child) {
                      return MediaQuery(
                        data: MediaQuery.of(context)
                            .copyWith(alwaysUse24HourFormat: true),
                        child: child ?? Container(),
                      );
                    },
                  );
                  print("pickedTime: $pickedTime");
                },
                child: TextFormField(
                  initialValue: '08:23',
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Waktu Mulai',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 121, 121, 121),
                      ),
                    ),
                    suffixIcon: Icon(Icons.timer),
                    //helperText: "What's your name?",
                  ),
                  onChanged: (value) {},
                ),
              ),
              //Waktu Selesai
              InkWell(
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                    builder: (context, child) {
                      return MediaQuery(
                        data: MediaQuery.of(context)
                            .copyWith(alwaysUse24HourFormat: true),
                        child: child ?? Container(),
                      );
                    },
                  );
                  print("pickedTime: $pickedTime");
                },
                child: TextFormField(
                  initialValue: '08:23',
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Waktu Selesai',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 121, 121, 121),
                      ),
                    ),
                    suffixIcon: Icon(Icons.timer),
                    //helperText: "What's your name?",
                  ),
                  onChanged: (value) {},
                ),
              ),
              //Deskripsi Kegiatan
              formDeskripsiKegiatan(),
              //Tempat
              formTempat(),
              //Perlengkapan
              formPerlengkapan(),
              //Pakaian
              formPakaian(),
              // Text dan Button "Buka file"
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    const Text("Photo :"),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: (getImage),
                      child: const Text("Buka File"),
                    ),
                  ],
                ),
              ),

              // Preview photo
              Container(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 125,
                  width: 125,
                  child: Container(
                    color: const Color.fromARGB(255, 192, 186, 186),
                    child: image == null
                        ? const Center(
                            child: Text("Tidak ada gambar"),
                          )
                        : Image.file(File(image!.path)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              //Button Simpan
              Center(
                child: InkWell(
                  onTap: () {},
                  child: buttonAksi(namaButton: "SIMPAN"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TambahKegiatanView> createState() => TambahKegiatanController();

  void setState(Null Function() param0) {}
}
