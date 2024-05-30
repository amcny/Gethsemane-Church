import '/flutter_flow/flutter_flow_util.dart';
import 'prayers_widget.dart' show PrayersWidget;
import 'package:flutter/material.dart';

class PrayersModel extends FlutterFlowModel<PrayersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
