import 'package:absensi_sifors/module/laporan_kehadiran/view/laporan_kehadiran_view.dart';
import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/dashboard_koorprodi_controller.dart';

class DashboardKoorprodiView extends StatefulWidget {
  const DashboardKoorprodiView({Key? key}) : super(key: key);

  Widget build(context, DashboardKoorprodiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DASHBOARD KOORPODI"),
        centerTitle: true,
        actions: const [],
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
                    builder: (context) => const NotificationView(),
                  ),
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
          padding: const EdgeInsets.all(10.0),
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        builder: (context) => const KelolaTimMersiView()),
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
                      "KELOLA TIM MERSI",
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
                      builder: (context) => const InformasiKegiatanView(),
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
                      "INOFORMASI KEGIATAN",
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardKoorprodiView> createState() => DashboardKoorprodiController();
}
