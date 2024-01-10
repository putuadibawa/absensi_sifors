import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/informasi_mahasiswa_view.dart';

class InformasiMahasiswaController extends State<InformasiMahasiswaView> implements MvcController {
  static late InformasiMahasiswaController instance;
  late InformasiMahasiswaView view;

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