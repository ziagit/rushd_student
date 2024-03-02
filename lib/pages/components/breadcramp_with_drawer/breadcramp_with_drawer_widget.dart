import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/desktop_appbar/desktop_appbar_widget.dart';
import '/pages/components/mobile_appbar_with_drawer/mobile_appbar_with_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'breadcramp_with_drawer_model.dart';
export 'breadcramp_with_drawer_model.dart';

class BreadcrampWithDrawerWidget extends StatefulWidget {
  const BreadcrampWithDrawerWidget({super.key});

  @override
  State<BreadcrampWithDrawerWidget> createState() =>
      _BreadcrampWithDrawerWidgetState();
}

class _BreadcrampWithDrawerWidgetState
    extends State<BreadcrampWithDrawerWidget> {
  late BreadcrampWithDrawerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BreadcrampWithDrawerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 80.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            wrapWithModel(
              model: _model.mobileAppbarWithDrawerModel,
              updateCallback: () => setState(() {}),
              child: const MobileAppbarWithDrawerWidget(),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            wrapWithModel(
              model: _model.desktopAppbarModel,
              updateCallback: () => setState(() {}),
              child: const DesktopAppbarWidget(),
            ),
        ],
      ),
    );
  }
}
