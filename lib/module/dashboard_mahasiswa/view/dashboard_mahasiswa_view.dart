import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
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
              otherAccountsPictures: [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/women/74.jpg"),
                // ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/men/47.jpg"),
                // ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text("Notifikasi"),
              onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
