import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/desktop_appbar/desktop_appbar_widget.dart';
import '/pages/components/mobile_appbar/mobile_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'breadcramp_model.dart';
export 'breadcramp_model.dart';

class BreadcrampWidget extends StatefulWidget {
  const BreadcrampWidget({super.key});

  @override
  State<BreadcrampWidget> createState() => _BreadcrampWidgetState();
}

class _BreadcrampWidgetState extends State<BreadcrampWidget> {
  late BreadcrampModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BreadcrampModel());

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
              model: _model.mobileAppbarModel,
              updateCallback: () => setState(() {}),
              child: const MobileAppbarWidget(),
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
