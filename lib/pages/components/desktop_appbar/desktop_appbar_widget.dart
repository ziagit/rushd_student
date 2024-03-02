import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/notifacation_bell/notifacation_bell_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'desktop_appbar_model.dart';
export 'desktop_appbar_model.dart';

class DesktopAppbarWidget extends StatefulWidget {
  const DesktopAppbarWidget({super.key});

  @override
  State<DesktopAppbarWidget> createState() => _DesktopAppbarWidgetState();
}

class _DesktopAppbarWidgetState extends State<DesktopAppbarWidget> {
  late DesktopAppbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DesktopAppbarModel());

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
      height: 60.0,
      decoration: const BoxDecoration(),
      child: Visibility(
        visible: responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
                Container(
                  height: 32.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).rushdGreen5,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 2.0, 12.0, 4.0),
                    child: Text(
                      'Page title',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).rushdPrimary,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
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
          ],
        ),
      ),
    );
  }
}
