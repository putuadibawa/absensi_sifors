import 'package:flutter/material.dart';
import 'package:absensi_sifors/state_util.dart';
import '../view/dashboard_mersi_view.dart';

class DashboardMersiController extends State<DashboardMersiView> implements MvcController {
  static late DashboardMersiController instance;
  late DashboardMersiView view;

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