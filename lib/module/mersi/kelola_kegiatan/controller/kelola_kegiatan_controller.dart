import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/kelola_kegiatan_view.dart';

class KelolaKegiatanController extends State<KelolaKegiatanView> implements MvcController {
  static late KelolaKegiatanController instance;
  late KelolaKegiatanView view;

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