import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/permohonan_view.dart';

class PermohonanController extends State<PermohonanView> implements MvcController {
  static late PermohonanController instance;
  late PermohonanView view;

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