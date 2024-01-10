import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/informasi_anggota_controller.dart';

class InformasiAnggotaView extends StatefulWidget {
  const InformasiAnggotaView({Key? key}) : super(key: key);

  Widget build(context, InformasiAnggotaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("INFORMASI ANGGOTA"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(0),
                  child: const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: "Gede Adi",
                      //maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: "Nama Depan",
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      enabled: false,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'Martawan',
                      decoration: const InputDecoration(
                        labelText: 'Nama Belakang',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      enabled: false,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'edi.martawan@mail.com',
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      enabled: false,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: '088788765678',
                      decoration: const InputDecoration(
                        labelText: 'Nomor Telephone',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      enabled: false,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: '21-09-2000',
                      decoration: const InputDecoration(
                        labelText: 'Tanggal Lahir',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      enabled: false,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'Laki-laki',
                      decoration: const InputDecoration(
                        labelText: 'Gender',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      enabled: false,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'Jln. Surapati No. 45',
                      maxLines: 4,
                      decoration: const InputDecoration(
                        labelText: 'alamat',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      enabled: false,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: buttonAksi(namaButton: "KELUARKAN DARI TIM MERSI"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<InformasiAnggotaView> createState() => InformasiAnggotaController();
}
