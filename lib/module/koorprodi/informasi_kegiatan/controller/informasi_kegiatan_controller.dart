import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/informasi_kegiatan_view.dart';

class InformasiKegiatanController extends State<InformasiKegiatanView> implements MvcController {
  static late InformasiKegiatanController instance;
  late InformasiKegiatanView view;

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