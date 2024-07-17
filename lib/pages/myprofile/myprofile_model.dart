import '/flutter_flow/flutter_flow_util.dart';
import 'myprofile_widget.dart' show MyprofileWidget;
import 'package:flutter/material.dart';

class MyprofileModel extends FlutterFlowModel<MyprofileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - ratingscalc] action in myprofile widget.
  double? avgrating;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
