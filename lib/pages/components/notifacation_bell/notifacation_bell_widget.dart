import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifacation_bell_model.dart';
export 'notifacation_bell_model.dart';

class NotifacationBellWidget extends StatefulWidget {
  const NotifacationBellWidget({super.key});

  @override
  State<NotifacationBellWidget> createState() => _NotifacationBellWidgetState();
}

class _NotifacationBellWidgetState extends State<NotifacationBellWidget> {
  late NotifacationBellModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotifacationBellModel());

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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
      child: badges.Badge(
        badgeContent: Text(
          '1',
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'vszir',
                color: Colors.white,
                fontSize: 8.0,
                useGoogleFonts: false,
              ),
        ),
        showBadge: true,
        shape: badges.BadgeShape.circle,
        badgeColor: FlutterFlowTheme.of(context).error,
        elevation: 4.0,
        padding: const EdgeInsets.all(6.0),
        position: badges.BadgePosition.topEnd(),
        animationType: badges.BadgeAnimationType.scale,
        toAnimate: true,
        child: Icon(
          Icons.notifications_rounded,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 24.0,
        ),
      ),
    );
  }
}
