import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';

class DashboardMersiView extends StatefulWidget {
  const DashboardMersiView({Key? key}) : super(key: key);

  Widget build(context, DashboardMersiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DASHBOARD MERSI"),
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              tampilanUser(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KelolaKegiatanView(),
                    ),
                  );
                },
                child: buttonDashboard("KELOLA KEGIATAN"),
              ),
              const SizedBox(
                height: 10.0,
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
                child: buttonDashboard("LAPORAN KEHADIRAN"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardMersiView> createState() => DashboardMersiController();
}
