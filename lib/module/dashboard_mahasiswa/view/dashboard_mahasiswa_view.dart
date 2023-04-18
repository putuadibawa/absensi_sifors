import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/dashboard_mahasiswa_controller.dart';

class DashboardMahasiswaView extends StatefulWidget {
  const DashboardMahasiswaView({Key? key}) : super(key: key);

  Widget build(context, DashboardMahasiswaController controller) {
    controller.view = this;

    String nama = "Putu";
    String email = "adi.bawa@undiksha.ac.id";

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
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
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
          padding: const EdgeInsets.all(0),
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
                    children: [
                      Text(
                        "Hi, $nama",
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("$email"),
                    ],
                  ),
                ],
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
