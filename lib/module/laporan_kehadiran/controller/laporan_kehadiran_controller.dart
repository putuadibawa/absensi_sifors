import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/laporan_kehadiran_view.dart';

class LaporanKehadiranController extends State<LaporanKehadiranView> implements MvcController {
  static late LaporanKehadiranController instance;
  late LaporanKehadiranView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}