import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/dashboard_mahasiswa_view.dart';

class DashboardMahasiswaController extends State<DashboardMahasiswaView> implements MvcController {
  static late DashboardMahasiswaController instance;
  late DashboardMahasiswaView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }
  String nama = "Putu Adi Bawa";

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}