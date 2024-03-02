import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/activities/activity_component/activity_component_widget.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'activities_model.dart';
export 'activities_model.dart';

class ActivitiesWidget extends StatefulWidget {
  const ActivitiesWidget({super.key});

  @override
  State<ActivitiesWidget> createState() => _ActivitiesWidgetState();
}

class _ActivitiesWidgetState extends State<ActivitiesWidget> {
  late ActivitiesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivitiesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                wrapWithModel(
                  model: _model.desktopSidebarModel,
                  updateCallback: () => setState(() {}),
                  child: const DesktopSidebarWidget(),
                ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.breadcrampModel,
                            updateCallback: () => setState(() {}),
                            child: const BreadcrampWidget(),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: SizedBox(
                                width: double.infinity,
                                height: 200.0,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: List.generate(
                                          random_data.randomInteger(0, 0),
                                          (index) =>
                                              random_data.randomInteger(0, 10)),
                                      yData: List.generate(
                                          random_data.randomInteger(0, 0),
                                          (index) =>
                                              random_data.randomInteger(0, 10)),
                                      settings: LineChartBarData(
                                        color: FlutterFlowTheme.of(context)
                                            .rushdPrimary,
                                        barWidth: 2.0,
                                        isCurved: true,
                                        preventCurveOverShooting: true,
                                        dotData: FlDotData(show: false),
                                        belowBarData: BarAreaData(
                                          show: true,
                                          color: FlutterFlowTheme.of(context)
                                              .rushdGreen4,
                                        ),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: const ChartStylingInfo(
                                    enableTooltip: true,
                                    backgroundColor: Colors.white,
                                    showBorder: false,
                                  ),
                                  axisBounds: const AxisBounds(),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Last 30 Days',
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: const Color(0xFF14181B),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Avg. Grade',
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: const Color(0xFF14181B),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 600.0,
                            ),
                            decoration: const BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.activityComponentModel,
                              updateCallback: () => setState(() {}),
                              child: const ActivityComponentWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
