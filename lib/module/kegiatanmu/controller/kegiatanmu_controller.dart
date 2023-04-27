import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/kegiatanmu_view.dart';

class KegiatanmuController extends State<KegiatanmuView> implements MvcController {
  static late KegiatanmuController instance;
  late KegiatanmuView view;

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