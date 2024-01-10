import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/tambah_kegiatan_view.dart';

class TambahKegiatanController extends State<TambahKegiatanView> implements MvcController {
  static late TambahKegiatanController instance;
  late TambahKegiatanView view;

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