import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/breadcramp_with_drawer/breadcramp_with_drawer_widget.dart';
import '/pages/components/courses_component/courses_component_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/components/mobile_sidebar/mobile_sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'courses_model.dart';
export 'courses_model.dart';

class CoursesWidget extends StatefulWidget {
  const CoursesWidget({super.key});

  @override
  State<CoursesWidget> createState() => _CoursesWidgetState();
}

class _CoursesWidgetState extends State<CoursesWidget>
    with TickerProviderStateMixin {
  late CoursesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoursesModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.mobileSidebarModel,
            updateCallback: () => setState(() {}),
            child: const MobileSidebarWidget(),
          ),
        ),
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
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.breadcrampWithDrawerModel,
                            updateCallback: () => setState(() {}),
                            child: const BreadcrampWithDrawerWidget(),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: const Alignment(-1.0, 0),
                                  child: TabBar(
                                    isScrollable: true,
                                    labelColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                    unselectedLabelStyle: const TextStyle(),
                                    indicatorColor: FlutterFlowTheme.of(context)
                                        .rushdPrimary,
                                    padding: const EdgeInsets.all(4.0),
                                    tabs: const [
                                      Tab(
                                        text: 'All courses',
                                      ),
                                      Tab(
                                        text: 'Enrolled',
                                      ),
                                    ],
                                    controller: _model.tabBarController,
                                    onTap: (i) async {
                                      [() async {}, () async {}][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 12.0),
                                                  child: FlutterFlowChoiceChips(
                                                    options: const [
                                                      ChipData('For You'),
                                                      ChipData('Computer'),
                                                      ChipData('English'),
                                                      ChipData('Math'),
                                                      ChipData('Ai'),
                                                      ChipData('Echonomic')
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .choiceChipsValue =
                                                            val?.firstOrNull),
                                                    selectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .rushdPrimary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                      iconColor: Colors.white,
                                                      iconSize: 18.0,
                                                      elevation: 0.0,
                                                      borderWidth: 1.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    unselectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          const Color(0xFFE5E7EB),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: const Color(
                                                                    0xFF606A85),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                      iconColor:
                                                          const Color(0xFF606A85),
                                                      iconSize: 18.0,
                                                      elevation: 0.0,
                                                      borderColor:
                                                          const Color(0xFFF1F4F8),
                                                      borderWidth: 1.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    chipSpacing: 8.0,
                                                    rowSpacing: 12.0,
                                                    multiselect: false,
                                                    initialized: _model
                                                            .choiceChipsValue !=
                                                        null,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    controller: _model
                                                            .choiceChipsValueController ??=
                                                        FormFieldController<
                                                            List<String>>(
                                                      ['For You'],
                                                    ),
                                                    wrapped: true,
                                                  ),
                                                ),
                                              ]
                                                  .addToStart(
                                                      const SizedBox(width: 16.0))
                                                  .addToEnd(
                                                      const SizedBox(width: 16.0)),
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.coursesComponentModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const CoursesComponentWidget(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.coursesComponentModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const CoursesComponentWidget(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
