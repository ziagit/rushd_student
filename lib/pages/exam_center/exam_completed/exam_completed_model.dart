import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import 'exam_completed_widget.dart' show ExamCompletedWidget;
import 'package:flutter/material.dart';

class ExamCompletedModel extends FlutterFlowModel<ExamCompletedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    breadcrampModel = createModel(context, () => BreadcrampModel());
  }

  @override
  void dispose() {
    breadcrampModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
