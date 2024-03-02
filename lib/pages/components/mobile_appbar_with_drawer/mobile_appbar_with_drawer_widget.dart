import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/notifacation_bell/notifacation_bell_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mobile_appbar_with_drawer_model.dart';
export 'mobile_appbar_with_drawer_model.dart';

class MobileAppbarWithDrawerWidget extends StatefulWidget {
  const MobileAppbarWithDrawerWidget({super.key});

  @override
  State<MobileAppbarWithDrawerWidget> createState() =>
      _MobileAppbarWithDrawerWidgetState();
}

class _MobileAppbarWithDrawerWidgetState
    extends State<MobileAppbarWithDrawerWidget> {
  late MobileAppbarWithDrawerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileAppbarWithDrawerModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 80.0,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width * 1.0,
      ),
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Color(0xFF15161E),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              Text(
                'Page title',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'vszir',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
          Flexible(
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Notifications');
              },
              child: wrapWithModel(
                model: _model.notifacationBellModel,
                updateCallback: () => setState(() {}),
                child: const NotifacationBellWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
