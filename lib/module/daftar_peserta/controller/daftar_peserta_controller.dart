import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/daftar_peserta_view.dart';

class DaftarPesertaController extends State<DaftarPesertaView> implements MvcController {
  static late DaftarPesertaController instance;
  late DaftarPesertaView view;

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