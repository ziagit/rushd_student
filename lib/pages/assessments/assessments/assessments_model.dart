import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import 'assessments_widget.dart' show AssessmentsWidget;
import 'package:flutter/material.dart';

class AssessmentsModel extends FlutterFlowModel<AssessmentsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

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
