import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/kegiatan_terkini_view.dart';

class KegiatanTerkiniController extends State<KegiatanTerkiniView> implements MvcController {
  static late KegiatanTerkiniController instance;
  late KegiatanTerkiniView view;

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