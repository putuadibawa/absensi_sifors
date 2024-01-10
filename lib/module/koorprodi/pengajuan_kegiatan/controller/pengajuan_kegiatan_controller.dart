import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/pengajuan_kegiatan_view.dart';

class PengajuanKegiatanController extends State<PengajuanKegiatanView> implements MvcController {
  static late PengajuanKegiatanController instance;
  late PengajuanKegiatanView view;

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