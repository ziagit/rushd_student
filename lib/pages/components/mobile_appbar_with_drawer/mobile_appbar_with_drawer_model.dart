import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/notifacation_bell/notifacation_bell_widget.dart';
import 'mobile_appbar_with_drawer_widget.dart'
    show MobileAppbarWithDrawerWidget;
import 'package:flutter/material.dart';

class MobileAppbarWithDrawerModel
    extends FlutterFlowModel<MobileAppbarWithDrawerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NotifacationBell component.
  late NotifacationBellModel notifacationBellModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    notifacationBellModel = createModel(context, () => NotifacationBellModel());
  }

  @override
  void dispose() {
    notifacationBellModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
