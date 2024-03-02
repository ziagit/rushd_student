import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mobile_appbar_model.dart';
export 'mobile_appbar_model.dart';

class MobileAppbarWidget extends StatefulWidget {
  const MobileAppbarWidget({super.key});

  @override
  State<MobileAppbarWidget> createState() => _MobileAppbarWidgetState();
}

class _MobileAppbarWidgetState extends State<MobileAppbarWidget> {
  late MobileAppbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileAppbarModel());

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
      height: 60.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.safePop();
              },
              child: Icon(
                Icons.keyboard_arrow_left_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
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
    );
  }
}
