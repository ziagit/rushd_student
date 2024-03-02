import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp_with_drawer/breadcramp_with_drawer_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/components/mobile_sidebar/mobile_sidebar_widget.dart';
import 'timetable_widget.dart' show TimetableWidget;
import 'package:flutter/material.dart';

class TimetableModel extends FlutterFlowModel<TimetableWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for BreadcrampWithDrawer component.
  late BreadcrampWithDrawerModel breadcrampWithDrawerModel;
  // Model for MobileSidebar component.
  late MobileSidebarModel mobileSidebarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampWithDrawerModel =
        createModel(context, () => BreadcrampWithDrawerModel());
    mobileSidebarModel = createModel(context, () => MobileSidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopSidebarModel.dispose();
    breadcrampWithDrawerModel.dispose();
    mobileSidebarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
