import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../widget/alert.dart';
//import '../controller/dashboard_mahasiswa_controller.dart';

class DashboardMahasiswaView extends StatefulWidget {
  const DashboardMahasiswaView({Key? key}) : super(key: key);

  Widget build(context, DashboardMahasiswaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DASHBOARD MAHASISWA"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Putu Adi Bawa"),
              accountEmail: Text("adi.bawa@undiksha.ac.id"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.ibb.co/PGv8ZzG/me.jpg"),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text("Notifikasi"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Sign Out"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi, Putu",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("adi.bawa@undiksha.ac.id"),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KegiatanTerkiniView()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  height: 80.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 15),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "MENDAFTAR KEGIATAN",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KegiatanmuView(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  height: 80.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 15),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "PRESENSI",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LaporanKehadiranView(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  height: 80.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 15),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "LAPORAN KEHADIRAN",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () => _onAlertButtonsPressed(context),
                child: Container(
                  padding: const EdgeInsets.all(0),
                  height: 80.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 15),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "GABUNG TIM MERSI",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardMahasiswaView> createState() => DashboardMahasiswaController();
}

_onAlertButtonsPressed(context) {
  Alert(
    context: context,
    type: AlertType.none,
    desc: "Apakah anda yakin ingin bergabung menjadi Tim Mersi?",
    buttons: [
      DialogButton(
        onPressed: () => Navigator.pop(context),
        color: const Color.fromRGBO(0, 179, 134, 1.0),
        child: const Text(
          "BERGABUNG",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      DialogButton(
        onPressed: () => Navigator.pop(context),
        color: Colors.red,
        child: const Text(
          "BATAL",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      )
    ],
  ).show();
}
