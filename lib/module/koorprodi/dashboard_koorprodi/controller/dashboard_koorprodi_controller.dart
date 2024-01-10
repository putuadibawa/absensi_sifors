import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/dashboard_koorprodi_view.dart';

class DashboardKoorprodiController extends State<DashboardKoorprodiView> implements MvcController {
  static late DashboardKoorprodiController instance;
  late DashboardKoorprodiView view;

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