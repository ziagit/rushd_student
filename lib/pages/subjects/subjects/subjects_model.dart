import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp_with_drawer/breadcramp_with_drawer_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/components/mobile_sidebar/mobile_sidebar_widget.dart';
import 'subjects_widget.dart' show SubjectsWidget;
import 'package:flutter/material.dart';

class SubjectsModel extends FlutterFlowModel<SubjectsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MobileSidebar component.
  late MobileSidebarModel mobileSidebarModel;
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for BreadcrampWithDrawer component.
  late BreadcrampWithDrawerModel breadcrampWithDrawerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileSidebarModel = createModel(context, () => MobileSidebarModel());
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampWithDrawerModel =
        createModel(context, () => BreadcrampWithDrawerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileSidebarModel.dispose();
    desktopSidebarModel.dispose();
    breadcrampWithDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
