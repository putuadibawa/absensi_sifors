import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/kelola_tim_mersi_view.dart';

class KelolaTimMersiController extends State<KelolaTimMersiView> implements MvcController {
  static late KelolaTimMersiController instance;
  late KelolaTimMersiView view;

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