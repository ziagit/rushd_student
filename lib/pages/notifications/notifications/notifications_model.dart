import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    breadcrampModel = createModel(context, () => BreadcrampModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    breadcrampModel.dispose();
    expandableController1.dispose();
    expandableController2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
