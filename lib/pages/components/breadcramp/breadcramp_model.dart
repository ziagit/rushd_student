import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/desktop_appbar/desktop_appbar_widget.dart';
import '/pages/components/mobile_appbar/mobile_appbar_widget.dart';
import 'breadcramp_widget.dart' show BreadcrampWidget;
import 'package:flutter/material.dart';

class BreadcrampModel extends FlutterFlowModel<BreadcrampWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MobileAppbar component.
  late MobileAppbarModel mobileAppbarModel;
  // Model for DesktopAppbar component.
  late DesktopAppbarModel desktopAppbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileAppbarModel = createModel(context, () => MobileAppbarModel());
    desktopAppbarModel = createModel(context, () => DesktopAppbarModel());
  }

  @override
  void dispose() {
    mobileAppbarModel.dispose();
    desktopAppbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
