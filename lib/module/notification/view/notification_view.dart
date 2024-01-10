import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/notification_controller.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  Widget build(context, NotificationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NOTOFIKASI"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children:  [],
          ),
        ),
      ),
    );
  }

  @override
  State<NotificationView> createState() => NotificationController();
}
