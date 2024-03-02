import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import 'attendances_widget.dart' show AttendancesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AttendancesModel extends FlutterFlowModel<AttendancesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampModel = createModel(context, () => BreadcrampModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopSidebarModel.dispose();
    breadcrampModel.dispose();
    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
    expandableController4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
