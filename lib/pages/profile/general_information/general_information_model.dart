import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import 'general_information_widget.dart' show GeneralInformationWidget;
import 'package:flutter/material.dart';

class GeneralInformationModel
    extends FlutterFlowModel<GeneralInformationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    breadcrampModel = createModel(context, () => BreadcrampModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    breadcrampModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
