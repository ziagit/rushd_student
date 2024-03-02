import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import 'school_student_profile_widget.dart' show SchoolStudentProfileWidget;
import 'package:flutter/material.dart';

class SchoolStudentProfileModel
    extends FlutterFlowModel<SchoolStudentProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;

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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
