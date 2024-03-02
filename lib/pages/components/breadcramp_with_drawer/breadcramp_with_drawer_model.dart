import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/desktop_appbar/desktop_appbar_widget.dart';
import '/pages/components/mobile_appbar_with_drawer/mobile_appbar_with_drawer_widget.dart';
import 'breadcramp_with_drawer_widget.dart' show BreadcrampWithDrawerWidget;
import 'package:flutter/material.dart';

class BreadcrampWithDrawerModel
    extends FlutterFlowModel<BreadcrampWithDrawerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MobileAppbarWithDrawer component.
  late MobileAppbarWithDrawerModel mobileAppbarWithDrawerModel;
  // Model for DesktopAppbar component.
  late DesktopAppbarModel desktopAppbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileAppbarWithDrawerModel =
        createModel(context, () => MobileAppbarWithDrawerModel());
    desktopAppbarModel = createModel(context, () => DesktopAppbarModel());
  }

  @override
  void dispose() {
    mobileAppbarWithDrawerModel.dispose();
    desktopAppbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
