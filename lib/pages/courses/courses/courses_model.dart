import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/breadcramp_with_drawer/breadcramp_with_drawer_widget.dart';
import '/pages/components/courses_component/courses_component_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/components/mobile_sidebar/mobile_sidebar_widget.dart';
import 'courses_widget.dart' show CoursesWidget;
import 'package:flutter/material.dart';

class CoursesModel extends FlutterFlowModel<CoursesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for BreadcrampWithDrawer component.
  late BreadcrampWithDrawerModel breadcrampWithDrawerModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for CoursesComponent component.
  late CoursesComponentModel coursesComponentModel1;
  // Model for CoursesComponent component.
  late CoursesComponentModel coursesComponentModel2;
  // Model for MobileSidebar component.
  late MobileSidebarModel mobileSidebarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampWithDrawerModel =
        createModel(context, () => BreadcrampWithDrawerModel());
    coursesComponentModel1 =
        createModel(context, () => CoursesComponentModel());
    coursesComponentModel2 =
        createModel(context, () => CoursesComponentModel());
    mobileSidebarModel = createModel(context, () => MobileSidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopSidebarModel.dispose();
    breadcrampWithDrawerModel.dispose();
    tabBarController?.dispose();
    coursesComponentModel1.dispose();
    coursesComponentModel2.dispose();
    mobileSidebarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
