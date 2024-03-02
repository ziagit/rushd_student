import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import 'subject_widget.dart' show SubjectWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SubjectModel extends FlutterFlowModel<SubjectWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    breadcrampModel = createModel(context, () => BreadcrampModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    breadcrampModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
