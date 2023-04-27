import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/presensi_view.dart';

class PresensiController extends State<PresensiView> implements MvcController {
  static late PresensiController instance;
  late PresensiView view;

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