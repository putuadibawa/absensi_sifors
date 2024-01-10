import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/detail_kegiatan_koorprodi_view.dart';

class DetailKegiatanKoorprodiController extends State<DetailKegiatanKoorprodiView> implements MvcController {
  static late DetailKegiatanKoorprodiController instance;
  late DetailKegiatanKoorprodiView view;

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