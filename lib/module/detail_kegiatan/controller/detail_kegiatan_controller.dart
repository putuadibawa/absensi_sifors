import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/detail_kegiatan_view.dart';

class DetailKegiatanController extends State<DetailKegiatanView> implements MvcController {
  static late DetailKegiatanController instance;
  late DetailKegiatanView view;

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