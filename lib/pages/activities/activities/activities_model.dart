import '/flutter_flow/flutter_flow_util.dart';
import '/pages/activities/activity_component/activity_component_widget.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import 'activities_widget.dart' show ActivitiesWidget;
import 'package:flutter/material.dart';

class ActivitiesModel extends FlutterFlowModel<ActivitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;
  // Model for ActivityComponent component.
  late ActivityComponentModel activityComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampModel = createModel(context, () => BreadcrampModel());
    activityComponentModel =
        createModel(context, () => ActivityComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopSidebarModel.dispose();
    breadcrampModel.dispose();
    activityComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
