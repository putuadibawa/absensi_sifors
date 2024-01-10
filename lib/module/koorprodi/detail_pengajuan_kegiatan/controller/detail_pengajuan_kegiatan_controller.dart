import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/detail_pengajuan_kegiatan_view.dart';

class DetailPengajuanKegiatanController extends State<DetailPengajuanKegiatanView> implements MvcController {
  static late DetailPengajuanKegiatanController instance;
  late DetailPengajuanKegiatanView view;

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