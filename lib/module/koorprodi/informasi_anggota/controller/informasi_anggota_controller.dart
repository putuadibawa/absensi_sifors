import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/informasi_anggota_view.dart';

class InformasiAnggotaController extends State<InformasiAnggotaView> implements MvcController {
  static late InformasiAnggotaController instance;
  late InformasiAnggotaView view;

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