import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/detail_kegiatan_mersi_view.dart';

class DetailKegiatanMersiController extends State<DetailKegiatanMersiView> implements MvcController {
  static late DetailKegiatanMersiController instance;
  late DetailKegiatanMersiView view;

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